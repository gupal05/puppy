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
public class ProductsBean {
	private String productsCode;
	private String productsName; //req
	private int productsCount; //현재 수량 sel
	//private String productsContent;
	private String productsDate; //입고 날짜 
	private int productsSellCount; //판매 수량 sel
	//private String productsImg;
	private String productsFirst; //입고 req
	//price table
	private String productsPrice; //req
	private String productsMargin; //price - orgin
	private String productsOrigin; // req
	private String message;
	
	private ArrayList<String> sessionCode;
	private ArrayList<ImgBean> imgList;
	private ArrayList<CartBean> cartList;
}
