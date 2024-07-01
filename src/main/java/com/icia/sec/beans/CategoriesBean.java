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
public class CategoriesBean {
	private String cateCode;
	private String cateName;
	private String message;
	
	private ArrayList<CategoriesDetailBean> cdList;
	private ArrayList<PagingBean> paging;
}
