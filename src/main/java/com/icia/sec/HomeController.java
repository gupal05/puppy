package com.icia.sec;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.sec.beans.CategoriesBean;
import com.icia.sec.beans.CategoriesDetailBean;
import com.icia.sec.beans.ImgBean;
import com.icia.sec.beans.OrderBean;
import com.icia.sec.beans.PagingBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.services.auth.Authentication;
import com.icia.sec.services.cart.Cart;
import com.icia.sec.services.coupon.Coupon;
import com.icia.sec.services.order.Order;
import com.icia.sec.services.product.Product;
import com.icia.sec.services.wish.Wish;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class HomeController {
	@Autowired
	private Authentication auth;
	@Autowired
	private Product pro;
	@Autowired
	private Cart cart;
	@Autowired
	private Wish wish;
	@Autowired
	private Order order;
	@Autowired
	private Coupon coupon;
	// 모바일이면 "MOBI"를, PC면 "PC"를 출력하도록 문자열 초기화
		private static final String IS_MOBILE = "MOBI";
		private static final String IS_PC = "PC";
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// 모바일인지, PC인지 확인
	public static String isDevice(HttpServletRequest req) {
	    String userAgent = req.getHeader("User-Agent").toUpperCase();
	    if(userAgent.indexOf(IS_MOBILE) > -1) {
	         return IS_MOBILE;
	    } else {
	        return IS_PC;
	    }
	}
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public ModelAndView home(HttpServletRequest req, ModelAndView mav) {
//		String device = isDevice(req); // isDevice 메서드 호출하여 리턴 값을 받음
//		System.out.println(device);
//		if(device == "MOBI") {
//			mav.addObject("page", "index_mobile");
//		}else {
//			mav.addObject("page", "index");
//		}
//		this.auth.backController("GIP", mav);
//		return mav;
//	}
	
	@RequestMapping(value = "/logoHome", method = RequestMethod.POST)
	public ModelAndView logoHome(ModelAndView mav) {
		this.auth.backController("LH", mav);
		return mav;
	}
	
	@RequestMapping(value = "/estimate", method = RequestMethod.GET)
	public String estimate(ModelAndView mav) {
		return "estimate";
	}
	
//	@RequestMapping(value="/index", method = RequestMethod.POST)
//	public ModelAndView afterJoin(ModelAndView mav) {
//		mav.addObject("page", "index");
//		this.auth.backController("GIP", mav);
//		return mav;
//	}
	
	@RequestMapping(value="/joinPage", method = RequestMethod.POST)
	public String test(ModelAndView mav) {
		return "joinPage";
	}
	
	@RequestMapping(value="/orderPage", method = RequestMethod.POST)
	public ModelAndView orderPage(ModelAndView mav) {
		UserBean user = (UserBean)auth.session.getAttribute("userInfo");
		mav.addObject("is", "all");
		this.order.backController("OAP", mav);
		return mav;
	}
	
	@RequestMapping(value="/orderSelPage", method = RequestMethod.POST)
	public ModelAndView orderSelPage(ModelAndView mav, @ModelAttribute ProductsBean product) {
		mav.addObject("is", "sel");
		mav.addObject("proSessionCode", product);
		this.order.backController("OAP", mav);
		return mav;
	}
	
	@RequestMapping(value="/orderTest", method = RequestMethod.GET)
	public String orderTest(ModelAndView mav) {
		return "orderTest";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public ModelAndView join(ModelAndView mav) {
		this.pro.backController("GPC", mav);
		mav.setViewName("join");
		return mav;
	}
	
	@RequestMapping(value="/loginPage", method = RequestMethod.GET)
	public String loginPage(ModelAndView mav) {
		return "loginPage";
	}
	
	@RequestMapping(value="/afterLogin", method = RequestMethod.POST)
	public ModelAndView afterLogin(ModelAndView mav) {
		UserBean user = (UserBean) this.auth.session.getAttribute("userInfo");
		mav.addObject("user", user);
		
		this.auth.backController("A1", mav);
		return mav;
	}
	
	@RequestMapping(value="/addProduct", method = RequestMethod.POST)
	public ModelAndView addProduct(ModelAndView mav) {
		this.pro.backController("GC", mav);
		return mav;
	}
	@RequestMapping(value="/addProduct2", method = RequestMethod.GET)
	public ModelAndView addProduct2(ModelAndView mav) {
		this.pro.backController("GC", mav);
		return mav;
	}
//	@RequestMapping(value="/getCateDetail", method = RequestMethod.POST)
//	public ModelAndView getCateDetail(ModelAndView mav, @ModelAttribute CategoriesBean cate) {
//		mav.addObject("cate", cate);
//		this.pro.backController("CD", mav);
//		return mav;
//	}
	
	@RequestMapping(value="/testImage", method = RequestMethod.POST)
	public String testImage(ModelAndView mav, @ModelAttribute ImgBean img) {
//		String path = "resources/img/"+img.getImg();
//		img.setImg(path);
//		mav.addObject("img", img.getImg());
//		mav.setViewName("imgT");
		//this.auth.backController("A1", mav);
		return "imgT";
	}
	
	@RequestMapping(value="/kgkg", method = RequestMethod.POST)
	public String kgkg(ModelAndView mav, @ModelAttribute ImgBean img) {
//		String path = "resources/img/"+img.getImg();
//		img.setImg(path);
//		mav.addObject("img", img.getImg());
//		mav.setViewName("imgT");
		//this.auth.backController("A1", mav);
		return "kgkg";
	}
	
	@RequestMapping(value="/product", method = RequestMethod.POST)
	public ModelAndView product(ModelAndView mav, @ModelAttribute ProductsBean product) {
		mav.addObject("product", product);
		this.pro.backController("P", mav);
		return mav;
	}
	
	@RequestMapping(value="/afterAdd", method = RequestMethod.POST)
	public ModelAndView afterAdd(ModelAndView mav, @ModelAttribute ImgBean img) {
		this.pro.backController("AA", mav);
		return mav;
	}
	
	@RequestMapping(value="/logOut", method = RequestMethod.GET)
	public ModelAndView logOut(ModelAndView mav) {
		this.auth.backController("LO", mav);
		return mav;
	}
	
	@RequestMapping(value="/moveCart", method = RequestMethod.POST)
	public ModelAndView cart(ModelAndView mav) {
		cart.backController("C", mav);
		return mav;
	}
	
	@RequestMapping(value="/changeInfo", method = RequestMethod.POST)
	public ModelAndView changeInfo(ModelAndView mav) {
		auth.backController("CI", mav);
		return mav;
	}
	
	@RequestMapping(value="/changeProduct", method = RequestMethod.POST)
	public ModelAndView changeProduct(ModelAndView mav) {
		this.pro.backController("GCP", mav);
		return mav;
	}
	
	@RequestMapping(value="/cp", method = RequestMethod.POST)
	public ModelAndView cp(ModelAndView mav) {
		UserBean user = (UserBean) this.auth.session.getAttribute("userInfo");
		mav.addObject("user", user);
		this.auth.backController("CP", mav);
		return mav;
	}
	
	@RequestMapping(value="/searchProduct", method = RequestMethod.POST)
	public ModelAndView searchProduct(ModelAndView mav, @ModelAttribute ProductsBean product) {
		mav.addObject("product", product);
		this.pro.backController("SP", mav);
		return mav;
	}
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView pageTest(ModelAndView mav, @ModelAttribute ProductsBean product) {
		this.pro.backController("GPC", mav);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping(value="/goLogo", method = RequestMethod.GET)
	public ModelAndView goLogo(ModelAndView mav, @ModelAttribute ProductsBean product) {
		this.pro.backController("GPC", mav);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping(value="/afterPage", method = RequestMethod.GET)
	public ModelAndView afterPage(ModelAndView mav) {
		UserBean user = (UserBean) this.auth.session.getAttribute("userInfo");
		mav.addObject("user", user);
		this.auth.backController("WL", mav);
		return mav;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView mav, @ModelAttribute ProductsBean product) {
		this.pro.backController("GPC", mav);
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value="/afterNaverLogin", method = RequestMethod.GET)
	public ModelAndView afterNaverLogin(ModelAndView mav, @ModelAttribute UserBean user) {
		mav.addObject("user", user);
		auth.backController("NL", mav);
		return mav;
	}
	
	@RequestMapping(value="/showProductNone", method = RequestMethod.GET)
	public ModelAndView showProductNone(ModelAndView mav, @ModelAttribute ProductsBean product) {
		mav.addObject("product", product);
		pro.backController("SPN", mav);
		return mav;
	}
	@RequestMapping(value="/showProduct", method = RequestMethod.POST)
	public ModelAndView showProduct(ModelAndView mav, @ModelAttribute ProductsBean product) {
		mav.addObject("product", product);
		pro.backController("SPU", mav);
		return mav;
	}
	
	@RequestMapping(value="/modifyAfter", method = RequestMethod.POST)
	public ModelAndView modifyAfter(ModelAndView mav, @ModelAttribute ProductsBean product) {
		this.auth.backController("MA", mav);
		return mav;
	}
	
	@RequestMapping(value="/slid", method = RequestMethod.GET)
	public String slid(ModelAndView mav, @ModelAttribute ProductsBean product) {
		return "slide";
	}
	
	@RequestMapping(value="/findId", method = RequestMethod.GET)
	public String findId(ModelAndView mav, @ModelAttribute ProductsBean product) {
		return "findId";
	}
	
	@RequestMapping(value="/findPw", method = RequestMethod.POST)
	public String findPw(ModelAndView mav, @ModelAttribute ProductsBean product) {
		return "findPw";
	}
	
	@RequestMapping(value="/testJstl", method = RequestMethod.GET)
	public ModelAndView testJstl(ModelAndView mav, @ModelAttribute CategoriesDetailBean c) {
		mav.addObject("c", c);
		mav.setViewName("testJstl");
		return mav;
	}
	
	@RequestMapping(value="/testJstl2", method = RequestMethod.GET)
	public String testJstl2(ModelAndView mav, @ModelAttribute ProductsBean product) {
		return "testJstl2";
	}
	
	@RequestMapping(value="/cateDetailPage", method = RequestMethod.GET)
	public String cateDetailPage(ModelAndView mav, @ModelAttribute ProductsBean product) {
		return "cateDetailPage";
	}
	
	@RequestMapping(value="/cartPage", method = RequestMethod.POST)
	public ModelAndView cartPage(ModelAndView mav, @ModelAttribute ProductsBean product) {
		cart.backController("CP", mav);
		return mav;
	}
	
	@RequestMapping(value="/wishPage", method = RequestMethod.POST)
	public ModelAndView wishPage(ModelAndView mav, @ModelAttribute ProductsBean product) {
		wish.backController("WP", mav);
		return mav;
	}
	
	@RequestMapping(value="/changeCartCount", method = RequestMethod.POST)
	public ModelAndView changeCartCount(ModelAndView mav, @ModelAttribute ProductsBean product) {
		System.out.println(product);
		mav.addObject("product", product);
		cart.backController("CCC", mav);
		return mav;
	}
	
	@RequestMapping(value="/findIdResult", method = RequestMethod.GET)
	public ModelAndView findIdResult(ModelAndView mav, @ModelAttribute UserBean user) {
		mav.addObject("user", user);
		auth.backController("FI", mav);
		return mav;
	}
	@RequestMapping(value="/findPwResult", method = RequestMethod.GET)
	public ModelAndView findPwResult(ModelAndView mav, @ModelAttribute UserBean user) {
		mav.addObject("user", user);
		auth.backController("FP", mav);
		return mav;
	}
	
	@RequestMapping(value="/getProductDetailPage", method = RequestMethod.GET)
	public ModelAndView getProductDetailPage(ModelAndView mav, @ModelAttribute CategoriesBean cate, @ModelAttribute CategoriesDetailBean cd, @ModelAttribute PagingBean paging) {
		String type = new String();
		if(paging.getPageNum() == 0) {
			paging.setPageNum(1);
		}
		if(cate.getCateCode() == null) {
			type = "cd";
			mav.addObject("cd", cd);
		}else {
			type = "cate";
			mav.addObject("cate", cate);
		}
		mav.addObject("pageNum", paging);
		mav.addObject("type", type);
		pro.backController("GPD", mav);
		return mav;
	}
	
	@RequestMapping("/kakaoTest")
	public String home(@RequestParam(value = "code", required = false) String code) throws Exception{
	    System.out.println("#########" + code);
	    return "kakaoTest";
	}
	
	@RequestMapping(value="/callback", method= RequestMethod.GET)
	public String callback() {
		return "callback";
	}
	@RequestMapping(value="/naverTest", method= RequestMethod.GET)
    public String naverTest() {
        return "naverTest";
    }
	
	@RequestMapping(value="/modifyUserInfo", method = RequestMethod.POST)
	public ModelAndView modifyUserInfo(ModelAndView mav, @ModelAttribute UserBean user) {
		auth.backController("MUI", mav);
		return mav;
	}
	
	@RequestMapping(value="/couponPage", method = RequestMethod.POST)
	public ModelAndView couponPage(ModelAndView mav, @ModelAttribute UserBean user) {
		coupon.backController("couponPage", mav);
		return mav;
	}
	
	@RequestMapping(value="/buyOrderPage", method = RequestMethod.POST)
	public ModelAndView buyOrderPage(ModelAndView mav, @ModelAttribute ProductsBean product) {
		mav.addObject("product", product);
		pro.backController("BOP", mav);
		return mav;
	}
	
	@RequestMapping(value="/orderViewPage", method = RequestMethod.POST)
	public ModelAndView orderViewPage(ModelAndView mav, @ModelAttribute PagingBean paging, @ModelAttribute OrderBean order) {
		if(order.getOrderStatus() == null || order.getOrderStatus().equals("")) {
			order.setOrderStatus("B");
		}
		mav.addObject("pageNum", paging);
		mav.addObject("order", order);
		this.order.backController("OVP", mav);
		return mav;
	}
	
}
