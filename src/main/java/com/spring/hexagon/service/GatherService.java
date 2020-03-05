package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface GatherService {

	//계 리스트
	public void gath_list(HttpServletRequest req,Model model);
	
	//계상세페이지
	public void gath_detail(HttpServletRequest req,Model model);
	
	//계 추가
	public void gath_add(MultipartHttpServletRequest req,Model model);
		
	//계 삭제
	public void gath_del(HttpServletRequest req,Model model);

	//계 참가
	public void gath_join(HttpServletRequest req, Model model);
	
	//회원 계 목록
	public void gath_melist(HttpServletRequest req, Model model);
	
	//계 퇴장
	public void gath_out(HttpServletRequest req, Model model);
	
}
