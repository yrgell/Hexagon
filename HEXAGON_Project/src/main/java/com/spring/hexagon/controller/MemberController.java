package com.spring.hexagon.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		public String mypage() {
			logger.info("마이페이지로 이동합니다.");
			
			return "member/mypage";
		}
	
		//로그아웃 처리
		@RequestMapping("/logout.me")
		public String logout(HttpSession session) {
			logger.info("url ==> 로그아웃합니다" );
			session.invalidate();
			return "redirect:/";
		}
		
		//개인 정보 수정하기1 (비밀번호 확인)
		@RequestMapping("/myPwdCheck.me")
		public String myPwdCheck() {
			logger.info("개인정보 수정 전 비밀번호를 확인합니다.");
			return "member/pwdCheck";
		}
		
		//개인 정보 수정하기2 (수정 전 내역 띄우기)
		@RequestMapping("/myInfo.me")
		public String myInfo() {
			logger.info("확인 되었습니다. 개인정보를 띄웁니다.");
			return "member/myInfo";
		}
		
		//개인 정보 수정하기3 (수정 처리)
		@RequestMapping("/modifyMyInfo.me")
		public String modifyMyInfo() {
			logger.info("개인정보를 수정합니다.");
			return "member/myInfo";
		}
		
		
		//나의 계모임
		@RequestMapping("/mygathering.me")
		public String mygathering() {
			logger.info("나의 계모임 ");
			return "member/mygathering";
		}
		
		//나의 투자관리
		
		//나의 투자관리 - 펀드
		@RequestMapping("/myFund.me")
		public String myFund() {
			logger.info("나의 투자관리 - 펀드 ");
			return "member/myFund";
		}
		
		//나의 투자관리 - 주식
		@RequestMapping("/myStock.me")
		public String myStock() {
			logger.info("나의 투자관리 - 주식 ");
			return "member/myStock";
		}
		
		//지급 스케줄(성민)
		@RequestMapping("/mySchedule.me")
		public String mySchedule() {
			logger.info("지급스케줄로 이동합니다. ");
			return "member/mySchedule";
		}
		
		//1:1문의 내역 - 페이지 없음 
		@RequestMapping("/myQnA.me")
		public String myQnA() {
			logger.info("1:1 문의로 이동합니다 ");
			return "member/myQnA";
		}
		
		
}
