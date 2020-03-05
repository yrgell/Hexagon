package com.spring.hexagon.controller;
	 
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.hexagon.service.GatherService;
import com.spring.hexagon.service.GuestService;
 	 
//계 컨트롤러
@Controller
public class GatherController {
	
	@Autowired
	GatherService gtservice;
	 
	private static final Logger logger = LoggerFactory.getLogger(GatherController.class);
	
	//계 리스트 페이지
    @RequestMapping("/gath_list.gu")
    public String gath_list(HttpServletRequest req, Model model) {
       logger.info("gath_list 페이지");
        gtservice.gath_list(req, model);
       return "gather/gath_list";
    }
    
    //계 상세페이지
    @RequestMapping("/gath_detail.gu")
    public String gath_detail(HttpServletRequest req, Model model) {
       logger.info("gath_detail 페이지");
        gtservice.gath_detail(req, model);
       return "gather/gath_detail";
    }
    
    //계 추가 페이지
  	@RequestMapping("/gath_add.me")
    public String gath_add(HttpServletRequest req, Model model) {
         logger.info("gath_add ");
         return "gather/gath_add";
    }
    
	//계 추가
	@RequestMapping("/gath_addPro.me")
    public String gath_addPro(MultipartHttpServletRequest req, Model model) {
       logger.info("gath_addPro ");
        gtservice.gath_add(req, model);
       return "gather/gath_addPro";
    }
	
	//계 삭제( 관리자페이지)
	@RequestMapping("/gath_del.me")
    public String gath_del(HttpServletRequest req, Model model) {
       logger.info("gath_del처리");
        gtservice.gath_del(req, model);
       return "gather/gath_del";
    }
	
	//계 상세 ,참여 페이지
	@RequestMapping("/gath_join.me")
    public String gath_join(HttpServletRequest req, Model model) {
       logger.info("gath_join처리");
       gtservice.gath_detail(req, model);
       return "gather/gath_join";
    }
	
	//계 참여
	@RequestMapping("/gath_joinPro.me")
    public String gath_joinPro(HttpServletRequest req, Model model) {
       logger.info("gath_joinPro처리");
        gtservice.gath_join(req, model);
       return "gather/gath_joinPro";
    }
	
	//회원 계 목록	(마이페이지)
	@RequestMapping("/gath_melist.me")
    public String gath_melist(HttpServletRequest req, Model model) {
       logger.info("gath_melist처리");
        gtservice.gath_melist(req, model);
       return "gather/gath_melist";
    }	
	
	//계 퇴장 (마이페이지)
	@RequestMapping("/gath_out.me")
    public String gath_out(HttpServletRequest req, Model model) {
       logger.info("gath_out처리");
        gtservice.gath_out(req, model);
       return "gather/gath_out";
    }
}	 
	 