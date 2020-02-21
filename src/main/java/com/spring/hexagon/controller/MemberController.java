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

import com.spring.hexagon.service.GuestService;

@Controller
public class MemberController {
	
	@Autowired
	GuestService gservice;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//마이페이지 접속하기
	@RequestMapping("/my.me")
	public String main(HttpServletRequest req, Model model) {
		logger.info("/my.me");
		return "member/my";
	}
	@RequestMapping("/mypage.me")
	public String mypage() {
		logger.info("마이페이지로 이동합니다.");
		
		return "/guest/mypage";
	}
	
	@RequestMapping("/personalInfo.me")
	public String personalInfo() {
		logger.info("정보관리로 이동합니다.");
		
		return "/guest/personalInfo";
	}
	
	@RequestMapping("/mygathering.me")
	public String mygathering() {
		logger.info("정보관리로 이동합니다.");
		
		return "/guest/personalInfo";
	}
	
}
