package com.icia.sec.services.coupon;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

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
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.utils.SimpleTransactionManager;
import com.icia.sec.utils.TransactionAssistant;

import lombok.extern.slf4j.Slf4j;

/* Authentication + Memeber Join */
@Service
@Slf4j
public class Coupon extends TransactionAssistant {
	@Autowired
	private SimpleTransactionManager tranManager;
	@Autowired
	public HttpSession session;

	public Coupon() {
	}

	public void backController(String serviceCode, Model model) {
		switch (serviceCode) {
		case "ISCU":
			this.isCouponNum(model);
			break;
		}
	}

	public void backController(String serviceCode, ModelAndView mav) {
		switch (serviceCode) {
		case "couponPage":
			this.getCouponPage(mav);
			break;
		}
	}
	
	private void getCouponPage(ModelAndView mav) {
		String page = "coupon";
		List<CouponBean> cpList = null;
		List<CategoriesBean> cate = null;
		int a = 0;
		int b = 0;
		ArrayList<Integer> p = new ArrayList<Integer>();
		int couponCount = 0;
		UserBean user = (UserBean) session.getAttribute("userInfo");
		DecimalFormat formatter = new DecimalFormat("###,###");
		this.tranManager = this.getTransaction(true);
		if(user == null) {
			page = "login";
			mav.setViewName(page);
		}else {
			try {
				if(this.convertToBoolean(this.sqlSession.selectOne("isCouponCount", user))) {
					couponCount = this.sqlSession.selectOne("isCouponCount", user);
					cpList = this.sqlSession.selectList("getCouponList", user);
					System.out.println(cpList);
					for(int i=0; i<cpList.size(); i++) {
						if(cpList.get(i).getCouponBenefit().contains("%")) {
							cpList.get(i).setCouponBenefit(cpList.get(i).getCouponBenefit() + " 할인");
						}else {
							int benefit = Integer.parseInt(cpList.get(i).getCouponBenefit());
					        cpList.get(i).setCouponBenefit(formatter.format(benefit) + "원 할인");
						}
					}
					System.out.println(cpList);
//					if(couponCount > 5) {
//						if(couponCount % 5 != 0) {
//							a = (couponCount / 5)+1;
//							b = couponCount % 5;	//다음 페이지에 나올 항목의 수( 만약 7개가 있으면 a = 2고 b는 2)
//							System.out.println("5개 이상 페이지 수 : "+a);
//							System.out.println("5개 이상 다음 페이지에 있는 수 : "+b);
//							for(int i=1; i<=a; i++) {
//								p.add(i);
//							}
//							System.out.println(p);
//						}else {
//							a = couponCount / 5;
//							System.out.println("한 페이지 : "+a);
//							System.out.println("한 페이지 : "+b);
//						}
//					}else {
//						System.out.println(couponCount);
//					}
				}else {
					System.out.println("none coupon");
				}
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
				mav.addObject("couponCount", couponCount);
				mav.addObject("cpList", cpList);
				mav.setViewName(page);
			}
		}
	}
	
	/* 상품 사진 ins */
	private void isCouponNum(Model model) {
		String message = null;
		CouponBean cou = (CouponBean) model.getAttribute("cou");
		UserBean user = (UserBean) session.getAttribute("userInfo");
		ArrayList<CouponBean> coupon = new ArrayList<CouponBean>();
		String is = null;
		LocalDate currentDate = LocalDate.now();
        LocalDate endDate = currentDate.plusMonths(1);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy/MM/dd");
        String formattedEndDate = endDate.format(formatter);
        System.out.println(formattedEndDate);
		this.tranManager = this.getTransaction(false);
		try {
			this.tranManager.tranStart();
			if(this.convertToBoolean(this.sqlSession.selectOne("isCouNum", cou))) { //쿠폰번호가 있는지 확인
				is = this.sqlSession.selectOne("getCouponIs", cou);					//해당 쿠폰번호의 사용 여부 확인
				if(is.equals("b")) {												//사용 전이면
					cou.setCouponIs("o");
					cou.setCouponEndDate(formattedEndDate);
					coupon.add(cou);
					user.setCoupon(coupon);
					if(this.convertToBoolean(this.sqlSession.update("upCouponNumber", user))) { //업데이트
						this.tranManager.commit();
						message = "쿠폰이 등록되었습니다!";
					}else {
						message = "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요.";
						this.tranManager.rollback();
					}
				}else {
					message = "이미 사용된 쿠폰입니다.";
				}
			}else {
				message = "존재하지 않는 쿠폰 번호 입니다.\n쿠폰번호를 확인해주세요.";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.tranManager.tranEnd();
			user.setMessage(message);
			model.addAttribute("user", user);
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
			// TODO: handle exception
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
