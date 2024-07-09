package com.icia.sec.beans;

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class UserBean {
	private String userCode;
	private String userName;
	private String userDate;
	private String userId;
	private String userPw;
	private String userAddr;
	private String userZip;
	private String userAddrDetail;
	private String userPhone;
	private String userEmail;
	private String userGrade;
	private String message;
	private String userAcc;
	private int userVisit;
	private String userLogType;
	private String page;
	private int num;
	
	private ArrayList<OrderBean> order;
	private ArrayList<CouponBean> coupon;
	private ArrayList<PagingBean> paging;
}
