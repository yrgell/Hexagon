package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface FundService {
	
	// 펀드목록
	public void fundList(HttpServletRequest req, Model model);
	
	// 펀드상세페이지
	public void fundDetailView(HttpServletRequest req, Model model);
	
}
