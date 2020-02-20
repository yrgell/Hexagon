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
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	@RequestMapping("/confirmId.gu")
	public String idcheck(HttpServletRequest req, Model model) {
		logger.info("아이디 중복확인으로 이동합니다.");
		gservice.idcheck(req, model);
		return "sign/confirmId";
	}	
	//회원가입 
	@RequestMapping("/joinNext.gu")
	public String joinNext(MultipartHttpServletRequest req, Model model) {
		logger.info("/joinNext.gu");
		gservice.joinPro(req, model);
		return "sign/joinNext";
	
	}
	//회원가입 추가 정보입력
	@RequestMapping("/joinPro.gu")
	public String joinPro(HttpServletRequest req, Model model) {
		logger.info("/joinPro.gu");
		gservice.joinPro2(req, model);
		return "sign/joinPro";
	}
	//이메일 인증
	@RequestMapping("/emailChk.gu")
	public String emailChk(HttpServletRequest req, Model model) {
		logger.info("/joinPro.gu");
		gservice.emailChk(req, model);
		return "sign/login";
	}

	
	//로그인
	@RequestMapping("/login.gu")
	public String login(HttpServletRequest req, Model model) {
		logger.info("/login.gu");
		return "sign/login";
	}
	
//---------------------------2020/02/17 김진주 추가------------------------------
	
	
	
	
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
		
		//-------------20.2.18 현진 작업중(AJAX)-------------
		//-------------------이벤트 게시판-------------------
		@RequestMapping("/event.gu") 
		public String event() {
			logger.info("이벤트 게시판으로 이동합니다.");
			
			return "/guest/event";
		}
		
		@RequestMapping("/eventProgress.gu") 
		public String eventProgress() {
			logger.info("진행중인 이벤트 게시판으로 이동합니다.");
			
			return "/guest/eventProgress";
		}
		
		@RequestMapping("/eventEnd.gu") 
		public String eventEnd() {
			logger.info("완료된 이벤트 게시판으로 이동합니다.");
			
			return "/guest/eventEnd";
		}
		
		@RequestMapping("/winner.gu") 
		public String winner() {
			logger.info("당첨자 게시판으로 이동합니다.");
			
			return "/guest/winner";
		}
		//---------------------------------------------
		
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
		public String mygathering() {
			logger.info("정보관리로 이동합니다.");
			
			return "/guest/personalInfo";
		}
		
		//------------------------------------2020/02/17 펀드,주식 추가-----------------------------------------------------
		@RequestMapping("/fund.me")
		public String fund() {
			logger.info("펀드목록으로 이동합니다.");
			
			return "all/fund";
		}
		
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
		
		//------------------------------------2020/02/18 주식 페이지 추가------------------------------------
		/*상품 접속(주식 목록)*/
	    @RequestMapping("/stockList.gu")
	    public String stockList() {
	       logger.info("주식상품 목록으로 이동합니다.");
	         
	       return "/all/stockList";
	    }
	      
	    /*상품 상세페이지*/
	    @RequestMapping("/stockDetail.gu")
	    public String stockDetail() {
	       logger.info("주식 상세페이지로 이동합니다.");
	         
	       return "/all/stockDetail";
	    }
	      
	    /*투자하기 페이지*/
	    @RequestMapping("/buyStock.gu")
	    public String buyStock() {
	       logger.info("주식 투자페이지로 이동합니다.");
	         
	       return "/all/buyStock";
	    }
	      
	    /*결제상세 페이지*/
	    @RequestMapping("/buyStockDetail.gu")
	    public String buyStockDetail() {
	       logger.info("주식 구매 상세페이지로 이동합니다,");
	         
	       return "/all/buyStockDetail";
	    }
	      
	    /*구매처리 페이지*/
	    @RequestMapping("/buyStockPro.gu")
	    public String buyStockPro() {
	       logger.info("주식구매처리 페이지");
	        
	       return "/all/buyStockPro";
	    }
}
