package com.spring.hexagon.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.spring.hexagon.vo.UserVO;



public class UserLoginSuccessHandler implements AuthenticationSuccessHandler{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public UserLoginSuccessHandler(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		UserVO vo = (UserVO)authentication.getPrincipal();
		System.out.println("UserVO==> " + vo);
		
		String msg = authentication.getName() + "님 환영합니다";
		System.out.println("아이디 ==> " + authentication.getName());
		
		
		request.setAttribute("msg", msg);
		request.getSession().setAttribute("guestid", authentication.getName());
		
			RequestDispatcher rd = request.getRequestDispatcher("/");
			rd.forward(request, response);
		
		
	}
	

}
