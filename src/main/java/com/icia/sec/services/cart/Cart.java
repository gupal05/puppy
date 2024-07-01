package com.icia.sec.services.cart;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.reactive.TransactionSynchronizationManager;
import org.springframework.transaction.support.TransactionSynchronizationUtils;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.icia.sec.beans.CategoriesBean;
import com.icia.sec.beans.OrderBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.services.product.Product;
import com.icia.sec.utils.SimpleTransactionManager;
import com.icia.sec.utils.TransactionAssistant;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Cart extends TransactionAssistant {
	@Autowired
	private SimpleTransactionManager tranManager;
	@Autowired
	public HttpSession session;
	
	public Cart() {}
	
	public void backController(String serviceCode, Model model) {
		switch (serviceCode) {
		case "CC1":
			this.changeCount(model);
			break;
		case "DC":
			this.delCart(model);
			break;
		case "UCI":
			this.upCartInfo(model);
			break;
		case "DCP":
			this.delCartProdut(model);
			break;
		case "IC":
			this.insCart(model);
			break;
		case "DCA":
			this.deleteCartAll(model);
			break;
		}
	}
	
	public void backController(String serviceCode, ModelAndView mav) {
		switch (serviceCode) {
		case "C":
			this.getCartList(mav);
			break;
		case "CP":
			this.cartPage(mav);
			break;
		case "CCC":
			this.changeCartCount(mav);
			break;
		}
	}
	
	private void deleteCartAll(Model model) {
		UserBean user = (UserBean) session.getAttribute("userInfo");
		String message = null;
		this.tranManager = this.getTransaction(false);
		ArrayList<Character> arr = new ArrayList<>();
		try {
			this.tranManager.tranStart();
			if(convertToBoolean(this.sqlSession.delete("deleteCartAll", user))) {
				message = "장바구니를 비웠습니다.";
				this.tranManager.commit();
			}else {
				message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
				this.tranManager.rollback();
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
			model.addAttribute("user", user);
		}
	}
	
	private void insCart(Model model) {
		ProductsBean pro = (ProductsBean) model.getAttribute("pro");
		UserBean user = (UserBean) session.getAttribute("userInfo");
		pro.setProductsDate(user.getUserCode());
		String message = null;
		boolean loop = true;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
				if(this.convertToBoolean(this.sqlSession.selectOne("isCartCount", pro))) {
					message = "해당 상품이 이미 장바구니에 있습니다.\n장바구니에서 수량을 변경하세요.";
				}else {
						if(this.convertToBoolean(this.sqlSession.insert("insCart", pro))) {
							message = "장바구니에 담았습니다.";
							this.tranManager.commit();
							while (loop) {
								if(this.convertToBoolean(this.sqlSession.selectOne("isCartCount", pro))) {
									loop = false;
								}else {
									this.sqlSession.insert("insCart", pro);
									this.tranManager.commit();
									loop = true;
								}
							}
						}else {
							message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
							this.tranManager.rollback();
						}
				}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			this.tranManager.tranEnd();
			pro.setMessage(message);
		}
	}
	
	private void delCartProdut(Model model) {
		ProductsBean pro = (ProductsBean) model.getAttribute("product");
		UserBean user = (UserBean) session.getAttribute("userInfo");
		String message = null;
		pro.setProductsDate(user.getUserCode());
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			if(convertToBoolean(this.sqlSession.delete("delCartProduct", pro))) {
				message = "상품이 삭제 되었습니다.";
				this.tranManager.commit();
			}else {
				this.tranManager.rollback();
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			this.tranManager.tranEnd();
			pro.setMessage(message);
		}
	}
	
	private void upCartInfo(Model model) {
		ProductsBean pro = (ProductsBean) model.getAttribute("pro");
		UserBean user = (UserBean) session.getAttribute("userInfo");
		pro.setProductsDate(user.getUserCode());
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			if(convertToBoolean(this.sqlSession.update("upCartInfo", pro))) {
				this.tranManager.commit();
				pro.setMessage("장바구니가 변경되었습니다.");
			}else {
				this.tranManager.rollback();
				pro.setMessage("네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요");
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			this.tranManager.tranEnd();
		}
	}
	
	private void changeCartCount(ModelAndView mav) {
		List<CategoriesBean> List = null;
		ProductsBean pro = (ProductsBean) mav.getModel().get("product");
		UserBean user = (UserBean) session.getAttribute("userInfo");
		System.out.println("asdasd : "+pro);
	}
	
	private void cartPage(ModelAndView mav) {
		List<CategoriesBean> List = null;
		List<ProductsBean> proList = null;
		UserBean user = (UserBean) session.getAttribute("userInfo");
		int total = 0;
		int plusTotal = 0;
		int productCount = 0;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getPageCate");
			if(convertToBoolean(this.sqlSession.selectOne("isCart", user))) {
				proList = this.sqlSession.selectList("getCartList", user);
				for(int idx=0; idx<proList.size(); idx++) {
					proList.get(idx).getCartList().get(0).setCartPrice(Integer.parseInt(proList.get(idx).getCartList().get(0).getCartCount()) * Integer.parseInt(proList.get(idx).getProductsPrice()));
					proList.get(idx).setProductsSellCount(proList.get(idx).getCartList().get(0).getCartPrice()/100);
					total += proList.get(idx).getCartList().get(0).getCartPrice();
				}
				
				plusTotal = total+3000;
			}else {
				proList = null;
			}
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("plusTotal", plusTotal);
			mav.addObject("total", total);
			mav.addObject("proList", proList);
			mav.addObject("cate", List);
			mav.setViewName("cartPage");
		}
	}
	
	
	private void delCart(Model model) {
		ProductsBean pro = (ProductsBean)model.getAttribute("product");
		UserBean user = (UserBean)session.getAttribute("userInfo");
		String message = null;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			pro.setProductsDate(user.getUserCode());
			if(this.convertToBoolean(this.sqlSession.delete("delCart", pro))){
				this.tranManager.commit();
				message = "상품이 삭제 되었습니다.";
			}else {
				this.tranManager.rollback();
				message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			pro.setMessage(message);
		}
	}
	
	private void changeCount(Model model) {
		ProductsBean pro = (ProductsBean) model.getAttribute("product");
		UserBean user = (UserBean)session.getAttribute("userInfo");
		pro.setProductsDate(user.getUserCode());
		String message = null;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			System.out.println(pro);
			if(this.convertToBoolean(this.sqlSession.update("upCartCount", pro))) {
				System.out.println("asdsssssssssssssssssss");
				this.tranManager.commit();
			}else {
				System.out.println("nnnnnnnnnnnn");
				message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
				this.tranManager.rollback();
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			pro.setMessage(message);
		}
	}
	
	private void getCartList(ModelAndView mav) {
		UserBean user = (UserBean) this.session.getAttribute("userInfo");
		String count = null;
		String price = null;
		int total = 0;
		int temp = 0;
		user.setMessage("T");
		List<ProductsBean> pro = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			pro = this.sqlSession.selectList("getCartList", user);
			for (int i = 0; i < pro.size(); i++) {
				count =  pro.get(i).getProductsMargin();
				price = pro.get(i).getProductsPrice();
				temp = Integer.parseInt(count) * Integer.parseInt(price); 
				total += temp;
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			this.tranManager.tranEnd();
			mav.addObject("total", total);
			mav.addObject("productList", pro);
			mav.setViewName("userCart");
		}
	}
	
	
	/* boolean 변환 */
	protected boolean convertToBoolean(int value) {
		return value > 0 ? true : false;
	}
}
