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
public class CouponBean {
	private String couponCode;
	private String couponBenefit;
	private String couponStartDate;
	private String couponEndDate;
	private String couponName;
	private String couponApply;
	private int couponPrice;
	private String couponIs;
	private String message;
}
