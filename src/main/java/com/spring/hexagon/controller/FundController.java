package com.spring.hexagon.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.hexagon.service.FundServiceImpl;

@Controller
public class FundController {
	
	private static final Logger logger = LoggerFactory.getLogger(FundController.class);
	
	@Autowired
	FundServiceImpl fservice;
	
	/*------------------------------------------------------펀드------------------------------------------------------------------*/
	//펀드 상품 리스트 
	@RequestMapping("/fundList.gu")
	public String fundList(HttpServletRequest req, Model model) {
		logger.info("펀드상품 목록으로 이동합니다.");
		
		fservice.fundList(req, model);
		
		return "fund/fundList";
	}
	
	//펀드 상세 조회
	@RequestMapping("/fundDetail.gu")
	public String fundDetail(HttpServletRequest req, Model model) {
		logger.info("펀드 상세페이지로 이동합니다.");
		
		fservice.fundDetailView(req, model);
		
		return "fund/fundDetail";
	}
	
	//투자원금입력 페이지
	@RequestMapping("/buyFund.me")
	public String buyFund(HttpServletRequest req, Model model) {
		logger.info("투자원금입력 페이지로 이동합니다.");
		
		fservice.fundBuy(req, model);
		
		return "fund/buyFund";
	}
	
	//펀드 구매 동의 페이지
	@RequestMapping("/buyConfirm.me")
	public String buyFundDetail(HttpServletRequest req, Model model) {
		logger.info("펀드 구매 동의 페이지로 이동합니다,");
		
		fservice.buyConfirm(req, model);
		
		return "fund/buyConfirm";
	}
	
	//펀드 구매처리 마지막 페이지
	@RequestMapping("/buyFundPro.me")
	public String buyFundPro() {
		logger.info("펀드 구매처리 마지막 페이지");
		
		return "fund/buyFundPro";
	}
}
