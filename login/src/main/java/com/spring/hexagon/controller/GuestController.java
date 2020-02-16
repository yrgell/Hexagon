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
public class GuestController {
	
	@Autowired
	GuestService gservice;
	
	private static final Logger logger = LoggerFactory.getLogger(GuestController.class);
	
	@RequestMapping("/")
	public String main(HttpServletRequest req, Model model) {
		logger.info("main.gu");
		return "sign/main";
	}
	
	//회원가입페이지
	@RequestMapping("/join.gu")
	public String join(HttpServletRequest req, Model model) {
		logger.info("/join.gu");
		return "sign/join";
	}

	//회원가입
	@RequestMapping("/joinPro.gu")
	public String joinPro(HttpServletRequest req, Model model) {
		logger.info("/joinPro.gu");
		gservice.joinPro(req, model);
		return "sign/login";
	}
	//로그인
		@RequestMapping("/login.gu")
		public String login(HttpServletRequest req, Model model) {
			logger.info("/login.gu");
			return "sign/login";
		}
	
//		//로그인처리
//		@RequestMapping("/loginPro.gu")
//		public String loginPro(HttpServletRequest req, Model model) {
//			logger.info("/loginPro.gu");
//			return "sign/main";
//		}

}
