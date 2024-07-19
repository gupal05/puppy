package com.icia.sec.services.admin_report;

import java.time.LocalDate;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.icia.sec.beans.OrderBean;
import com.icia.sec.beans.ProductsBean;
import com.icia.sec.utils.SimpleTransactionManager;
import com.icia.sec.utils.TransactionAssistant;

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
		case "AR":
			this.adminReport(mav);
			break;
		case "ARDC":
			this.adminReportDay_calendar(mav);
			break;
		}
	}
	
	private void adminReportDay_calendar(ModelAndView mav) {
		this.tranManager = this.getTransaction(true);
		List<OrderBean> orderList = new ArrayList<OrderBean>();
		ArrayList<String> date = new ArrayList<String>();
		ArrayList<Integer> price = new ArrayList<Integer>();
		ArrayList<Integer> margin = new ArrayList<Integer>();
		ArrayList<String> uniqueDate = null;
		int count = 0;
		try {
			this.tranManager.tranStart();
			orderList = this.sqlSession.selectList("getOrderInfo_admin");
			for(int i=0; i<orderList.size(); i++) {
				if(i != 0) {
					if(orderList.get(i).getOrderDate().equals(orderList.get(i-1).getOrderDate())) {
						continue;
					}else {
						count++;
						date.add(orderList.get(i).getOrderDate());
					}
				}else {
					count++;
					date.add(orderList.get(i).getOrderDate());
				}
			}
			Set<String> dateSet = new HashSet<>(date);
			uniqueDate = new ArrayList<>(dateSet);
			System.out.println(uniqueDate);
			for(int j=0; j<uniqueDate.size(); j++) {
				String d = new String();
				int p = 0;
				int c = 0;
				d = uniqueDate.get(j);
				p = this.sqlSession.selectOne("getOrderTotalPrice_admin", d);
				c = this.sqlSession.selectOne("getOrderCount_admin", d);
				p = (p-(3000*c));
				price.add(p);
			}
			System.out.println(price);
			for(int n=0; n<price.size(); n++) {
				String d = new String();
				List<ProductsBean> pro = new ArrayList<ProductsBean>();
				d = uniqueDate.get(n);
				pro = this.sqlSession.selectList("getMargin_admin", d);
				int total = 0;
				for(int a=0; a<pro.size(); a++) {
					int totalB = Integer.parseInt(pro.get(a).getProductsMargin()) * pro.get(a).getProductsCount();
					total += totalB;
				}
				margin.add(total);
			}
			System.out.println(margin);
			for(int c=0; c<uniqueDate.size(); c++) {
				String dateFmt = new String();
				dateFmt = "20"+uniqueDate.get(c);
				String convertedDate = "'"+dateFmt.replace("/", "-")+"'";
				uniqueDate.set(c, convertedDate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			String priceString = price.stream()
                    .map(String::valueOf)
                    .collect(Collectors.joining(","));
			String marginString = margin.stream()
					.map(String::valueOf)
					.collect(Collectors.joining(","));
			//mav.addObject("date",  "[" + String.join(",", date) + "]");
			mav.addObject("date",  uniqueDate);
			//mav.addObject("price", "[" + priceString + "]");
			mav.addObject("price", price);
//			mav.addObject("margin", "[" + marginString + "]");
			mav.addObject("margin", margin);
		}
	}
	
	/*일별 매출분석 차트로 표현 하는 부분*/
	private void adminReport(ModelAndView mav) {
		String type = (String) mav.getModel().get("reportType");
		String nowYearStr = (String) mav.getModel().get("nowYear");
		String changeYearType = (String) mav.getModel().get("changeYearType");
		ArrayList<String> date = new ArrayList<String>();
		ArrayList<Integer> data = new ArrayList<Integer>();
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			if(type.equals("month")) {
				int currentYear = 0;
				if(nowYearStr == null) {
					LocalDate today = LocalDate.now();
					currentYear = today.getYear();
				}else {
					int nowYear = Integer.parseInt(nowYearStr);
					if(changeYearType.equals("pre")) {
						nowYear = nowYear-1;
					}else if(changeYearType.equals("next")){
						nowYear = nowYear+1;
					}
					currentYear = nowYear;
				}
				for(int a=1; a<=12; a++) {
					date.add("'"+a+"월"+"'");
				}
				data = getSalesData(currentYear, date);
				System.out.println(date);
				System.out.println(data);
				mav.addObject("data", data);
				mav.addObject("date", date);
				mav.addObject("year", currentYear);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		}
	}
	
	private ArrayList<Integer> getSalesData(int year, ArrayList<String> month){
		ArrayList<Integer> data = new ArrayList<Integer>();
		String[] date = new String[month.size()];
		this.tranManager = this.getTransaction(true);
		try {
			this.tranManager.tranStart();
			for(int a=0; a<date.length; a++) {
				if(month.get(a).length() == 4) {
					String m = month.get(a).replace("'", "");
					String result = m.replace("월", "");
					date[a] = (year-2000)+"/0"+result;
				}else {
					String m = month.get(a).replace("'", "");
					String result = m.replace("월", "");
					date[a] = (year-2000)+"/"+result;
				}
				String d = date[a];
				int c = this.sqlSession.selectOne("getSalesDateOfMonthCount", d);
				if(this.sqlSession.selectOne("getSalesDateOfMonth", d) == null) {
					data.add(0);
				}else {
					int p = this.sqlSession.selectOne("getSalesDateOfMonth", d);
					data.add(p - (3000*c));
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
//	private int[] getDateData(int month, String[] days, int year) {
//		int[] data = new int[days.length];
//		year -= 2000;
//		this.tranManager = this.getTransaction(true);
//		try {
//			this.tranManager.tranStart();
//			for(int i=0; i<days.length; i++) {
//				String date = new String();
//				if(days[i].length() != 2) {
//					date = year+"/"+"0"+month+"/"+"0"+days[i];
//				}else {
//					date = year+"/"+"0"+month+"/"+days[i];
//				}
//				if(this.convertToBoolean(this.sqlSession.selectOne("getOrderDateCount", date))) {
//					List<Integer> price = this.sqlSession.selectList("getOrderPriceDateList", date);
//					for(int j=0; j<price.size(); j++) {
//						data[i] += (price.get(j)-3000);
//					}
//				}else {
//					data[i] = 0;
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return data;
//	}
//	
//	private int getMarginPrice(String testDate) {
//		int margin = 0;
//		List<OrderBean> orList = new ArrayList<OrderBean>();
//		this.tranManager = this.getTransaction(true);
//		try {
//			orList = this.sqlSession.selectList("getOrderCode_report", testDate);
//			for(int i=0; i<orList.size(); i++) {
//				List<ProductsBean> proList = new ArrayList<ProductsBean>();
//				proList = this.sqlSession.selectList("getPuCode_report", orList.get(i));
//				for(int j=0; j<proList.size(); j++) {
//					margin += (Integer.parseInt(proList.get(j).getProductsMargin()) * proList.get(j).getProductsCount());
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return margin;
//	}
	/*일별 매출분석 차트로 표현 하는 부분*/
	
	/* boolean 변환 */
	protected boolean convertToBoolean(int value) {
		return value > 0 ? true : false;
	}

}
