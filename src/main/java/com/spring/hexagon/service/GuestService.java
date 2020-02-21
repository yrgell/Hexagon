package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface GuestService {
	
	//회원가입
	public void joinPro(HttpServletRequest req,Model model);
	//아이디찾기
	public void findIdPro(HttpServletRequest req,Model model);
	
	
	
}
