package com.spring.hexagon.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.hexagon.service.GatherService;

@Controller
public class GathController {
	
	@Autowired
	GatherService gtservice;
	
	private static final Logger logger = LoggerFactory.getLogger(GathController.class);
	
	//계모임 상품 리스트
  	@RequestMapping("/gatheringList.gu")
  	public String gatheringList(HttpServletRequest req, Model model) {
  		logger.info("계모임 목록으로 이동합니다.");
  		 gtservice.gath_list(req, model);
         return "gather/gath_list";
  	}

	//계 추가
	@RequestMapping("/gath_add.me")
    public String gath_add(HttpServletRequest req, Model model) {
       logger.info("gath_add ");
        gtservice.gath_add(req, model);
       return "gather/gath_add";
    }
	
	//계 삭제
	@RequestMapping("/gath_del.me")
    public String gath_del(HttpServletRequest req, Model model) {
       logger.info("gath_del처리");
        gtservice.gath_del(req, model);
       return "gather/gath_del";
    }
	
	//계 참여
	@RequestMapping("/gath_join.me")
    public String gath_join(HttpServletRequest req, Model model) {
       logger.info("gath_join처리");
        gtservice.gath_join(req, model);
       return "gather/gath_join";
    }

}
