package com.spring.hexagon.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.hexagon.service.FundServiceImpl;
import com.spring.hexagon.service.StockServiceImpl;

@Controller
public class StockController {
	
	private static final Logger logger = LoggerFactory.getLogger(StockController.class);
	
	@Autowired
	StockServiceImpl sservice;
	
	/*------------------------------------------------------펀드------------------------------------------------------------------*/
	//펀드 상품 리스트 
	@RequestMapping("/stockList.gu")
    public String stockList(HttpServletRequest req, Model model) {
       logger.info("주식상품 목록으로 이동합니다.");
       sservice.stockList(req, model);
       return "stock/stockList";
    }
      
    /*상품 상세페이지*/
    @RequestMapping("/stockDetail.gu")
    public String stockDetail(HttpServletRequest req, Model model) {
       logger.info("주식 상세페이지로 이동합니다.");
        
       sservice.stockDetail(req, model);
       
       return "stock/stockDetail";
    }
      
    /*투자하기 페이지*/
    @RequestMapping("/buyStock.me")
    public String buyStock() {
       logger.info("주식 구매페이지로 이동합니다.");
         
       return "stock/buyStock";
    }
      
    /*결제상세 페이지*/
    @RequestMapping("/buyStockDetail.me")
    public String buyStockDetail() {
       logger.info("주식 구매 상세페이지로 이동합니다,");
        
       return "stock/buyStockDetail";
    }
      
    /*구매처리 페이지*/
    @RequestMapping("/buyStockPro.me")
    public String buyStockPro() {
       logger.info("주식구매처리 페이지");
        
       return "stock/buyStockPro";
    }
}
