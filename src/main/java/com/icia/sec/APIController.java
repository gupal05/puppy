package com.icia.sec;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Session;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.icia.sec.beans.CategoriesBean;
import com.icia.sec.beans.CategoriesDetailBean;
import com.icia.sec.beans.CouponBean;
import com.icia.sec.beans.ImgBean;
import com.icia.sec.beans.MailAuthBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.services.auth.Authentication;
import com.icia.sec.services.cart.Cart;
import com.icia.sec.services.coupon.Coupon;
import com.icia.sec.services.order.Order;
import com.icia.sec.services.product.Product;
import com.icia.sec.services.wish.Wish;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class APIController {
	@Autowired
	private Authentication auth;
	@Autowired
	private Product pro;
	@Autowired
	private Cart cart;
	@Autowired
	private Order order;
	@Autowired
	private Coupon coupon;
	@Autowired
	private Wish wish;
	@Autowired
	JavaMailSenderImpl mailSender;
	
	
//	@RequestMapping(value = "/naver", method = {RequestMethod.GET})
//	public UserBean naverSave(Model model, @ModelAttribute UserBean user) {
//		model.addAttribute("user", user);
//		//auth.backController("API01", model);
//		// ajax에서 성공 결과에서 ok인지 no인지에 따라 다른 페이지에 갈 수 있게끔 result의 기본값을 "no"로 선언
//		return user;
//	}
	
	
	@PostMapping("dupIdCheck")
	public UserBean dupIdCheck(Model model, @ModelAttribute UserBean user) {
		model.addAttribute("user", user);
		this.auth.backController("J1", model);
		System.out.println(model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("dupMemberCheck")
	public UserBean dupMemberCheck(Model model, @ModelAttribute UserBean user) {
		model.addAttribute("user", user);
		this.auth.backController("J2", model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("joinMember")
	public UserBean joinMember(Model model, @ModelAttribute UserBean user) {
		model.addAttribute("user", user);
		this.auth.backController("J3", model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("login")
	public UserBean login(Model model, @ModelAttribute UserBean user) {
		model.addAttribute("user", user);
		this.auth.backController("L1", model);
		System.out.println((UserBean) model.getAttribute("user"));
		return (UserBean) model.getAttribute("user");
	}
	
//	@PostMapping("/upload")
//    public ImgBean handleFileUpload(@RequestParam("productImage") MultipartFile file) {
//		ImgBean img = new ImgBean();
//		String fileName = null;
//		String UPLOAD_DIRECTORY = "D:\\Dev\\project\\sts-workspace\\sec\\src\\main\\webapp\\resources\\img";
//		String message = null;
//        if (!file.isEmpty()) {
//            try {
//                // 업로드된 이미지 파일을 지정된 폴더에 저장합니다.
//                fileName = file.getOriginalFilename();
//                String filePath = UPLOAD_DIRECTORY + File.separator + fileName;
//                File dest = new File(filePath);
//                file.transferTo(dest);
//                message =  "이미지 업로드 성공: " + fileName;
//            } catch (IOException e) {
//            	message =  "이미지 업로드 실패: " + e.getMessage();
//            }
//        } else {
//        	message =  "업로드된 파일이 없습니다.";
//        img.setImg(fileName);
//        return img;
//    }
	
	@PostMapping("/upload")
	public ResponseEntity<?> uploadMultipleImages(@RequestPart("productImages") MultipartFile[] files, @ModelAttribute ImgBean img,Model model) {
		String UPLOAD_DIRECTORY = "D:\\Dev\\project\\sts-workspace\\sec\\src\\main\\webapp\\resources\\productImg";
        List<String> fileNames = new ArrayList<>();

        for (MultipartFile file : files) {
            String fileName = StringUtils.cleanPath(file.getOriginalFilename());
            try {
                String filePath = UPLOAD_DIRECTORY + File.separator + fileName;
                File dest = new File(filePath);
                file.transferTo(dest);
                fileNames.add(fileName);
            } catch (IOException e) {
                e.printStackTrace();
                return ResponseEntity.badRequest().body("이미지 업로드에 실패하였습니다.");
            }
        }
        model.addAttribute("imgType", img);
        model.addAttribute("file", fileNames);
        pro.backController("PA1", model);
        return ResponseEntity.ok("이미지 업로드 성공: " + fileNames);
    }
	
	@PostMapping("insProduct")
	public CategoriesBean insProduct(Model model, @ModelAttribute CategoriesBean cate, @ModelAttribute CategoriesDetailBean cateDetail, @ModelAttribute ProductsBean product) {
		ArrayList<ProductsBean> proList = new ArrayList<ProductsBean>();
		ArrayList<CategoriesDetailBean> cateList = new ArrayList<CategoriesDetailBean>();
		proList.add(product);
		cateDetail.setProductList(proList);
		cateList.add(cateDetail);
		cate.setCdList(cateList);
		model.addAttribute("cate", cate);
		this.pro.backController("PA2", model);
		return (CategoriesBean) model.getAttribute("cate");
	}
	
	@PostMapping("getCateDetail")
	public List<CategoriesDetailBean> getCateDetail(Model model, @ModelAttribute CategoriesBean cate) {
		model.addAttribute("cate", cate);
		this.pro.backController("CD", model);
		System.out.println(model.getAttribute("cateList"));
		return (List<CategoriesDetailBean>) model.getAttribute("cateList");
	}
	
	@PostMapping("addLast")
	public ProductsBean addLast(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("product", product);
		this.pro.backController("AE", model);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("addCart")
	public ProductsBean addCart(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("product", product);
		this.pro.backController("AC", model);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("insCart")
	public ProductsBean insCart(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("pro", product);
		this.cart.backController("IC", model);
		return (ProductsBean) model.getAttribute("pro");
	}
	
	@PostMapping("insWish")
	public ProductsBean insWish(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("pro", product);
		this.wish.backController("IW", model);
		return (ProductsBean) model.getAttribute("pro");
	}
	
	@PostMapping("changeCount")
	public ProductsBean changeCount(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("product", product);
		this.cart.backController("CC1", model);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("deleteCartAll")
	public UserBean deleteCartAll(Model model, @ModelAttribute UserBean user) {
		this.cart.backController("DCA", model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("delCart")
	public ProductsBean delCart(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("product", product);
		this.cart.backController("DC", model);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("delProduct")
	public ProductsBean delProduct(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("product", product);
		this.cart.backController("DCP", model);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("isNowPw")
	public UserBean isNowPw(Model model, @ModelAttribute UserBean user) {
		model.addAttribute("user", user);
		this.auth.backController("IP", model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("updateUserPw")
	public UserBean updateUserPw(Model model, @ModelAttribute UserBean user) {
		model.addAttribute("user", user);
		this.auth.backController("UU", model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("upCartInfo")
	public ProductsBean upCartInfo(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("pro", product);
		this.cart.backController("UCI", model);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("delCartProdut")
	public ProductsBean delCartProdut(Model model, @ModelAttribute ProductsBean product) {
		System.out.println(product);
		model.addAttribute("pro", product);
		this.cart.backController("DCP", model);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("getProductName")
	public List<ProductsBean> getProductName(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("product", product);
		this.pro.backController("GN", model);
		return (List<ProductsBean>) model.getAttribute("product");
	}
	
	@PostMapping("getProName")
	public List<ProductsBean> getProName(Model model, @ModelAttribute CategoriesDetailBean cateDetail) {
		model.addAttribute("cateDetail", cateDetail);
		this.pro.backController("GN", model);
		return (List<ProductsBean>) model.getAttribute("product");
	}
	
	@PostMapping("getProductList")
	public List<ProductsBean> getProductList(Model model, @ModelAttribute ProductsBean product) {
		model.addAttribute("product", product);
		this.pro.backController("GPL", model);
		return (List<ProductsBean>) model.getAttribute("product");
	}
	
	@PostMapping("insSessionCart")
	public ProductsBean insSessionCart(Model model, @ModelAttribute ProductsBean product) {
		System.out.println(product);
		return (ProductsBean) model.getAttribute("product");
	}
	
	@PostMapping("isPassword")
	public UserBean isPassword(Model model, @ModelAttribute UserBean user) {
		model.addAttribute("user", user);
		this.auth.backController("IP", model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("modifyUserInfoAjax")
	public UserBean modifyUserInfoAjax(Model model, @ModelAttribute UserBean user) {
		System.out.println(user);
		model.addAttribute("user", user);
		this.auth.backController("MUIA", model);
		return (UserBean) model.getAttribute("user");
	}
	
	//이메일 인증
	@PostMapping("/EmailAuth")
	public MailAuthBean emailAuth(@ModelAttribute UserBean email) {
		MailAuthBean mailCode = new MailAuthBean();
		
		//난수의 범위 111111 ~ 999999 (6자리 난수)
		Random random = new Random();
		int checkNum = random.nextInt(888888)+111111;
		
		//이메일 보낼 양식
		String setFrom = "dudgh2349@naver.com";
 //2단계 인증 x, 메일 설정에서 POP/IMAP 사용 설정에서 POP/SMTP 사용함으로 설정o
		String toMail = email.getUserEmail();
		String title = "PUPPY 인증 이메일 입니다.";
		String content = "인증 코드는 " + checkNum + " 입니다." +
						 "<br>" +
						 "해당 인증 코드를 인증 코드 확인란에 기입하여 주세요.";
		
		try {
			MimeMessage message = mailSender.createMimeMessage(); //Spring에서 제공하는 mail API
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content, true);
            mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		auth.session.setAttribute("mailCode", checkNum);
		mailCode.setMailCode(checkNum);
		return mailCode;
	}
	
	@PostMapping("mailCode")
	public MailAuthBean mailCode(Model model, @ModelAttribute MailAuthBean mail) {
		int code = (int) auth.session.getAttribute("mailCode");
		if(mail.getMailCode() == code) {
			mail.setMessage("인증 되었습니다.");
			auth.session.removeAttribute("mailCode");
		}else {
			mail.setMessage("인증번호를 다시 확인하세요.");
		}
		return mail;
	}
	
	@PostMapping("order")
	public UserBean orderProduct(Model model, @ModelAttribute UserBean user) {
		UserBean userInfo = (UserBean) auth.session.getAttribute("userInfo");
		userInfo.setCoupon(null);
		if(user.getCoupon() != null) {
			userInfo.setCoupon(user.getCoupon());
			userInfo.setOrder(user.getOrder());
			userInfo.setUserAcc(user.getUserAcc());
		}else {
			userInfo.setOrder(user.getOrder());
			userInfo.setUserAcc(user.getUserAcc());
		}
		System.out.println("imp 확인 : "+userInfo);
		model.addAttribute("user", userInfo);
		this.order.backController("OP", model);
		return (UserBean) model.getAttribute("user");
	}
	
	@PostMapping("isCouponNum")
	public UserBean isCouponNum(Model model, @ModelAttribute CouponBean cou) {
		model.addAttribute("cou", cou);
		this.coupon.backController("ISCU", model);
		return (UserBean) model.getAttribute("user");
	}
	
}