package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface GatherService {

	//계 리스트
	public void gath_list(HttpServletRequest req,Model model);
	
	//계 추가
	public void gath_add(HttpServletRequest req,Model model);
		
	//계 삭제
	public void gath_del(HttpServletRequest req,Model model);

	//계 참가
	public void gath_join(HttpServletRequest req, Model model);
	
	
}
