package com.spring.hexagon.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.hexagon.persistence.FundDAO;
import com.spring.hexagon.vo.Fund_detailVO;


@Service
public class FundServiceImpl implements FundService{
	
	@Autowired
	FundDAO sdao;
	
	// 펀드상품 리스트
	@Override
	public void fundList(HttpServletRequest req, Model model) {
		// 상품갯수 가져오기
		int cnt = sdao.getFunCnt();
		
		// 갯수가 0이상일때 내용가져오기
		if(cnt > 0) {
			List<Fund_detailVO> dtos = sdao.fundList();
			model.addAttribute("dtos",dtos);
		}
	}
	
	// 상품 상세페이지
	@Override
	public void fundDetailView(HttpServletRequest req, Model model) {
	}
}
