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
import org.springframework.web.servlet.ModelAndView;

import com.spring.hexagon.service.GuestService;
import com.spring.hexagon.service.HostService;
import com.spring.hexagon.vo.HostVO;

@Controller
public class HostController {
	
	@Autowired
	HostService hservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	
	@RequestMapping("/dashboard.ho") //gu 차후 ho로 수정
	public String main(HttpServletRequest req, Model model) {
		logger.info("host.ho");
		return "sign/main";
	}

	//board 화면(공지사항)
	@RequestMapping("/board.ho") //gu 차후 ho로 수정
	public String board(HttpServletRequest req, Model model) {
		logger.info("board.ho");
		hservice.hostN(req, model);
		hservice.hostI(req, model);
		return "host/board";
	}
	//board 화면(QnA)
	
	
	/////////////////////////////////////////////////////////////////////////
	//**************************관리자 공지관련*******************************

	
	//관리자 공지관리 페이지 Notice N 
	@RequestMapping("/hostN.ho") //gu 차후 ho로 수정
	public String hostN(HttpServletRequest req, Model model) {
		logger.info("hostN.ho");
		hservice.hostN(req, model);
		return "host/hostN";
	}
	//관리자 공지사항 상세페이지
	@RequestMapping("/hostNoticeView.ho") //gu 차후 ho로 수정
	public String hostNoticeView(HttpServletRequest req, Model model) {
		logger.info("hostNoticeView.ho");
		hservice.hostNoticeView(req, model);
		return "host/hostNoticeView";
	}
	
	//관리자 공지사항 등록화면
	@RequestMapping("/hostNoticeAddForm.ho") //gu 차후 ho로 수정
	public String hostNoticeAddForm(HttpServletRequest req, Model model) {
		logger.info("hostNoticeAddForm.ho");
		hservice.hostNoticeAddForm(req, model);
		return "host/hostNoticeAddForm";
	}
	
	//관리자 공지사항 추가처리
	@RequestMapping("/hostNoticeAddPro.ho") //gu 차후 ho로 수정
	public String hostNoticeAddPro(HttpServletRequest req, Model model) {
		logger.info("hostNoticeAddPro.ho");
		hservice.hostNoticeAddPro(req, model);
		return "host/hostNoticeAddPro";
	}
	//관리자 공지사항 삭제처리
	@RequestMapping("/hostNoticeDeletePro.ho") //gu 차후 ho로 수정
	public String hostNoticeDeletePro(HttpServletRequest req, Model model) {
		logger.info("hostNoticeDeletePro.ho");
		hservice.hostNoticeDeletePro(req, model);
		return "host/hostNoticeDeletePro";
	}
	//관리자 공지사항 수정처리
	@RequestMapping("/hostNoticeModifyPro.ho") //gu 차후 ho로 수정
	public String hostNoticeModifyPro(HttpServletRequest req, Model model) {
		logger.info("hostNoticeModifyPro.ho");
		hservice.hostNoticeModifyPro(req, model);
		return "host/hostNoticeModifyPro";
	}
	
	/////////////////////////////////////////////////////////////////////////
	//관리자 문의 관련///////
	//관리자 문의관리 Inquiry I
	@RequestMapping("/hostI.ho") //gu 차후 ho로 수정
	public String hostI(HttpServletRequest req, Model model) {
		logger.info("hostI.ho");
		hservice.hostI(req, model);
		return "host/hostI";
	}
	
	//관리자 고객QnA 상세페이지
	@RequestMapping("/hostQnAView.ho") //gu 차후 ho로 수정
	public String hostQnAView(HttpServletRequest req, Model model) {
		logger.info("hostQnAView.ho");
		hservice.hostQnAView(req, model);
		return "host/hostQnAView";
	}
	
	//관리자 고객QnA 수정처리
	@RequestMapping("/hostQnAmodifyPro.ho") //gu 차후 ho로 수정
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
}
