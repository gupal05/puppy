package com.icia.sec;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.icia.sec.beans.CategoriesBean;
import com.icia.sec.beans.ImgBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.beans.UserBean;
import com.icia.sec.services.auth.Authentication;
import com.icia.sec.services.cart.Cart;
import com.icia.sec.services.product.Product;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class kakaoController {
	@Autowired
	private Authentication auth;
	
	@RequestMapping(value = "/login/getKakaoAuthUrl")
	public @ResponseBody String getKakaoAuthUrl(
			HttpServletRequest request) throws Exception {
		String reqUrl = 
				"https://kauth.kakao.com/oauth/authorize"
				/* client id = rest api 주소입력 */
				+ "?client_id=44b5a80b31fd80525b514d53134ab00b"
				+ "&redirect_uri=http://localhost:85/auth_kakao"
				+ "&response_type=code";
	
		return reqUrl;
	}
	
	// 카카오 연동정보 조회
		@RequestMapping(value = "/auth_kakao")
		public ModelAndView oauthKakao(
				@RequestParam(value = "code", required = false) String code
				, ModelAndView mav, HttpSession session) throws Exception {

	        String access_Token = getAccessToken(code);
	        UserBean user = new UserBean();
	        
	        
	        user = getUserInfo(access_Token);
	        
	    // JSONObject kakaoInfo =  new JSONObject(userInfo);
	       
	       session.setAttribute("access_Token", access_Token);
	       System.out.println("Session ="+session.getAttribute("access_Token"));
	       mav.addObject("user", user);
	       auth.backController("KL", mav);
	        return mav; //본인 원하는 경로 설정
		}
		
		//토큰발급
		public String getAccessToken (String authorize_code) {
	        String access_Token = "";
	        String refresh_Token = "";
	        String reqURL = "https://kauth.kakao.com/oauth/token";


	        try {
	            URL url = new URL(reqURL);

	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

	            //  URL연결은 입출력에 사용 될 수 있고, POST 혹은 PUT 요청을 하려면 setDoOutput을 true로 설정해야함.
	            conn.setRequestMethod("POST");
	            conn.setDoOutput(true);

	            //	POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
	            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
	            StringBuilder sb = new StringBuilder();
	            sb.append("grant_type=authorization_code");
	            sb.append("&client_id=44b5a80b31fd80525b514d53134ab00b");  //본인이 발급받은 key
	            sb.append("&redirect_uri=http://localhost:85/auth_kakao");     // 본인이 설정해 놓은 경로
	            sb.append("&code=" + authorize_code);
	            bw.write(sb.toString());
	            bw.flush();

	            //    결과 코드가 200이라면 성공
	            int responseCode = conn.getResponseCode();

	            //    요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
	            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            String line = "";
	            String result = "";

	            while ((line = br.readLine()) != null) {
	                result += line;
	            }

	            //    Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
	            JsonParser parser = new JsonParser();
	            JsonElement element = parser.parse(result);

	            access_Token = element.getAsJsonObject().get("access_token").getAsString();
	            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();


	            br.close();
	            bw.close();
	        } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }

	        return access_Token;
	    }
		
	    //유저정보조회
	    public UserBean getUserInfo (String access_Token) {

	        //    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
	        HashMap<String, Object> userInfo = new HashMap<String, Object>();
	        String reqURL = "https://kapi.kakao.com/v2/user/me";
	        UserBean user = null;
	        try {
	            URL url = new URL(reqURL);
	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	            conn.setRequestMethod("GET");

	            //    요청에 필요한 Header에 포함될 내용
	            conn.setRequestProperty("Authorization", "Bearer " + access_Token);

	            int responseCode = conn.getResponseCode();

	            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

	            String line = "";
	            String result = "";

	            while ((line = br.readLine()) != null) {
	                result += line;
	            }

	            JsonParser parser = new JsonParser();
	            JsonElement element = parser.parse(result);

	            JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
	            JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

	            
	            String Id = result.substring(6, 16)+"000";
	            System.out.println("아이디 : "+Id);
	            System.out.println(result);
	            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
	            System.out.println("닉네임 : "+nickname);
	            
	            user = new UserBean();
	            
	            user.setUserId(Id);
	            user.setUserCode(Id);
	            user.setUserName(nickname);
//	            userInfo.put("userId", Id);
//	            userInfo.put("accessToken", access_Token);
//	            userInfo.put("userNickname", nickname);
//	            userInfo.put("userEmail", email);
	            System.out.println(user);
	        } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }

			return user;
	    }
}
