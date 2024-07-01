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
public class OrderBean {
	private String orderCode;
	private String orderDate;
	private String orderComent; // 요청사항
	private String orderRecipient; // 수령인//
	private String orderAddr; // 수령인//
	private String orderAddrDetail; // 수령인//
	private String orderZip; // 수령인//
	private String orderPhone; // 수령인//
	private String orderStatus; // 주문 상태
	private String orderPayment; // 결제 방식
	private int orderTotalPrice;
	private int orderDiscount;
	
	private ArrayList<ProductsBean> product;
}
