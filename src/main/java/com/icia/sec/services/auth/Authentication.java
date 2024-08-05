package com.icia.sec.services.auth;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.spel.ast.Projection;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.icia.sec.beans.CategoriesBean;
import com.icia.sec.beans.CouponBean;
import com.icia.sec.beans.OrderBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.utils.SimpleTransactionManager;
import com.icia.sec.utils.TransactionAssistant;

import com.icia.sec.utils.Encryption;
import lombok.extern.slf4j.Slf4j;

/* Authentication + Memeber Join */
@Service
@Slf4j
public class Authentication extends TransactionAssistant {
	@Autowired
	private Encryption enc;
	@Autowired
	private SimpleTransactionManager tranManager;
	@Autowired
	public HttpSession session;
	
	public Authentication() {
	}

	public void backController(String serviceCode, Model model) {
		switch (serviceCode) {
		case "J1":
			this.dupIdCheck(model);
			break;
		case "J2":
			this.dupMemberCheck(model);
			break;
		case "J3":
			this.joinMember(model);
			break;
		case "L1":
			this.login(model);
			break;
		case "IP":
			this.isNowPw(model);
			break;
		case "UU":
			this.updateUserPw(model);
			break;
		case "MUIA":
			this.modifyUserInfoAjax(model);
			break;
		}
	}

	public void backController(String serviceCode, ModelAndView mav) {
		switch (serviceCode) {
		case "A1":
			this.afterLoginPage(mav);
			break;
		case "GIP":
			this.getIndexProduct(mav);
			break;
		case "LO":
			this.logOut(mav);
			break;
		case "LH":
			this.logoHome(mav);
			break;
		case "CI":
			this.changeInfo(mav);
			break;
		case "CP":
			this.cp(mav);
			break;
		case "KL":
			this.kakaoLogin(mav);
			break;
		case "WL":
			this.webLogin(mav);
			break;
		case "ALAS":
			this.afterPage_admin_shop(mav);
			break;
		case "NL":
			this.naverLogin(mav);
			break;
		case "FI":
			this.FindIdResult(mav);
			break;
		case "FP":
			this.FindPwResult(mav);
			break;
		case "MUI":
			this.modifyUserInfo(mav);
			break;
		case "MA":
			this.modifyAfter(mav);
			break;
		}
	} 
	
	private void modifyAfter(ModelAndView mav) {
		session.removeAttribute("userInfo");
		mav.setViewName("login");
	}
	
	private void modifyUserInfoAjax(Model model) {
		UserBean user = (UserBean) model.getAttribute("user");
		String message = null;
		String pw = user.getUserPw();
		UserBean beforeUser = (UserBean) session.getAttribute("userInfo");
		user.setUserId(beforeUser.getUserId());
		this.tranManager = this.getTransaction(false);
		System.out.println(user);
		try {
			this.tranManager.tranStart();
			System.out.println(user);
			System.out.println(user.getUserPw());
			if (pw != null) {
				user.setUserPw(enc.aesEncode(user.getUserPw(), user.getUserId()));
				System.out.println("O");
				if (convertToBoolean(this.sqlSession.update("modifyUserInfoAll", user))) {
					message = "회원정보가 수정되었습니다.\n다시 로그인 해주시길 바랍니다.";
					this.tranManager.commit();
				}else {
					message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
					this.tranManager.rollback();
				}
			}else {
				System.out.println("not");
				if (convertToBoolean(this.sqlSession.update("modifyUserInfoNotPw", user))) {
					message = "회원정보가 수정되었습니다.\n다시 로그인 해주시길 바랍니다.";
					this.tranManager.commit();
				}else {
					message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
					this.tranManager.rollback();
				}
			}
		} catch (Exception e) {
			System.out.println("??");
			System.out.println(e);
		} finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
		}
	}
	
	private void modifyUserInfo(ModelAndView mav) {
		String page = "modifyUserInfo";
		String findPw = null;
		List<CategoriesBean> List = null;
		UserBean user = (UserBean) session.getAttribute("userInfo");
		try {
			if(user.getUserPw() != null) {
				findPw = enc.aesDecode(user.getUserPw(), user.getUserId());//암호화 된 비밀번호를 복호화
			}
			List = this.sqlSession.selectList("getPageCate");
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if(user.getUserPw() != null) {
				mav.addObject("userInfo", user);
				mav.addObject("findPassword", findPw);
				mav.addObject("firstPhone", user.getUserPhone().substring(0, 3));
				mav.addObject("secPhone", user.getUserPhone().substring(3, 7));
				mav.addObject("trdPhone", user.getUserPhone().substring(7, 11));
			}else {
				if(user.getUserPhone() != null) {
					mav.addObject("userInfo", user);
					mav.addObject("findPassword", findPw);
					mav.addObject("firstPhone", user.getUserPhone().substring(0, 3));
					mav.addObject("secPhone", user.getUserPhone().substring(3, 7));
					mav.addObject("trdPhone", user.getUserPhone().substring(7, 11));
				}else {
					mav.addObject("userInfo", user);
				}
			}
			mav.addObject("cate", List);
			mav.setViewName(page);
		}
	}
	
	private void FindPwResult(ModelAndView mav) {
		String page = "afterFindPw";
		UserBean user = (UserBean)mav.getModel().get("user");
		String findId = null;
		String findName = null;
		String findMail = null;
		String findPw = null;
		List<CategoriesBean> List = null;
		List<ProductsBean> bestPro = null;
		List<ProductsBean> newPro = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if(convertToBoolean(this.sqlSession.selectOne("isFindId", user))) {
				user = this.sqlSession.selectOne("getFindId", user);
				findPw = enc.aesDecode(user.getUserPw(), user.getUserId());//암호화 된 비밀번호를 복호화
				findId = user.getUserId();
				findName = user.getUserName();
				findMail = user.getUserEmail();
			}else {
				findId = "존재하는 계정이 없습니다.";
			}
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
			mav.addObject("findId", findId);
			mav.addObject("findName", findName);
			mav.addObject("findMail", findMail);
			mav.addObject("findPw", findPw);
			mav.setViewName(page);
		}
	}
	
	private void FindIdResult(ModelAndView mav) {
		String page = "afterFindId";
		UserBean user = (UserBean)mav.getModel().get("user");
		String findId = null;
		String findName = null;
		String findMail = null;
		List<CategoriesBean> List = null;
		List<ProductsBean> bestPro = null;
		List<ProductsBean> newPro = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if(convertToBoolean(this.sqlSession.selectOne("isFindId", user))) {
				user = this.sqlSession.selectOne("getFindId", user);
				findId = user.getUserId();
				findName = user.getUserName();
				findMail = user.getUserEmail();
			}else {
				findId = "존재하는 계정이 없습니다.";
			}
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
			mav.addObject("findId", findId);
			mav.addObject("findName", findName);
			mav.addObject("findMail", findMail);
			mav.setViewName(page);
		}
	}
	
	private void naverLogin(ModelAndView mav) {
		String page = "index";
		UserBean user = (UserBean) mav.getModel().get("user");
		CouponBean cou = new CouponBean();
		ArrayList<CouponBean> cpList = new ArrayList<CouponBean>();
		String joinCoupon = null;
		LocalDate currentDate = LocalDate.now();
        LocalDate endDate = currentDate.plusMonths(1);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy/MM/dd");
        String formattedEndDate = endDate.format(formatter);
		String username = user.getUserEmail().substring(0, user.getUserEmail().indexOf('@'));
		user.setUserId(username);
		user.setUserName(username);
		List<CategoriesBean> List = null;
		List<ProductsBean> bestPro = null;
		List<ProductsBean> newPro = null;
		if (username.length() > 13) {				//유저코드 만드는 과정
		    username = username.substring(0, 13);	//
		    user.setUserCode(username);				//
		}else if(username.length()<13){				//
			while (username.length() < 13) {		//
			    username += "0";					//
			}										//
			user.setUserCode(username);				//
		}else {										//
			user.setUserCode(username);				//
		}											//여기까지
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			if(!convertToBoolean(this.sqlSession.selectOne("dupMemberCheck", user))) {
				if(this.convertToBoolean(this.sqlSession.insert("naverJoin", user))) {
					session.setAttribute("userInfo", user);
					joinCoupon = generateRandomString();
					cou.setCouponCode(joinCoupon);
					cou.setCouponBenefit("10%");
					cou.setCouponApply("모든 상품");
					cou.setCouponIs("o");
					cou.setCouponName("회원가입 축하 쿠폰");
					cou.setCouponPrice(10000);
					cou.setCouponEndDate(formattedEndDate);
					cpList.add(cou);
					user.setCoupon(cpList);
					System.out.println("쿠폰 확인 : "+user);
					if(this.convertToBoolean(this.sqlSession.insert("insJoinCoupon", user))) {
						this.tranManager.commit();
						mav.setViewName(page);
					}else {
						this.tranManager.rollback();
						mav.setViewName("login");
					}
				}else {
					this.tranManager.rollback();
					mav.setViewName("login");
				}
			}else {
				user = this.sqlSession.selectOne("getKakaoId", user);
				List<CouponBean> cuList = this.sqlSession.selectList("getCouponListForDelete", user);
				for(int i=0; i<cuList.size(); i++) {
					System.out.println("끝 날짜 : "+cuList.get(i).getCouponEndDate());
					LocalDate couponEndDate = LocalDate.parse(cuList.get(i).getCouponEndDate(), formatter);
					if (currentDate.isAfter(couponEndDate)) this.sqlSession.delete("deleteCouponEndDate", cuList.get(i));
				}
				System.out.println("네이버 확인 : "+user);
				session.setAttribute("userInfo", user);
				mav.setViewName(page);
			}
			List = this.sqlSession.selectList("getPageCate");
			bestPro = this.sqlSession.selectList("getBestProduct");
			newPro = this.sqlSession.selectList("getNewProduct");
			System.out.println("여기 "+user);
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("newItem", newPro);
			mav.addObject("bestItem", bestPro);
			mav.addObject("cate", List);
		}
	}
	
	private void webLogin(ModelAndView mav) {
		String page = null;
		String message = null;
		UserBean user = (UserBean) session.getAttribute("userInfo");
		List<CategoriesBean> List = null;
		List<ProductsBean> bestPro = null;
		List<ProductsBean> newPro = null;
		List<OrderBean> or = new ArrayList<>();
		List<UserBean> us = new ArrayList<>();
		List<UserBean> user_admin = new ArrayList<>();
		Map<String, Object> map = new HashMap<String, Object>();
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			if(user != null) {
				if(user.getUserGrade().equals("1")) {
					List = this.sqlSession.selectList("getPageCate");
					bestPro = this.sqlSession.selectList("getBestProduct");
					newPro = this.sqlSession.selectList("getNewProduct");
					page = "index";
				}else {
					map.put("totalOrderCount", this.sqlSession.selectOne("getTotlaOrderCount"));
					int totalOrderPrice = this.sqlSession.selectOne("getTotalOrderPrice");
					int count = this.sqlSession.selectOne("getOrderPriceCount");
					totalOrderPrice -= (3000 * count);
					map.put("totalOrderPrice", totalOrderPrice);
					map.put("totalOrderDiscount", this.sqlSession.selectOne("getTotalOrderDiscount"));
					map.put("totalOrderComplete", this.sqlSession.selectOne("getTotalOrderComplete"));
					map.put("totalOrderDeliveryRedy", this.sqlSession.selectOne("getTotalOrderDeliveryRedy"));
					map.put("totalOrderDeliveryComplete", this.sqlSession.selectOne("getTotalOrderDeliveryComplete"));
					map.put("totalOrder", this.sqlSession.selectOne("getTotalOrderExceptC"));
					map.put("totalOrderCancel", this.sqlSession.selectOne("totalOrderCancel"));
					or = this.sqlSession.selectList("getOrderListCode");
					for(int i=0; i<or.size(); i++) {
						us.add(i, this.sqlSession.selectOne("getOrderList_admin", or.get(i)));
					}
					for(int a=0; a<us.size(); a++) {
						if (us.get(a).getUserPhone().length() == 11) {
							us.get(a).setUserPhone(us.get(a).getUserPhone().replaceAll("(\\d{3})(\\d{4})(\\d{4})", "$1-$2-$3"));
					    } else if (us.get(a).getUserPhone().length() == 10) {
					    	us.get(a).setUserPhone(us.get(a).getUserPhone().replaceAll("(\\d{3})(\\d{3})(\\d{4})", "$1-$2-$3"));
					    }
					}
					user_admin = this.sqlSession.selectList("getUserList_admin");
					for(int j=0; j<user_admin.size(); j++) {
						if(user_admin.get(j).getUserGrade().equals("0")) {
							user_admin.get(j).setUserGrade("관리자");
						}else {
							user_admin.get(j).setUserGrade("일반회원");
						}
					}
					page = "admin_index";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			this.tranManager.tranEnd();
			for (Map.Entry<String, Object> entry : map.entrySet()) {
	            mav.addObject(entry.getKey(), entry.getValue());
	        }
			mav.addObject("newItem", newPro);
			mav.addObject("bestItem", bestPro);
			mav.addObject("cate", List);
			mav.addObject("us", us);
			mav.addObject("user_admin", user_admin);
			mav.setViewName(page);
		}
	}
	
	private void afterPage_admin_shop(ModelAndView mav) {
		String page = null;
		String message = null;
		UserBean user = (UserBean) session.getAttribute("userInfo");
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
			mav.setViewName("index");
		}
	}
	
	private void kakaoLogin(ModelAndView mav) {
		String page = "index";
		UserBean user = (UserBean) mav.getModel().get("user");
		CouponBean cou = new CouponBean();
		ArrayList<CouponBean> cpList = new ArrayList<CouponBean>();
		String joinCoupon = null;
		LocalDate currentDate = LocalDate.now();
        LocalDate endDate = currentDate.plusMonths(1);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy/MM/dd");
        String formattedEndDate = endDate.format(formatter);
		List<CategoriesBean> List = null;
		List<ProductsBean> bestPro = null;
		List<ProductsBean> newPro = null;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			mav.addObject("user", user);
			if(!convertToBoolean(this.sqlSession.selectOne("dupMemberCheck", user))) {
				if(convertToBoolean(this.sqlSession.insert("joinKakao", user))) {
					session.setAttribute("userInfo", user);
					joinCoupon = generateRandomString();
					cou.setCouponCode(joinCoupon);
					cou.setCouponBenefit("10%");
					cou.setCouponApply("모든 상품");
					cou.setCouponIs("o");
					cou.setCouponName("회원가입 축하 쿠폰");
					cou.setCouponPrice(10000);
					cou.setCouponEndDate(formattedEndDate);
					cpList.add(cou);
					user.setCoupon(cpList);
					if(this.convertToBoolean(this.sqlSession.insert("insJoinCoupon", user))) {
						this.tranManager.commit();
						mav.setViewName(page);
					}else {
						this.tranManager.rollback();
						mav.setViewName("login");
					}
				}else {
					this.tranManager.rollback();
					mav.setViewName("login");
				}
			}else {
				user = this.sqlSession.selectOne("getKakaoId", user);
				List<CouponBean> cuList = this.sqlSession.selectList("getCouponListForDelete", user);
				for(int i=0; i<cuList.size(); i++) {
					System.out.println("끝 날짜 : "+cuList.get(i).getCouponEndDate());
					LocalDate couponEndDate = LocalDate.parse(cuList.get(i).getCouponEndDate(), formatter);
					if (currentDate.isAfter(couponEndDate)) this.sqlSession.delete("deleteCouponEndDate", cuList.get(i));
				}
				System.out.println("카카오 확인 : "+user);
				session.setAttribute("userInfo", user);
				mav.setViewName(page);
			}
			List = this.sqlSession.selectList("getPageCate");
			bestPro = this.sqlSession.selectList("getBestProduct");
			newPro = this.sqlSession.selectList("getNewProduct");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("newItem", newPro);
			mav.addObject("bestItem", bestPro);
			mav.addObject("cate", List);
		}
	}
	
	private void cp(ModelAndView mav) {
		String page = "cp";
		String type = "T";
		List<ProductsBean> List = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getIndexProduct", type);
			for(int i=0; i<List.size(); i++) {
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}finally {
			this.tranManager.tranEnd();
			UserBean user = (UserBean) mav.getModel().get("user");
			mav.addObject("products", List);
			mav.addObject("userInfo", user);
			mav.setViewName(page);
		}
	}
	
	private void updateUserPw(Model model) {
		UserBean user = (UserBean) model.getAttribute("user");
		UserBean userInfo = (UserBean) session.getAttribute("userInfo");
		String message = null;
		String aesPw = null;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			aesPw = enc.aesEncode(user.getUserPw(), userInfo.getUserId());
			user.setUserCode(userInfo.getUserCode());
			user.setUserPw(aesPw);
			if(convertToBoolean(this.sqlSession.update("updateUserPw", user))) {
				this.tranManager.commit();
				message = "비밀번호가 변경 되었습니다.";
			}else {
				this.tranManager.rollback();
				message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
			}
		} catch (Exception e) {
			System.out.println(e);
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
		}finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
		}
	}
	
	private void isNowPw(Model model) {
		UserBean user = (UserBean) model.getAttribute("user");
		UserBean userInfo = (UserBean) session.getAttribute("userInfo");
		String message = null;
		String aesPw = null; //암호화 된 비밀번호(DB에 저장 되어 있는 비밀번호를 담을 때 사용)
		String desPw = null; //DB에서 가져온 암호화 된 비밀번호를 복호화 한 뒤 여기에 담을 예정
		
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			aesPw = this.sqlSession.selectOne("getUserPassword", userInfo);
			desPw = enc.aesDecode(aesPw, userInfo.getUserId());//암호화 된 비밀번호를 복호화
			if(user.getUserPw().equals(desPw)) {
				message = null;
			}else {
				message = "비밀번호가 일치하지 않습니다.";
			}
		} catch (Exception e) {
			System.out.println("error"+e);
		}finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
		}
	}
	
	private void changeInfo(ModelAndView mav) {
		UserBean user = (UserBean)session.getAttribute("userInfo");
		String[] phone = new String[3];
		phone[0] = user.getUserPhone().substring(0, 3);
		phone[1] = user.getUserPhone().substring(3, 7);
		phone[2] = user.getUserPhone().substring(7, 11);
		mav.addObject("firstPhone", phone[0]);
		mav.addObject("secondPhone", phone[1]);
		mav.addObject("thirdPhone", phone[2]);
		mav.addObject("userInfo", user);
		mav.setViewName("changeUserInfo");
	}
	
	private void logOut(ModelAndView mav) {
		session.removeAttribute("userInfo");
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
			mav.addObject("logOut", "out");
		}
	}
	
	private void getIndexProduct(ModelAndView mav) {
		
		this.tranManager = this.getTransaction(true);
		List<ProductsBean> List = null;
		String type = "T";
		String page = (String) mav.getModel().get("page");
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getIndexProduct", type);
			for(int i=0; i<List.size(); i++) {
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}finally {
			this.tranManager.tranEnd();
			mav.addObject("products", List);
			mav.setViewName(page);
		}
	}
	
	private void afterLoginPage(ModelAndView mav) {
		String page = null;
		String type = "T";
		List<ProductsBean> List = null;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getIndexProduct", type);
			for(int i=0; i<List.size(); i++) {
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}finally {
			this.tranManager.tranEnd();
			UserBean user = (UserBean) mav.getModel().get("user");
			if(user.getUserGrade().equals("0")) {
				page = "afterLoginManager";
			}else {
				page = "afterLoginCustomer";
			}
			mav.addObject("products", List);
			mav.addObject("userInfo", user);
			mav.addObject("userName", user.getUserName());
			mav.setViewName(page);
		}
	}
	
	private void login(Model model) {
		String message = null;
		String aesPw = null; //암호화 된 비밀번호(DB에 저장 되어 있는 비밀번호를 담을 때 사용)
		String desPw = null; //DB에서 가져온 암호화 된 비밀번호를 복호화 한 뒤 여기에 담을 예정
		UserBean user = (UserBean) model.getAttribute("user");
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy/MM/dd");
		 LocalDate currentDate = LocalDate.now();
		int visit = 0;
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			if(convertToBoolean(this.sqlSession.selectOne("selId", user))) {
				aesPw = this.sqlSession.selectOne("getUserPassword", user); //암호화 된 비밀번호를 가져오고
				desPw = enc.aesDecode(aesPw, user.getUserId());//암호화 된 비밀번호를 복호화
				if(user.getUserPw().equals(desPw)) {
					user = this.sqlSession.selectOne("getUserInfo", user);
					this.tranManager.commit();
					session.setAttribute("userInfo", user);
					visit = this.sqlSession.selectOne("getUserVisitCount", user);
					visit += 1;
					user.setUserVisit(visit);
					this.sqlSession.update("upUserVisitCount", user);
					List<CouponBean> cuList = this.sqlSession.selectList("getCouponListForDelete", user);
					for(int i=0; i<cuList.size(); i++) {
						LocalDate couponEndDate = LocalDate.parse(cuList.get(i).getCouponEndDate(), formatter);
						if (currentDate.isAfter(couponEndDate)) this.sqlSession.delete("deleteCouponEndDate", cuList.get(i));
					}
				}else {
					message = "비밀번호가 틀렸습니다.";
				}
			}else {
				message = "존재하지 않는 계정입니다.";
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
		}finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
			model.addAttribute("user", user);
		}
	}

	private void joinMember(Model model) {
		String message = null;
		UserBean user = (UserBean) model.getAttribute("user");
		CouponBean cou = new CouponBean();
		ArrayList<CouponBean> cpList = new ArrayList<CouponBean>();
		String joinCoupon = null;
		LocalDate currentDate = LocalDate.now();
        LocalDate endDate = currentDate.plusMonths(1);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy/MM/dd");
        String formattedEndDate = endDate.format(formatter);
		user.setUserGrade("1");
		if(user.getUserAddrDetail().equals(null)) {
			user.setUserAddrDetail(".");
		}
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			user.setUserPw(enc.aesEncode(user.getUserPw(), user.getUserId()));
			if (convertToBoolean(this.sqlSession.insert("joinMember", user))) {
				joinCoupon = generateRandomString();
				cou.setCouponCode(joinCoupon);
				cou.setCouponBenefit("10%");
				cou.setCouponApply("모든 상품");
				cou.setCouponIs("o");
				cou.setCouponName("회원가입 축하 쿠폰");
				cou.setCouponPrice(10000);
				cou.setCouponEndDate(formattedEndDate);
				cpList.add(cou);
				user.setCoupon(cpList);
				if(this.convertToBoolean(this.sqlSession.insert("insJoinCoupon", user))) {
					this.tranManager.commit();
					message = "성공적으로 회원가입이 되었습니다!";
				}else {
					message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
					this.tranManager.rollback();
				}
			} else {
				message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
				this.tranManager.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
		} finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
		}
	}

	private void dupMemberCheck(Model model) {
		String message = null;
		UserBean user = (UserBean) model.getAttribute("user");
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if (convertToBoolean(this.sqlSession.selectOne("dupMemberCheck", user))) {
				message = "이미 게정이 존재하는 사용자 입니다.";
			} else {
				message = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
		} finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
		}
	}

	private void dupIdCheck(Model model) {
		String message = null;
		UserBean user = (UserBean) model.getAttribute("user");
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if (convertToBoolean(this.sqlSession.selectOne("dupIdCheck", user))) {
				message = "아이디가 존재합니다.";
			} else {
				message = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요";
		} finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
		}

	}

	private void logoHome(ModelAndView mav) {
		String page = null;
		UserBean user = (UserBean) session.getAttribute("userInfo");
		String type = "T";
		List<ProductsBean> List = null;
		this.tranManager = this.getTransaction(true);
		try {
			if (user != null) {
				if (user.getUserGrade().equals("0")) {
					page = "afterLoginManager";
				} else {
					page = "afterLoginCustomer";
				}
			} else {
				page = "index";
			}
			this.tranManager.tranStart();
			List = this.sqlSession.selectList("getIndexProduct", type);
			for (int i = 0; i < List.size(); i++) {
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		} finally {
			this.tranManager.tranEnd();
			mav.addObject("products", List);
			mav.setViewName(page);
		}
	}
	
	public static String generateRandomString() {
        int length = 10;
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder randomString = new StringBuilder();

        Random random = new Random();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            randomString.append(characters.charAt(index));
        }

        return randomString.toString();
    }

	/* boolean 변환 */
	protected boolean convertToBoolean(int value) {
		return value > 0 ? true : false;
	}

}
