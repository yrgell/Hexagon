package com.spring.hexagon.service;

import java.sql.Timestamp;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.hexagon.persistence.GuestDAO;
import com.spring.hexagon.vo.MemberVO;

@Service
public class GuestServiceImp implements GuestService{

	@Autowired
	GuestDAO gdao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	//아이디찾기
	@Override
	public void findIdPro(HttpServletRequest req, Model model) {
		
	}

	@Override
	public void joinPro(HttpServletRequest req, Model model) {
		
		
		MemberVO vo= new MemberVO();
		String id = req.getParameter("guestid");
		String pw = req.getParameter("pass");
		String pw2=passwordEncoder.encode(pw);
		System.out.println(pw2);
		
		vo.setGuestid(id);
		vo.setPass(pw2);
		
		
		
		
		int cnt = gdao.insertMember(vo);
		
		
		model.addAttribute("insertCnt", cnt);
	}


	
	
	
	
}
