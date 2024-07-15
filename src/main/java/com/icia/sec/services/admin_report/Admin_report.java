package com.icia.sec.services.admin_report;

import java.time.LocalDate;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;

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
public class Admin_report extends TransactionAssistant {
	@Autowired
	private SimpleTransactionManager tranManager;
	@Autowired
	public HttpSession session;
	
	public Admin_report() {
	}

	public void backController(String serviceCode, Model model) {
		switch (serviceCode) {
//		case "MUIA":
//			this.modifyUserInfoAjax(model);
//			break;
		}
	}

	public void backController(String serviceCode, ModelAndView mav) {
		switch (serviceCode) {
		case "ARD":
			this.adminReportDay(mav);
			break;
		}
	}
	
	private void adminReportDay(ModelAndView mav) {
		this.tranManager = this.getTransaction(true);
		String changeMonthStr = (String) mav.getModel().get("changeMonth");
		String nowMonthStr = (String) mav.getModel().get("nowMonth");
		int nowMonth = 0;
		int changeMonth = Integer.parseInt(changeMonthStr);
		int currentMonth = 0;
		try {
			this.tranManager.tranStart();
			LocalDate today = LocalDate.now();
			int year = today.getYear();
			if(nowMonthStr.equals("now")) {
	        	currentMonth = today.getMonthValue();
	        }else {
	        	nowMonth = Integer.parseInt(nowMonthStr);
	        	currentMonth = nowMonth+changeMonth;
	        }
			
			YearMonth yearMonth = YearMonth.of(today.getYear(), currentMonth);
	        int daysInMonth = yearMonth.lengthOfMonth();
	        String[] days = new String[daysInMonth];

	        // 배열에 날짜를 저장
	        for (int i = 1; i <= daysInMonth; i++) {
	            days[i - 1] = String.valueOf(i);
	        }
	        int[] data = getDateData(currentMonth, days, year);
	        String dataString = Arrays.stream(data)
                    .mapToObj(String::valueOf)
                    .collect(Collectors.joining(","));
			mav.addObject("date", "[" + String.join(",", days) + "]");
			mav.addObject("priceData", "[" + dataString + "]");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			mav.addObject("day_month", currentMonth);
		}
	}
	
	private int[] getDateData(int month, String[] days, int year) {
		int[] data = new int[days.length];
		year -= 2000;
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			for(int i=0; i<days.length; i++) {
				String date = new String();
				if(days[i].length() != 2) {
					date = year+"/"+"0"+month+"/"+"0"+days[i];
				}else {
					date = year+"/"+"0"+month+"/"+days[i];
				}
				if(this.convertToBoolean(this.sqlSession.selectOne("getOrderDateCount", date))) {
					List<Integer> price = this.sqlSession.selectList("getOrderPriceDateList", date);
					for(int j=0; j<price.size(); j++) {
						data[i] += price.get(j);
					}
				}else {
					data[i] = 0;
				}
				System.out.println(date+"   &   "+data[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
	
	/* boolean 변환 */
	protected boolean convertToBoolean(int value) {
		return value > 0 ? true : false;
	}

}
