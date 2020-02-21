package com.spring.hexagon.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.hexagon.service.FundServiceImpl;
import com.spring.hexagon.service.GuestService;

@Controller
public class GuestController {
	
	// 전체 접근 컨트롤러
	
	@Autowired
	GuestService gservice;
	
	
	private static final Logger logger = LoggerFactory.getLogger(GuestController.class);
	
	//메인페이지 접속
	@RequestMapping("/")
	public String main(HttpServletRequest req, Model model) {
		logger.info("메인으로 접속합니다.");
		return "sign/main";
	}
	
	//회원가입페이지
	@RequestMapping("/join.gu")
	public String join(HttpServletRequest req, Model model) {
		logger.info("회원가입 페이지로 이동합니다.");
		return "sign/join";
	}

	//회원가입처리
	@RequestMapping("/joinPro.gu")
	public String joinPro(HttpServletRequest req, Model model) {
		logger.info("회원가입 처리를 진행합니다.");
		gservice.joinPro(req, model);
		return "sign/login";
	}
	//로그인페이지로 이동
	@RequestMapping("/login.gu")
	public String login(HttpServletRequest req, Model model) {
		logger.info("로그인 페이지로 이동합니다.");
		return "sign/login";
	}
	
	//아이디 중복확인
	@RequestMapping("/idconfirmChk.gu")
	public String idconfirmChk() {
		logger.info("아이디 중복확인으로 이동합니다.");
		
		return "sign/idconfirmChk";
	}
	
	//회원가입 약관
	@RequestMapping("/joinNext.gu")
	public String joinNext() {
		logger.info("회원가입 약관으로 이동합니다.");
		
		return "sign/joinNext";
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
		
	/*----------------------------------------------------상품 접속--------------------------------------------------------------- */
	
	
	/*------------------------------------------------------계모임----------------------------------------------------------------*/
	
	//계모임 상품 리스트
	@RequestMapping("/gatheringList.gu")
	public String gatheringList() {
		logger.info("계모임 목록으로 이동합니다.");
		
		return "/all/gatheringList";
	}
	
	/*--------------------------------------------------게시판 접속---------------------------------------------------------------*/
	
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
		
		//------------------------------------2020/02/17 펀드,주식 추가-----------------------------------------------------
		
		@RequestMapping("/investing.me")
		public String investing() {
			logger.info("투자목록으로 이동합니다.");
			
			return "all/invest";
		}
		
		@RequestMapping("/popup.gu")
		public String popup() {
			logger.info("상세페이지로 이동합니다.");
			
			return "all/popup";
		}
		
		@RequestMapping("/recommend.me")
		public String recommend() {
			logger.info("맞춤추천으로 이동합니다.");
			
			return "all/recommend";
		}
		@RequestMapping("/snapshot.gu")
		public String sanpshot() {
			logger.info("분석 이동합니다.");
			
			return "all/snapshot";
		}
		
		@RequestMapping("/graph.gu")
		public String graph() {
			logger.info("매매 이동합니다.");
			
			return "all/graph";
		}
		
		@RequestMapping("/company.gu")
		public String company() {
			logger.info("회사 이동합니다.");
			
			return "all/company";
		}
}
