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
public class HostController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	
	@RequestMapping("/dashboard.gu") //gu 차후 ho로 수정
	public String main(HttpServletRequest req, Model model) {
		logger.info("host.gu");
		return "sign/main";
	}
//	
//	@RequestMapping("/statistic.gu") //gu 차후 ho로 수정
//	public String main(HttpServletRequest req, Model model) {
//		logger.info("statistic.gu");
//		return "sign/main";
//	}
//	@RequestMapping("/dashboard.gu") //gu 차후 ho로 수정
//	public String main(HttpServletRequest req, Model model) {
//		logger.info("host.gu");
//		return "sign/main";
//	}
//	
//	@RequestMapping("/dashboard.gu") //gu 차후 ho로 수정
//	public String main(HttpServletRequest req, Model model) {
//		logger.info("host.gu");
//		return "sign/main";
//	}
//	@RequestMapping("/dashboard.gu") //gu 차후 ho로 수정
//	public String main(HttpServletRequest req, Model model) {
//		logger.info("host.gu");
//		return "sign/main";
//	}
	
}
