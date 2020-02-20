package com.spring.hexagon.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface HostService {
	
	//회원 목록
	public void userList(HttpServletRequest req, Model model);
	
	
	
}
