package com.icia.sec.services.order;

import java.lang.reflect.Array;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

import javax.print.PrintException;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.reactive.TransactionSynchronizationManager;
import org.springframework.transaction.support.TransactionSynchronizationUtils;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.icia.sec.beans.CartBean;
import com.icia.sec.beans.CategoriesBean;
import com.icia.sec.beans.CouponBean;
import com.icia.sec.beans.ImgBean;
import com.icia.sec.beans.OrderBean;
import com.icia.sec.beans.PagingBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.services.product.Product;
import com.icia.sec.utils.SimpleTransactionManager;
import com.icia.sec.utils.TransactionAssistant;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Order extends TransactionAssistant {
	@Autowired
	private SimpleTransactionManager tranManager;
	@Autowired
	public HttpSession session;
	
	public Order() {}
	
	public void backController(String serviceCode, Model model) {
		switch (serviceCode) {
		case "OP":
			this.orderProduct(model);
			break;
		}
	}
	
	public void backController(String serviceCode, ModelAndView mav) {
		switch (serviceCode) {
		case "OAP":
			this.orderAllProduct(mav);
			break;
		case "OVP":
			this.orderViewPage(mav);
			break;
		}
	}
	
	private void orderAllProduct(ModelAndView mav) {
		UserBean userInfo = (UserBean) session.getAttribute("userInfo");
		UserBean user = new UserBean();
		user = userInfo;
		if(user != null) {
			String first = user.getUserPhone().substring(0, 3);
			String sec = user.getUserPhone().substring(3, 7);
			String trd = user.getUserPhone().substring(7);
			int atIndex = user.getUserEmail().indexOf('@');
			String firstMail = user.getUserEmail().substring(0, atIndex);
			String secMail = user.getUserEmail().substring(atIndex + 1);
			String message = null;
			ProductsBean pro = null;
			String proCode = null;
			CartBean cart = null;
			ImgBean img = null;
			int xProduct = 0;
			boolean isRan = true;
			List<ProductsBean> proList = new ArrayList<>();
			int allPrice = 0;
			int plusDelivery = 3000;
			int outCount = 0;
			int count = 0;
			Random random = new Random();
			// 0부터 9999999 사이의 난수 생성
			int randomNumber = random.nextInt(10000000); // 0 ~ 9999999 사이의 난수
			// 만약 7자리가 아니라면 7자리가 될 때까지 난수를 생성하여 더합니다.
			while (randomNumber < 1000000) {
				randomNumber = randomNumber * 10 + random.nextInt(10);
			}
			// 변수에 할당
			int a = randomNumber;
			// 결과 출력
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
				if(mav.getModel().get("is").equals("all")) {
					proList = this.sqlSession.selectList("getOrderAllCart", user);
				}else {
					pro = (ProductsBean) mav.getModel().get("proSessionCode");
					for(int i=0; i<pro.getSessionCode().size(); i++) {
						ProductsBean product = new ProductsBean(); // 새로운 ProductsBean 생성
						product.setProductsCode(pro.getSessionCode().get(i)); // ProductsBean에 sessionCode 할당
						proList.add(product); // proList에 추가
					}
				}
				if(!convertToBoolean(this.sqlSession.selectOne("isOrCode", a))) {
				}else {
					while (isRan) {
						Random r = new Random();
						int ranNum = r.nextInt(10000000);
						while (ranNum < 1000000) {
							ranNum = ranNum * 10 + r.nextInt(10);
						}
						a = ranNum;
						if(!convertToBoolean(this.sqlSession.selectOne("isOrCode", a))){
							isRan = false;
						}else {
							isRan = true;
						}
					}
					System.out.println("두번쨰 : "+a);
				}
				outCount = proList.size() - 1;
				for(int i=0; i<proList.size(); i++) {
					pro = this.sqlSession.selectOne("getOrderProductInfo", proList.get(i));
					pro.setMessage(user.getUserCode());
					ArrayList<CartBean>cartList = new ArrayList<CartBean>();
					ArrayList<ImgBean>imgList = new ArrayList<ImgBean>();
					img = this.sqlSession.selectOne("getOrderImg", pro);
					cart = this.sqlSession.selectOne("selCartCount", pro);
					cartList.add(cart);
					imgList.add(img);
					pro.setImgList(imgList);
					pro.setCartList(cartList);
					proList.set(i, pro);
					xProduct = Integer.parseInt(proList.get(i).getProductsPrice()) * Integer.parseInt(proList.get(i).getCartList().get(0).getCartCount());
					proList.get(i).setProductsPrice(Integer.toString(xProduct));
					allPrice += Integer.parseInt(proList.get(i).getProductsPrice());
				}
				plusDelivery += allPrice;
				count = proList.size();
			} catch (Exception e) {
				System.out.println(e);
			}finally {
				this.tranManager.tranEnd();
				System.out.println(userInfo);
				mav.addObject("first", first);
				mav.addObject("firstMail", firstMail);
				mav.addObject("secMail", secMail);
				mav.addObject("sec", sec);
				mav.addObject("trd", trd);
				mav.addObject("proList", proList);
				mav.addObject("a", a);
				mav.addObject("titleName", proList.get(0).getProductsName());
				mav.addObject("count", count);
				mav.addObject("outCount", outCount);
				mav.addObject("plusDelivery", plusDelivery);
				mav.addObject("allPrice", allPrice);
				mav.setViewName("orderPage");
			}
		}else {
			mav.setViewName("login");
		}
	}
	
	private void orderProduct(Model model) {
		UserBean user = (UserBean) model.getAttribute("user");
		ArrayList<ProductsBean> proArray = new ArrayList<ProductsBean>();
		String message = "주문이 완료되었습니다.";
		String productCode = null;
		int sellCount = 0;
		int count = user.getOrder().get(0).getProduct().size();
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			System.out.println("확인 : "+user);
			if(user.getOrder().get(0).getOrderCode() == null) {
				String orderCode = "won_"+Long.toString(this.makeRandom());
				user.getOrder().get(0).setOrderCode(orderCode);
			}
			if(this.convertToBoolean(this.sqlSession.insert("insOrderCode", user))) {
				System.out.println("yes");
			}else {
				message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
				this.tranManager.rollback();
			}
			if(user.getOrder().get(0).getOrderComent() == null) {								//요청사항이 없고
				if(user.getOrder().get(0).getProduct().size() > 1) {
					for(int idx=0; idx<count; idx++) {
						user.getOrder().get(0).getProduct().set(0, user.getOrder().get(0).getProduct().get(idx));
							if(this.convertToBoolean(this.sqlSession.insert("insOrder", user))) {
								if(this.convertToBoolean(this.sqlSession.update("updateOrderStatus", user))) {
									if(this.convertToBoolean(this.sqlSession.delete("delOderAfterCart", user))) {
										sellCount = this.sqlSession.selectOne("getSellCountForOrder", user);
										user.getOrder().get(0).getProduct().get(0).setProductsSellCount(sellCount + user.getOrder().get(0).getProduct().get(0).getProductsCount());
										if(this.convertToBoolean(this.sqlSession.insert("upSellCountAfterOrder", user))) {
											this.tranManager.commit();
										}else {
											message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
											this.tranManager.rollback();
										}
									}else {
										message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
										this.tranManager.rollback();
									}
								}else {
									message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
									this.tranManager.rollback();
								}
							}else {
								message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
								this.tranManager.rollback();
							}
					}
					if(message.equals("주문이 완료되었습니다.")) {
						if(this.convertToBoolean(this.sqlSession.insert("insOrderPrice", user))) {
							this.tranManager.commit();
						}else {
							message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
							this.tranManager.rollback();
						}
					}
				}else {
					if(this.convertToBoolean(this.sqlSession.insert("insOrder", user))) {		//요청사항 없고 상품은 하나
						if(this.convertToBoolean(this.sqlSession.update("updateOrderStatus", user))) {
							if(this.convertToBoolean(this.sqlSession.insert("insOrderPrice", user))) {
								if(this.convertToBoolean(this.sqlSession.delete("delOderAfterCart", user))) {
									sellCount = this.sqlSession.selectOne("getSellCountForOrder", user);
									user.getOrder().get(0).getProduct().get(0).setProductsSellCount(sellCount + user.getOrder().get(0).getProduct().get(0).getProductsCount());
									System.out.println("판매 수량을 위한 : "+user);
									if(this.convertToBoolean(this.sqlSession.insert("upSellCountAfterOrder", user))) {
										this.tranManager.commit();
									}else {
										message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
										this.tranManager.rollback();
									}
								}else {
									message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
									this.tranManager.rollback();
								}
							}else {
								message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
								this.tranManager.rollback();
							}
						}else {
							message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
							this.tranManager.rollback();
						}
					}else {
						message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
						this.tranManager.rollback();
					}
				}
			}else {																				//요청사항 있고
				if(user.getOrder().get(0).getProduct().size() > 1) {		//상품 여러개
					for(int idx=0; idx<count; idx++) {
						user.getOrder().get(0).getProduct().set(0, user.getOrder().get(0).getProduct().get(idx));
						if(this.convertToBoolean(this.sqlSession.insert("insOrderWithComent", user))) {
							if(this.convertToBoolean(this.sqlSession.update("updateOrderStatus", user))) {
									if(this.convertToBoolean(this.sqlSession.delete("delOderAfterCart", user))) {
										sellCount = this.sqlSession.selectOne("getSellCountForOrder", user);
										user.getOrder().get(0).getProduct().get(0).setProductsSellCount(sellCount + user.getOrder().get(0).getProduct().get(0).getProductsCount());
										System.out.println("판매 수량을 위한 : "+user);
										if(this.convertToBoolean(this.sqlSession.insert("upSellCountAfterOrder", user))) {
											this.tranManager.commit();
										}else {
											message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
											this.tranManager.rollback();
										}
									}else {
										message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
										this.tranManager.rollback();
									}
								}else {
									message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
									this.tranManager.rollback();
								}
							}else {
								message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
								this.tranManager.rollback();
							}
					}
					if(message.equals("주문이 완료되었습니다.")) {
						if(this.convertToBoolean(this.sqlSession.insert("insOrderPrice", user))) {
							this.tranManager.commit();
						}else {
							message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
							this.tranManager.rollback();
						}
					}
				}else {
					if(this.convertToBoolean(this.sqlSession.insert("insOrderWithComent", user))) {		//요청사항 있고 상품은 하나
						if(this.convertToBoolean(this.sqlSession.update("updateOrderStatus", user))) {
							if(this.convertToBoolean(this.sqlSession.insert("insOrderPrice", user))) {
								if(this.convertToBoolean(this.sqlSession.delete("delOderAfterCart", user))) {
									sellCount = this.sqlSession.selectOne("getSellCountForOrder", user);
									user.getOrder().get(0).getProduct().get(0).setProductsSellCount(sellCount + user.getOrder().get(0).getProduct().get(0).getProductsCount());
									System.out.println("판매 수량을 위한 : "+user);
									if(this.convertToBoolean(this.sqlSession.insert("upSellCountAfterOrder", user))) {
										this.tranManager.commit();
									}else {
										message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
										this.tranManager.rollback();
									}
								}else {
									message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
									this.tranManager.rollback();
								}
							}else {
								message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
								this.tranManager.rollback();
							}
						}else {
							message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
							this.tranManager.rollback();
						}
					}else {
						message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
						this.tranManager.rollback();
					}
				}
			}
			if(user.getOrder().get(0).getOrderDiscount() > 0) {
				if(user.getCoupon() != null) {
					String code = user.getCoupon().get(0).getCouponCode().trim();
					user.getCoupon().get(0).setCouponCode(code);
					if(this.convertToBoolean(this.sqlSession.delete("upCouponStatus", user))) {
						this.tranManager.commit();
					}else {
						this.tranManager.rollback();
					}
					int total = (user.getOrder().get(0).getOrderTotalPrice() + user.getOrder().get(0).getOrderDiscount())-3000;
					int percent = (int) (total * 0.01);
					int pointAcc = this.sqlSession.selectOne("getUserPoint", user);
					user.setUserAcc(Integer.toString(percent + pointAcc));
					if(this.convertToBoolean(this.sqlSession.update("upUserAccPoint", user))) {
						this.tranManager.commit();
					}else {
						this.tranManager.rollback();
					}
				}else {
					int point = this.sqlSession.selectOne("getUserPoint", user);
					String accPoint = Integer.toString(point - Integer.parseInt(user.getUserAcc()));
					user.setUserAcc(accPoint);
					System.out.println(user.getUserAcc());
					if(this.convertToBoolean(this.sqlSession.update("upUserAccPoint", user))) {
						this.tranManager.commit();
					}else {
						this.tranManager.rollback();
					}
					int total = (user.getOrder().get(0).getOrderTotalPrice() + user.getOrder().get(0).getOrderDiscount())-3000;
					int percent = (int) (total * 0.01);
					int pointAcc = this.sqlSession.selectOne("getUserPoint", user);
					user.setUserAcc(Integer.toString(percent + pointAcc));
					if(this.convertToBoolean(this.sqlSession.update("upUserAccPoint", user))) {
						this.tranManager.commit();
					}else {
						this.tranManager.rollback();
					}
				}
			}else {
				int total = (user.getOrder().get(0).getOrderTotalPrice() + user.getOrder().get(0).getOrderDiscount())-3000;
				int accPoint = (int) (total * 0.01);
				int point = this.sqlSession.selectOne("getUserPoint", user);
				user.setUserAcc(Integer.toString(accPoint + point));
				if(this.convertToBoolean(this.sqlSession.update("upUserAccPoint", user))) {
					this.tranManager.commit();
				}else {
					this.tranManager.rollback();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
		}
	}
	
	private void orderViewPage(ModelAndView mav) {
		List<CategoriesBean> List = null;
		List<OrderBean> orderList = null;
		List<ProductsBean> proList = null;
		List<Integer> paging = new ArrayList<Integer>();
		ArrayList<PagingBean> pagingList = new ArrayList<PagingBean>();
		OrderBean order = (OrderBean)mav.getModel().get("order");
		System.out.println("도대체 : "+order);
		String type = order.getOrderStatus();
		System.out.println("뭐 때문에 : "+type);
		UserBean user = (UserBean) session.getAttribute("userInfo");
		PagingBean pageNum = (PagingBean) mav.getModel().get("pageNum");
		int orderCount = 0;
		int p = 0;
		int startNum = 0;
		int endNum = 0;
		int orderProCount = 0;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if(this.convertToBoolean(this.sqlSession.selectOne("isOrder", user))) {
				//orderProCount = this.sqlSession.selectOne("getOrderProductCount", user);
				if(pageNum.getPageNum() == 0) {
					pageNum.setPageNum(1);
					mav.addObject("pageNum", pageNum.getPageNum());
				}
				if(type.equals("B")) {
					orderCount = this.sqlSession.selectOne("getOrderCount", user);
				}else {
					orderCount = this.sqlSession.selectOne("getOrderCancelCount", user);
				}
				if(orderCount % 5 != 0) {
					p = (orderCount / 5) + 1;
				}else {
					p = (orderCount / 5);
				}
				for(int a=1; a<=p; a++) {
					paging.add(a);
				}
				endNum = pageNum.getPageNum() * 5;
				startNum = endNum - 4;
				pageNum.setEndNum(endNum);
				pageNum.setStartNum(startNum);
				pagingList.add(pageNum);
				user.setPaging(pagingList);
				List = this.sqlSession.selectList("getPageCate");
				if(type.equals("B")) {
					orderList = this.sqlSession.selectList("getOrderCode", user);
				}else {
					orderList = this.sqlSession.selectList("getOrderCancelCode", user);
				}
				for(int a=0; a<orderList.size(); a++) {
					if(type.equals("B")) {
						orderList.get(a).setOrderDiscount(this.sqlSession.selectOne("getOrderProductCount", orderList.get(a)));
					}else {
						orderList.get(a).setOrderDiscount(this.sqlSession.selectOne("getOrderCancelProductCount", orderList.get(a)));
					}
				}
				for(int i=0; i<orderList.size(); i++) {
					ProductsBean pro = new ProductsBean();
					ArrayList<ProductsBean> proArr = new ArrayList<ProductsBean>();
					if(type.equals("B")) {
						proList = this.sqlSession.selectList("getOrderProduct", orderList.get(i));
					}else {
						proList = this.sqlSession.selectList("getOrderCancelProduct", orderList.get(i));
					}
					for(int j=0; j<proList.size(); j++) {
						pro = proList.get(j);
						proArr.add(pro);
					}
					orderList.get(i).setProduct(proArr);
				}
				System.out.println("tlqkf : "+orderList);
				for(int i=0; i<orderList.size(); i++) {
					System.out.println(orderList.get(i).getOrderDate());
					String[] parts = orderList.get(i).getOrderDate().split("-");
					String newDateString = parts[0] + "." + parts[1] + "." + parts[2].substring(0, 2);
					orderList.get(i).setOrderDate(newDateString);
				}
				System.out.println("확인 : "+orderList);
				System.out.println(type);
				for(int a=0; a<orderList.size(); a++) {
					if(orderList.get(a).getOrderStatus().equals("B")) {
						orderList.get(a).setOrderStatus("주문 완료");
					}else if(orderList.get(a).getOrderStatus().equals("O")) {
						orderList.get(a).setOrderStatus("배송 완료");
					}else if(orderList.get(a).getOrderStatus().equals("I")) {
						orderList.get(a).setOrderStatus("배송중");
					}else if(orderList.get(a).getOrderStatus().equals("C")) {
						orderList.get(a).setOrderStatus("취소 완료");
					}
				}
			}
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("pageNum", pageNum.getPageNum());
			mav.addObject("cate", List);
			mav.addObject("orderList", orderList);
			mav.setViewName("orderViewPage");
			mav.addObject("paging", paging);
			mav.addObject("type", type);
		}
	}
	
	private long makeRandom() {
		Random rand = new Random();
        long min = 100000000000L;
        long max = 999999999999L;
        long randomNumber = min + ((long) (rand.nextDouble() * (max - min)));
		return randomNumber;
	}
	
	
	/* boolean 변환 */
	protected boolean convertToBoolean(int value) {
		return value > 0 ? true : false;
	}
}
