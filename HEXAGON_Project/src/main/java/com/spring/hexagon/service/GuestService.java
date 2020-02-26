package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface GuestService {
	
	
	//아이디 중복체크
	public void idcheck(HttpServletRequest req, Model model);
	
	//emailchk
	public void emailChk(HttpServletRequest req, Model model);

	//회원가입
	public void joinPro(MultipartHttpServletRequest req,Model model);
	public void joinPro2(HttpServletRequest req,Model model);
	
	//아이디찾기
	public void findPwPro(HttpServletRequest req,Model model);
	
	//리스트 출력하기
	public void eventList(HttpServletRequest req, Model model);
		
	
}
