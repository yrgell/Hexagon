package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface StockService {
	
	//주식 목록 페이지
	public void stockList(HttpServletRequest req, Model model);
	//주식 상세 페이지
	public void stockDetail(HttpServletRequest req, Model model);
}
