package com.spring.hexagon.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.hexagon.persistence.GatherDAO;
import com.spring.hexagon.vo.GatherVO;

@Service
public class GatherServiceImp implements GatherService {

	@Autowired
	GatherDAO gtdao;
	
	//계 리스트
	@Override
	public void gath_list(HttpServletRequest req, Model model) {
		List<GatherVO> dtos = gtdao.gath_list();
		model.addAttribute("dtos", dtos);
	}
	//계 추가
	@Override
	public void gath_add(HttpServletRequest req, Model model) {
		int gATH_INTEREST_RATE = Integer.parseInt(req.getParameter("GATH_INTEREST_RATE"));
		String gATH_EX = req.getParameter("GATH_EX");
		int gATH_TERM = Integer.parseInt(req.getParameter("GATH_TERM"));
		int gATH_GOAL = Integer.parseInt(req.getParameter("GATH_GOAL"));
		int gATH_MONTH_PAY = Integer.parseInt(req.getParameter("GATH_MONTH_PAY"));
		String gATH_IMG = req.getParameter("GATH_IMG");
		String gATH_NAME = req.getParameter("GATH_NAME");
		String gATH_OPENTO = req.getParameter("GATH_OPENTO");
		int gATH_NUM = Integer.parseInt(req.getParameter("GATH_NUM"));
		String gATH_STATE = req.getParameter("GATH_STATE");
		int gATH_MEMBER_NUM = Integer.parseInt(req.getParameter("GATH_MEMBER_NUM"));
		float gATH_TAX = Float.parseFloat(req.getParameter("GATH_TAX"));
		String gATH_CATEGORY = req.getParameter("GATH_CATEGORY");
			
		GatherVO vo = new GatherVO();
		
		vo.setGATH_CATEGORY(gATH_CATEGORY);
		vo.setGATH_EX(gATH_EX);
		vo.setGATH_GOAL(gATH_GOAL);
		vo.setGATH_IMG(gATH_IMG);
		vo.setGATH_INTEREST_RATE(gATH_INTEREST_RATE);
		vo.setGATH_MEMBER_NUM(gATH_MEMBER_NUM);
		vo.setGATH_MONTH_PAY(gATH_MONTH_PAY);
		vo.setGATH_NAME(gATH_NAME);
		vo.setGATH_NUM(gATH_NUM);
		vo.setGATH_OPENTO(gATH_OPENTO);
		vo.setGATH_STATE(gATH_STATE);
		vo.setGATH_TERM(gATH_TERM);
		vo.setGATH_TAX(gATH_TAX);
		
		int cnt = gtdao.gath_add(vo);
		
		model.addAttribute("cnt", cnt);
	}
	
	//계 삭제
	@Override
	public void gath_del(HttpServletRequest req, Model model) {
		int GATH_NUM=Integer.parseInt(req.getParameter("GATH_NUM"));
		int cnt =gtdao.gath_del(GATH_NUM);
		model.addAttribute("cnt", cnt);
	}
	
	//계 참가
	@Override
	public void gath_join(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		
	}


}
