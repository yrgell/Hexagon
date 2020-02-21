package com.spring.hexagon.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hexagon.service.GuestService;
import com.spring.hexagon.service.HostService;

@Controller
public class HostController {
	
	@Autowired
	HostService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	//gu 차후 ho로 수정
	
	@RequestMapping("/dashboard.gu") //호스트 메인
	public String main(HttpServletRequest req, Model model) {
		logger.info("dashboard.gu");
		return "host/dashboard";
	}
	
	@RequestMapping("/statistic.gu") //통계
	public String statistic(HttpServletRequest req, Model model) {
		logger.info("statistic.gu");
		return "host/statistic";
	}
	@RequestMapping("/board.gu") //게시판관리
	public String board(HttpServletRequest req, Model model) {
		logger.info("board.gu");
		return "host/board";
	}
	
	@RequestMapping("/user.gu") //회원관리
	public String user(HttpServletRequest req, Model model) throws Exception{
		logger.info("user.gu");
		return "host/user";
	}
	

	@RequestMapping("/user_search.gu") //회원관리
	public @ResponseBody String userSearch(HttpServletRequest req, Model model)throws Exception {
		logger.info("user_search.gu");
		service.userList(req, model);
		return "host/user_search";
	}
	
	@RequestMapping("/product_fund.gu") //펀드 상품 관리
	public String product_fund(HttpServletRequest req, Model model) {
		logger.info("product_fund.gu");
		return "host/product_fund";
	}
	
	@RequestMapping("/product_stock.gu") //주식 상품 관리
	public String product_stock(HttpServletRequest req, Model model) {
		logger.info("product_stock.gu");
		return "host/product_stock";
	}
	
	@RequestMapping("/club.gu") //계모임 관리
	public String club(HttpServletRequest req, Model model) {
		logger.info("club.gu");
		return "host/club";
	}
	
}
