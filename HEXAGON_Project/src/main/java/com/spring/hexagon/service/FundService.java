package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface FundService {
	
	// 펀드목록
	public void fundList(HttpServletRequest req, Model model);
	
	// 펀드상세페이지
	public void fundDetailView(HttpServletRequest req, Model model);
	
	// 펀드투자하기
	public void getFundInfoBuy(HttpServletRequest req, Model model);
	
	// 투자상세페이지
	public void getFundMoneyInfo(HttpServletRequest req, Model model);
	
	// 펀드 구매 처리 페이지
	public void buyFundPro(HttpServletRequest req, Model model);
		
	//맞춤투자 입력
	public void fundcustomisePro(HttpServletRequest req, Model model);
}
