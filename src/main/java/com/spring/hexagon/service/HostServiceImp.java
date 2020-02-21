package com.spring.hexagon.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.hexagon.persistence.GuestDAO;
import com.spring.hexagon.persistence.HostDAO;
import com.spring.hexagon.vo.MemberVO;

@Service
public class HostServiceImp implements HostService{

	@Autowired
	HostDAO hdao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	//회원 목록
	@Override
	public void userList(HttpServletRequest req, Model model) {
		String name = req.getParameter("name");
		List<MemberVO> list = hdao.userList(name);
		
		model.addAttribute("list",list);
	}


	
	
	
	
}
