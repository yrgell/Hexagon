package com.spring.hexagon.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class UserLoginFailureHandler implements AuthenticationFailureHandler{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	public UserLoginFailureHandler(SqlSessionTemplate sqlSession, BCryptPasswordEncoder passwordEncoder ) {
		this.sqlSession = sqlSession;
		this.passwordEncoder = passwordEncoder;
	}
	
	// 로그인이 실패할 경우 자동으로 실행되는 코드 
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
	
		System.out.println("실패 ");
		String id =  request.getParameter("guestid");
		System.out.println(id);
		String strPwd = request.getParameter("pass");
		
		int cnt = sqlSession.selectOne("com.spring.hexagon.persistence.GuestDAO.idCheck2",id);
		if(cnt!=0) {
			
			String pwd = sqlSession.selectOne("com.spring.hexagon.persistence.GuestDAO.pwCheck",id);
			
			System.out.println(strPwd);
			System.out.println(pwd);
			System.out.println(passwordEncoder.matches(strPwd, pwd));
			
			if(passwordEncoder.matches(strPwd, pwd)) {
				request.setAttribute("errMsg", "이메일 인증하세요.");
				
			}else {
				request.setAttribute("errMsg", "비밀번호가 일치하지 않습니다.");
			}
			
		}else {
			System.out.println("dsaddsa");
			request.setAttribute("errMsg", "아이디가 존재하지 않습니다.");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/sign/login.jsp");
		rd.forward(request, response);
	}

}
