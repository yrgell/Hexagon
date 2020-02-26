package com.spring.hexagon.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hexagon.service.GuestService;
import com.spring.hexagon.service.HostService;
import com.spring.hexagon.vo.HostVO;

@Controller
public class HostController {
	
	@Autowired
	HostService hservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	
	@RequestMapping("/dashboard.ho") 
	public String main(HttpServletRequest req, Model model) {
		logger.info("관리자 페이지로 이동합니다.");
		return "host/dashboard";
	}
	
	/////////////////////////////////////////////////////////////////////////
	//********************* 게시판 시작 **************************
	//게시판 통합
	@RequestMapping("/board.ho") 
	public String board(HttpServletRequest req, Model model) {
		logger.info("board.ho");
		hservice.hostN(req, model);
		hservice.hostI(req, model);
		return "host/board";
	}
	
	//board 화면(공지사항)
	@RequestMapping("/notice.ho") 
	public String Notice(HttpServletRequest req, Model model) {
		logger.info("공지사항으로 이동합니다.");
		hservice.hostN(req, model);
		hservice.hostI(req, model);
		return "host/board";
	}
	
	//board 화면(QnA)
	
	
	
	//**************************관리자 공지관련*******************************

	
	//관리자 공지관리 페이지 Notice N 
	@RequestMapping("/hostN.ho") 
	public String hostN(HttpServletRequest req, Model model) {
		logger.info("hostN.ho");
		hservice.hostN(req, model);
		return "host/hostN";
	}
	
	//관리자 공지사항 상세페이지
	@RequestMapping("/hostNoticeView.ho") 
	public String hostNoticeView(HttpServletRequest req, Model model) {
		logger.info("hostNoticeView.ho");
		hservice.hostNoticeView(req, model);
		return "host/hostNoticeView";
	}
	
	//관리자 공지사항 등록화면
	@RequestMapping("/hostNoticeAddForm.ho") 
	public String hostNoticeAddForm(HttpServletRequest req, Model model) {
		logger.info("hostNoticeAddForm.ho");
		hservice.hostNoticeAddForm(req, model);
		return "host/hostNoticeAddForm";
	}
	
	//관리자 공지사항 추가처리
	@RequestMapping("/hostNoticeAddPro.ho") 
	public String hostNoticeAddPro(HttpServletRequest req, Model model) {
		logger.info("hostNoticeAddPro.ho");
		hservice.hostNoticeAddPro(req, model);
		return "host/hostNoticeAddPro";
	}
	//관리자 공지사항 삭제처리
	@RequestMapping("/hostNoticeDeletePro.ho") 
	public String hostNoticeDeletePro(HttpServletRequest req, Model model) {
		logger.info("hostNoticeDeletePro.ho");
		hservice.hostNoticeDeletePro(req, model);
		return "host/hostNoticeDeletePro";
	}
	//관리자 공지사항 수정처리
	@RequestMapping("/hostNoticeModifyPro.ho") 
	public String hostNoticeModifyPro(HttpServletRequest req, Model model) {
		logger.info("hostNoticeModifyPro.ho");
		hservice.hostNoticeModifyPro(req, model);
		return "host/hostNoticeModifyPro";
	}
	
	/////////////////////////////////////////////////////////////////////////
	//관리자 문의 관련///////
	//관리자 문의관리 Inquiry I
	@RequestMapping("/hostI.ho") 
	public String hostI(HttpServletRequest req, Model model) {
		logger.info("hostI.ho");
		hservice.hostI(req, model);
		return "host/hostI";
	}
	
	//관리자 고객QnA 상세페이지
	@RequestMapping("/hostQnAView.ho") 
	public String hostQnAView(HttpServletRequest req, Model model) {
		logger.info("hostQnAView.ho");
		hservice.hostQnAView(req, model);
		return "host/hostQnAView";
	}
	
	//관리자 고객QnA 수정처리
	@RequestMapping("/hostQnAmodifyPro.ho") 
	public String hostQnAmodifyPro(HttpServletRequest req, Model model) {
		logger.info("hostQnAmodifyPro.ho");
		hservice.hostQnAmodifyPro(req, model);
		return "host/hostQnAmodifyPro";
	}
	
	
	//검색기능 한번 
	@RequestMapping("/list.ho")
	public ModelAndView list(@RequestParam(defaultValue="title") String searchOption,
							 @RequestParam(defaultValue="") String keyword) throws Exception{
		List<HostVO> list = hservice.listAll(searchOption, keyword);
		int count = hservice.countArticle(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list",list);
		map.put("count",count);
		map.put("searchOption",searchOption);
		map.put("keyword", keyword);
		mav.addObject("map",map);
		mav.setViewName("hostI.ho");
		
		return mav;
	}
	///////////////////////////////////////////////////////////////////////////
	//**************************상품 관련 *******************************
	
	
	//계 목록
	@RequestMapping("/gatherList.ho")
	public String gatherList(HttpServletRequest req, Model model) {
		logger.info("계목록으로 이동합니다");
		//hservice.hostQnAmodifyPro(req, model);
		return "host/hostGatherList";
	}
	
	//펀딩 목록
	@RequestMapping("/fundingList.ho") 
	public String fundingList(HttpServletRequest req, Model model) {
		logger.info("hostQnAmodifyPro.ho");
		hservice.hostQnAmodifyPro(req, model);
		return "host/hostFundingList";
	}
	
	//주식 목록
	@RequestMapping("/stockList.ho") 
	public String stockList(HttpServletRequest req, Model model) {
		logger.info("hostQnAmodifyPro.ho");
		hservice.hostQnAmodifyPro(req, model);
		return "host/hostStockList";
	}
	
	
	////////////////////////////////////////////////////////////////////////////////
	//**************************회원 관련 *******************************
	
	//회원 관리
	@RequestMapping("/userList.ho") 
	public String userList(HttpServletRequest req, Model model) {
		logger.info("회원관리 목록으로 이동합니다.");
		//hservice.hostQnAmodifyPro(req, model);
		return "host/user";
	}
	
	//회원 검색
	@RequestMapping("/userSearch.ho") 
	public String userSearch(HttpServletRequest req, Model model) {
		logger.info("회원을 검색합니다.");
		//hservice.hostQnAmodifyPro(req, model);
		return "host/user_search";
	}
	
	////////////////////////////////////////////////////////////////////////////////
	//**************************펀드 관련 *******************************
	/* 펀드 상품 */
	@RequestMapping("/product_fund.ho")
	public String product_fund(HttpServletRequest req, Model model) {
		logger.info("펀드상품");
		
		hservice.getFundList(req, model);
		
		return "host/product_fund";
	}
	
	/* 펀드 추가 */
	@RequestMapping("/fund_add.ho")
	public String fund_add(HttpServletRequest req, Model model) {
		logger.info("펀드상품추가");
		
		hservice.getFundDetailList(req, model);
		
		return "host/fund_add";
	}
	/* 펀드 추가 처리*/
	@RequestMapping("/fund_add_pro.ho")
	public String fund_add_pro(MultipartHttpServletRequest req, Model model) {
		logger.info("펀드상품추가 처리페이지");
		hservice.fundAdd(req, model);
		
		return "host/fund_add_pro";
	}
	
	/* 펀드 수정 페이지 */
	@RequestMapping("/fund_modify.ho")
	public String fund_modify(HttpServletRequest req, Model model) {
		logger.info("펀드 수정페이지로 이동");
		hservice.fundModify(req,model);
		return "host/fund_modify";
	}
	
	/* 펀드 수정 처리 페이지 */
	@RequestMapping("/fund_modifyPro.ho")
	public String fund_modifyPro(MultipartHttpServletRequest req, Model model) {
		logger.info("펀드 수정 처리 페이지");
		
		hservice.fundModifyPro(req,model);
		
		return "host/fund_modifyPro";
	}
	
	//펀드 삭제
	@RequestMapping("/fund_delete.ho")
	public String fund_delete(HttpServletRequest req, Model model) {
		logger.info("펀드 강제 취소 처리 페이지");
		
		hservice.fundDelete(req, model);
		
		return "host/fund_delete";
	}
}