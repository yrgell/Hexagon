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
	//아이디 중복확인
	@RequestMapping("/idconfirmChk.gu")
	public String idconfirmChk() {
		logger.info("아이디 중복확인으로 이동합니다.");
		
		return "sign/idconfirmChk";
	}

	//회원동의 약관
	@RequestMapping("/joinNext.gu")
	public String joinNext() {
		logger.info("회원가입 약관으로 이동합니다.");
		
		return "sign/joinNext";
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
	//아이디 찾기	
		@RequestMapping("/findId.gu")
		public String findId() {
			logger.info("아이디 찾기로 이동합니다.");
			
			return "sign/findId";
		}
	//비밀번호 찾기	
		@RequestMapping("/findPass.gu")
		public String findPass() {
			logger.info("비밀번호 찾기로 이동합니다.");
			
			return "sign/findPass";
		}	
//		//로그인처리
//		@RequestMapping("/loginPro.gu")
//		public String loginPro(HttpServletRequest req, Model model) {
//			logger.info("/loginPro.gu");
//			return "sign/main";
//		}
		
		/*상품 접속 관련*/
		
		@RequestMapping("/fundList.gu")
		public String fundList() {
			logger.info("펀드상품 목록으로 이동합니다.");
			
			return "/all/fundList";
		}
		
		@RequestMapping("/gatheringList.gu")
		public String gatheringList() {
			logger.info("계모임 목록으로 이동합니다.");
			
			return "/all/gatheringList";
		}
		
		/*게시판 접속 관련*/
		
		@RequestMapping("/getInterest.gu")
		public String getInterest() {
			logger.info("이율계산표로 이동합니다.");
			
			return "/all/getInterest";
		}
		@RequestMapping("/howtoFund.gu")
		public String howtoFund() {
			logger.info("투자상품 안내로 이동합니다.");
			
			return "/all/howtoFund";
		}
		
		@RequestMapping("/howtoGath.gu")
		public String howtoGath() {
			logger.info("기능사용 안내로 이동합니다.");
			
			return "/all/howtoGath";
		}
		
		@RequestMapping("/event.gu")
		public String event() {
			logger.info("이벤트 게시판으로 이동합니다.");
			
			return "/all/event";
		}
		
		@RequestMapping("/reviews.gu")
		public String reviews() {
			logger.info("후기 게시판으로 이동합니다.");
			
			return "/all/reviews";
		}
		
		@RequestMapping("/faq.gu")
		public String faq() {
			logger.info("F&Q 게시판으로 이동합니다.");
			
			return "/all/faq";
		}
		
		@RequestMapping("/personalQ.gu")
		public String personalQ() {
			logger.info("1:1 문의로 이동합니다.");
			
			return "/all/personalQ";
		}
		
		@RequestMapping("/notice.gu")
		public String notice() {
			logger.info("공지사항 게시판으로 이동합니다.");
			
			return "/all/notice";
		}
		
		///////////////////////////////////////////허용범위/.me(로그인한 사용자)//////////////////////////////////////////////
		
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
		public String personalInfo() {
			logger.info("정보관리로 이동합니다.");
			
			return "/guest/personalInfo";
		}
		@RequestMapping("/personalInfo.me")
		public String personalInfo() {
			logger.info("정보관리로 이동합니다.");
			
			return "/guest/personalInfo";
		}
		@RequestMapping("/personalInfo.me")
		public String personalInfo() {
			logger.info("정보관리로 이동합니다.");
			
			return "/guest/personalInfo";
		}
		@RequestMapping("/personalInfo.me")
		public String personalInfo() {
			logger.info("정보관리로 이동합니다.");
			
			return "/guest/personalInfo";
		}
	
}
