package com.icia.sec.services.product;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.icia.sec.beans.CategoriesBean;
import com.icia.sec.beans.CategoriesDetailBean;
import com.icia.sec.beans.CouponBean;
import com.icia.sec.beans.ImgBean;
import com.icia.sec.beans.PagingBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.utils.SimpleTransactionManager;
import com.icia.sec.utils.TransactionAssistant;

import lombok.extern.slf4j.Slf4j;

/* Authentication + Memeber Join */
@Service
@Slf4j
public class Product extends TransactionAssistant {
	@Autowired
	private SimpleTransactionManager tranManager;
	@Autowired
	public HttpSession session;

	public Product() {
	}

	public void backController(String serviceCode, Model model) {
		switch (serviceCode) {
		case "PA1":
			this.addProductImg(model);
			break;
		case "PA2":
			this.insProduct(model);
			break;
		case "CD":
			this.getCateDetail(model);
			break;
		case "AE":
			this.addEnd(model);
			break;
		case "AC":
			this.addCart(model);
			break;
		case "GN":
			this.getProductName(model);
			break;
		case "GPL":
			this.getProductList(model);
			break;
		}
	}

	public void backController(String serviceCode, ModelAndView mav) {
		switch (serviceCode) {
		case "GC":
			this.getCate(mav);
			break;
		case "AA":
			this.afterAdd(mav);
			break;
		case "P":
			this.showProduct(mav);
			break;
		case "GCP":
			this.getChangeProduct(mav);
			break;
		case "SP":
			this.searchProduct(mav);
			break;
		case "GPC":
			this.getPageCate(mav);
			break;
		case "SPN":
			this.showProductNone(mav);
			break;
		case "SPU":
			this.showProductUser(mav);
			break;
		case "GPD":
			this.getProductDetailPage(mav);
			break;
		case "BOP":
			this.buyOrderPage(mav);
			break;
		}
	}
	
	private void buyOrderPage(ModelAndView mav) {
		String page = "orderPage";
		List<ProductsBean> proList = new ArrayList<ProductsBean>();
		String titleName = null;
		UserBean user = (UserBean) session.getAttribute("userInfo");
		String first = user.getUserPhone().substring(0, 3);
		String sec = user.getUserPhone().substring(3, 7);
		String trd = user.getUserPhone().substring(7);
		int atIndex = user.getUserEmail().indexOf('@');
		String firstMail = user.getUserEmail().substring(0, atIndex);
		String secMail = user.getUserEmail().substring(atIndex + 1);
		ProductsBean product = (ProductsBean) mav.getModel().get("product");
		ImgBean img = new ImgBean();
		ArrayList<ImgBean> imgList = new ArrayList<ImgBean>();
		int allPrice = 0;
		int plusDelivery = 3000;
		Random random = new Random();
        int randomNumber = random.nextInt(10000000); // 0 ~ 9999999 사이의 난수
        boolean isRan = true;
        while (randomNumber < 1000000) {
            randomNumber = randomNumber * 10 + random.nextInt(10);
        }
        int a = randomNumber;
		product.setProductsMargin(user.getUserCode());
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			List<CouponBean> cuList = this.sqlSession.selectList("getCouponList", user);
			mav.addObject("couponList", cuList);
			ArrayList<CouponBean> cu = new ArrayList<CouponBean>();
			for(int i=0; i<cuList.size(); i++) {
				cu.add(cuList.get(i));
			}
			user.setCoupon(cu);
			product.setProductsPrice(this.sqlSession.selectOne("getProductPrice", product));
			img.setImg(this.sqlSession.selectOne("getImgTitle", product));
			imgList.add(img);
			product.setImgList(imgList);
			allPrice = Integer.parseInt(product.getProductsPrice()) * Integer.parseInt(product.getCartList().get(0).getCartCount());
			plusDelivery += allPrice;
			product.setProductsPrice(Integer.toString(allPrice));
			titleName = this.sqlSession.selectOne("getTitleName", product);
			System.out.println(product);
			System.out.println(allPrice);
			System.out.println(plusDelivery);
			System.out.println(a);
			product.setProductsCount(Integer.parseInt(product.getCartList().get(0).getCartCount()));
			proList.add(product);
			System.out.println("확인 : "+product);
			System.out.println("확인 : "+this.sqlSession.selectOne("cartDupProduct", product));
			if(this.convertToBoolean(this.sqlSession.selectOne("cartDupProduct", product))) {
				int num = this.sqlSession.selectOne("getBeforeCount", product);
				product.setProductsCount(Integer.parseInt(product.getCartList().get(0).getCartCount())+num);
				if(this.convertToBoolean(this.sqlSession.update("upCartProduct", product))) {
					this.tranManager.commit();
				}else {
					this.tranManager.rollback();
				}
			}else {
				if(this.convertToBoolean(this.sqlSession.insert("addNewCart", product))) {
					this.tranManager.commit();
				}else {
					this.tranManager.rollback();
				}
			}
		} catch (Exception e) {
			 e.printStackTrace();
		} finally {
			this.tranManager.tranEnd();
			mav.addObject("first", first);
			mav.addObject("firstMail", firstMail);
			mav.addObject("secMail", secMail);
			mav.addObject("sec", sec);
			mav.addObject("trd", trd);
			mav.addObject("allPrice", allPrice);
			mav.addObject("plusDelivery", plusDelivery);
			mav.addObject("a", a);
			mav.addObject("titleName", titleName);
			mav.addObject("outCount", 0);
			mav.addObject("proList", proList);
			mav.setViewName(page);
		}
	}
	
	private void getProductDetailPage(ModelAndView mav) {
		String type = (String) mav.getModel().get("type");
		String page = new String();
		List<ProductsBean> proList = null;
		List<CategoriesBean> List = null;
		List<CategoriesDetailBean> detailList = new ArrayList<CategoriesDetailBean>();
		List<Integer> paging = new ArrayList<Integer>();
		String status = new String();
		CategoriesBean cate = new CategoriesBean();
		CategoriesDetailBean cd = new CategoriesDetailBean();
		ArrayList<PagingBean> pagingList = new ArrayList<PagingBean>();
		PagingBean pageNum = (PagingBean) mav.getModel().get("pageNum");
		int proCount = 0;
		int pageCount = 0;
		int startNum = 0;
		int endNum = 0;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getPageCate");
			if(type.equals("cate")) {
				cate = (CategoriesBean) mav.getModel().get("cate");
				proCount = this.sqlSession.selectOne("getProCateCount", cate);
				if(proCount % 12 != 0) {
					pageCount = (proCount/12)+1;
				}else {
					pageCount = proCount/12;
				}
				for(int i=1; i<=pageCount; i++) {
					paging.add(i);
				}
				endNum = pageNum.getPageNum() * 12;
				startNum = endNum - 11;
				pageNum.setStartNum(startNum);
				pageNum.setEndNum(endNum);
				pagingList.add(pageNum);
				cate = this.sqlSession.selectOne("getCategoriesName", cate);
				cate.setPaging(pagingList);
				proList = this.sqlSession.selectList("getProCateAll", cate);
				status = "ALL";
			}else {
				cd = (CategoriesDetailBean) mav.getModel().get("cd");
				proCount = this.sqlSession.selectOne("getProCateDetailCount", cd);
				if(proCount % 12 != 0) {
					pageCount = (proCount/12)+1;
				}else {
					pageCount = proCount/12;
				}
				for(int i=1; i<=pageCount; i++) {
					paging.add(i);
				}
				endNum = pageNum.getPageNum() * 12;
				startNum = endNum - 11;
				pageNum.setStartNum(startNum);
				pageNum.setEndNum(endNum);
				pagingList.add(pageNum);
				cd = this.sqlSession.selectOne("getCateDetailName", cd);
				cate.setCateCode(cd.getMessage());
				cate = this.sqlSession.selectOne("getCategoriesName", cate);
				cd.setPaging(pagingList);
				proList = this.sqlSession.selectList("getProCateDetail", cd);
				status = null;
			}
			detailList = this.sqlSession.selectList("getDetailList", cate);
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			mav.addObject("detailList", detailList);
			mav.addObject("status", status);
			mav.addObject("cate", List);
			mav.addObject("catePro", cate);
			mav.addObject("cdPro", cd);
			mav.addObject("proList", proList);
			mav.setViewName("cateDetailPage");
			mav.addObject("paging", paging);
			mav.addObject("pageNum", pageNum.getPageNum());
		}
	}
	
	private void showProductUser(ModelAndView mav) {
		String page = null;
		String titleImg = null;
		String contentImg = null;
		String acc = null;
		UserBean user = (UserBean) session.getAttribute("userInfo");
		String wish = null;
		List<CategoriesBean> List = null;
		ProductsBean pro = (ProductsBean) mav.getModel().get("product");
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			pro.setProductsDate(user.getUserCode());
			if(this.convertToBoolean(this.sqlSession.selectOne("isWishCount", pro))) {
				wish = "y";
			}
			pro = this.sqlSession.selectOne("getProductInfo", pro);
			titleImg = this.sqlSession.selectOne("getTitleImg", pro);
			contentImg = this.sqlSession.selectOne("getContentImg", pro);
			List = this.sqlSession.selectList("getPageCate");
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			acc = Integer.toString((int) (Integer.parseInt(pro.getProductsPrice()) * 0.01));
			mav.addObject("cate", List);
			mav.addObject("acc", acc);
			mav.addObject("pro", pro);
			mav.addObject("title", titleImg);
			mav.addObject("content", contentImg);
			mav.addObject("wish", wish);
			mav.setViewName("showProduct");
		}
	}
	
	private void showProductNone(ModelAndView mav) {
		String titleImg = null;
		String contentImg = null;
		String acc = null;
		UserBean user = new UserBean();
		List<CategoriesBean> List = null;
		ProductsBean pro = (ProductsBean) mav.getModel().get("product");
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			pro = this.sqlSession.selectOne("getProductInfo", pro);
			titleImg = this.sqlSession.selectOne("getTitleImg", pro);
			contentImg = this.sqlSession.selectOne("getContentImg", pro);
			List = this.sqlSession.selectList("getPageCate");
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			acc = Integer.toString((int) (Integer.parseInt(pro.getProductsPrice()) * 0.01));
			mav.addObject("cate", List);
			mav.addObject("acc", acc);
			mav.addObject("pro", pro);
			mav.addObject("title", titleImg);
			mav.addObject("content", contentImg);
			mav.setViewName("productNone");
		}
	}
	
	private void getPageCate(ModelAndView mav) {
		List<CategoriesBean> List = null;
		List<ProductsBean> bestPro = null;
		List<ProductsBean> newPro = null;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getPageCate");
			bestPro = this.sqlSession.selectList("getBestProduct");
			newPro = this.sqlSession.selectList("getNewProduct");
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("newItem", newPro);
			mav.addObject("bestItem", bestPro);
			mav.addObject("cate", List);
		}
	}
	
	private void searchProduct(ModelAndView mav) {
		ProductsBean pro = (ProductsBean) mav.getModel().get("product");
		String name = pro.getProductsName();
		List<CategoriesBean> List = null;
		List<ProductsBean> searchProductList = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getPageCate");
			searchProductList = this.sqlSession.selectList("search", pro);
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("cate", List);
			mav.addObject("name", name);
			mav.addObject("searchProductList", searchProductList);
			mav.setViewName("searchPage");
		}
	}
	
	private void getProductList(Model model) {
		ProductsBean pro = (ProductsBean) model.getAttribute("product");
		List<ProductsBean> List = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getProductList", pro);
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			model.addAttribute("product", List);
		}
	}
	
	private void getChangeProduct(ModelAndView mav) {
		List<ProductsBean> List = null;
		List<CategoriesBean> cateList = null;
		String type = "T";
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			cateList = this.sqlSession.selectList("cateList");
			List = this.sqlSession.selectList("getChangeProductList", type);
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			mav.addObject("cate", cateList);
			mav.addObject("productList", List);
			mav.setViewName("changeProduct");
		}
	}
	
	private void getProductName(Model model) {
		CategoriesDetailBean cd = (CategoriesDetailBean) model.getAttribute("cateDetail");
		String message = null;
		List<ProductsBean> List = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getProNameList", cd);
			for(int i=0; i<List.size(); i++) {
			}
		} catch (Exception e) {
			System.out.println(e);
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
		}finally {
			this.tranManager.tranEnd();
			model.addAttribute("product", List);
		}
	}
	
	private void addCart(Model model) {
		ProductsBean pro = (ProductsBean) model.getAttribute("product");
		UserBean user = (UserBean) session.getAttribute("userInfo");
		String message = null;
		int before = 0;
		int newCount = 0;
		pro.setProductsMargin(user.getUserCode());
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
/*없을 경우*/if(!this.convertToBoolean(this.sqlSession.selectOne("selUserCart", user))) {// 해당 유저의 상춤이 담겨있는 장바구니가 있나 확인
				if(this.convertToBoolean(this.sqlSession.insert("addNewCart", pro))){ // 없을 경우 새로운 장바구니를 만들어서 처음부터 인서트
					this.tranManager.commit();
					message = "장바구니에 담았습니다!";
					System.out.println("아예 없음");
				}else {
					message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
				}
/*있는 경우*/}else {
				if(this.convertToBoolean(this.sqlSession.selectOne("cartDupProduct", pro))) {/*카트에 같은 상품이 있는지 확인*/
///*기존 갯구 구함*/before = this.sqlSession.selectOne("getBeforeCount", pro);
//				  newCount = pro.getProductsCount();
//				  pro.setProductsCount(before+newCount);
//				  if(this.convertToBoolean(this.sqlSession.update("upCartProduct", pro))) {
//					  this.tranManager.commit();
//					  message = "장바구니에 담았습니다!";
//					  System.out.println(this.convertToBoolean(this.sqlSession.update("upCartProduct", pro))+"장바구니에 같은 상품이 있음");
//				  }else {
//					  this.tranManager.rollback();
//					  message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
//				  }
					message = "장바구니에 같은 상품이 존재합니다.";
				}else { // 장바구니에 같은 상품이 없고 다른 상품이 있을 경우
					if(this.convertToBoolean(this.sqlSession.insert("addNewCart", pro))){ // 없을 경우 새로운 장바구니를 만들어서 처음부터 인서트
						this.tranManager.commit();
						message = "장바구니에 담았습니다!";
						System.out.println("다른 상품이 있음");
					}else {
						this.tranManager.rollback();
						message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
					}
				}
			}
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("롤백");
			pro.setMessage("네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요");
		}finally {
			this.tranManager.tranEnd();
			System.out.println(pro.getProductsCode());
			pro.setMessage(message);
		}
	}
	
	private void showProduct(ModelAndView mav) {
		String page = null;
		String titleImg = null;
		String contentImg = null;
		UserBean user = new UserBean();
		ProductsBean pro = (ProductsBean) mav.getModel().get("product");
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			pro = this.sqlSession.selectOne("getProductInfo", pro);
			pro.setMessage("T");
			titleImg = this.sqlSession.selectOne("getTitleImg", pro);
			pro.setMessage("C");
			contentImg = this.sqlSession.selectOne("getContentImg", pro);
			if(session.getAttribute("userInfo") != null) {
				user = (UserBean) session.getAttribute("userInfo");
				if(user.getUserGrade().equals("1")) {
					page = "userProduct";
					mav.addObject("userinfo", user);
				}else {
					page = "managerProduct";
					mav.addObject("userInfo", user);
				}
			}else {
				page = "product";
			}
//				if(session.getAttribute("userInfo") != null) {
//					page = "userProduct";
//					user = (UserBean) session.getAttribute("userInfo");
//					mav.addObject("userInfo", user);
//				}else {
//					page = "product";
//				}
		} catch (Exception e) {
			
		}finally {
			mav.addObject("product", pro);
			mav.addObject("title", titleImg);
			mav.addObject("content", contentImg);
			mav.setViewName(page);
		}
	}
	
	private void afterAdd(ModelAndView mav) {
		String page = "afterLoginManager";
		this.tranManager = this.getTransaction(true);
		List<ProductsBean> List = null;
		String type = "T";
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getIndexProduct", type);
			for(int i=0; i<List.size(); i++) {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("products", List);
			mav.setViewName(page);
			session.removeAttribute("proInfo");
			session.removeAttribute("message");
		}
	}
	
	private void addEnd(Model model) {
		ProductsBean product = (ProductsBean) model.getAttribute("product");
		product.setMessage((String) session.getAttribute("message"));
		model.addAttribute("product", product);
	}
	
	private void getCateDetail(Model model) {
		CategoriesBean cate = (CategoriesBean) model.getAttribute("cate");
		List<CategoriesDetailBean> cateList = null;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			cateList = this.sqlSession.selectList("getCateDetail", cate);
			for (int i = 0; i < cateList.size(); i++) {
				cateList.get(i);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			this.tranManager.tranEnd();
			model.addAttribute("cateList", cateList);
		}
	}

	private void insProduct(Model model) {
		String message = null;
		ProductsBean product = new ProductsBean();
		CategoriesBean cate = (CategoriesBean) model.getAttribute("cate");
		product.setProductsName(cate.getCdList().get(0).getProductList().get(0).getProductsName());
		cate.getCdList().get(0).getProductList().get(0).setProductsCount(this.getProCount(product));
		cate.getCdList().get(0).getProductList().get(0).setProductsSellCount(this.getSellCount(product));
		cate.getCdList().get(0).getProductList().get(0).setProductsMargin(
				Integer.toString(Integer.parseInt(cate.getCdList().get(0).getProductList().get(0).getProductsPrice())
						- Integer.parseInt(cate.getCdList().get(0).getProductList().get(0).getProductsOrigin())));
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			if (this.convertToBoolean(this.sqlSession.selectOne("dupProduct", cate))) {
				message = "이미 같은 이름으로 등록 되어 있는 상품이 존재합니다. \n" + "상품 재고 수정은 [상품관리] - [추가 재고 입고] 에서 가능합니다.";
			} else {
				if (this.convertToBoolean(this.sqlSession.insert("addProduct", cate))) {
					this.tranManager.commit();
					message = null;
				} else {
					this.tranManager.rollback();
					message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
		} finally {
			this.tranManager.tranEnd();
			session.setAttribute("proInfo", cate);
			cate.setMessage(message);
			model.addAttribute("cate", cate);
		}
	}
	
	private int getSellCount(ProductsBean pro) {
		int sellCount = 0;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if(!convertToBoolean(this.sqlSession.selectOne("getSellCount",pro))) {
				sellCount = 0;
			}else {
				sellCount = this.sqlSession.selectOne("selSellCount", pro);
			}
		} catch (Exception e) {
		}finally {
			this.tranManager.tranEnd();
		}
		return sellCount;
	}

	private int getProCount(ProductsBean pro) {
		int count = 0;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if(!convertToBoolean(this.sqlSession.selectOne("getProCount",pro))) {
				count = 0;
			}else {
				count = this.sqlSession.selectOne("selProCount", pro);
			}
		} catch (Exception e) {
		}finally {
			this.tranManager.tranEnd();
		}
		return count;
	}

	/* 상품 사진 ins */
	private void addProductImg(Model model) {
		String message = null;
		List<String> img = (List<String>) model.getAttribute("file");
		CategoriesBean cate = (CategoriesBean) session.getAttribute("proInfo");
		ArrayList<ProductsBean> productList = cate.getCdList().get(0).getProductList();
		ProductsBean product = new ProductsBean();
		product.setImgList(productList.get(0).getImgList());
		product.setProductsName(productList.get(0).getProductsName());
		ImgBean bean = (ImgBean) model.getAttribute("imgType");
		ArrayList<ImgBean> imgList = new ArrayList<ImgBean>();
		imgList.add(bean);
		product.setImgList(imgList);
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			product.setProductsCode(this.sqlSession.selectOne("getPrCode", cate));
			for (int i = 0; i < img.size(); i++) {
				product.getImgList().get(0).setImg(img.get(i));
				this.sqlSession.insert("insProductImg", product);
			}
			message = "상품이 등록 되었습니다.";
			this.tranManager.commit();
		} catch (Exception e) {
			e.printStackTrace();
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
		} finally {
			session.setAttribute("message", message);
			this.tranManager.tranEnd();
		}
	}
	
	private void getCate(ModelAndView mav) {
		String page = "addProduct";
		List<CategoriesBean> cate = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			cate = this.sqlSession.selectList("cateList");
			for (int i = 0; i < cate.size(); i++) {
				cate.get(i);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("cate", cate);
			mav.setViewName(page);
		}
	}
	
	/* boolean 변환 */
	protected boolean convertToBoolean(int value) {
		return value > 0 ? true : false;
	}

}
