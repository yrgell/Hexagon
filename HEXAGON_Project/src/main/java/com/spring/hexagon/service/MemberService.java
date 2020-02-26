package com.spring.hexagon.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.hexagon.vo.Fund_buyVO;
import com.spring.hexagon.vo.GatherVO;
import com.spring.hexagon.vo.MemberVO;
import com.spring.hexagon.vo.StockVO;

public interface MemberService {
	
	//개인 정보 확인하기
	public void memberInfo(MultipartHttpServletRequest req, Model model);
	
	//개인 정보 수정하기 전 비밀번호 확인
	public void pwdCheck(HttpServletRequest req, Model model);
	
	//개인 정보 수정처리
	public void modifyMemberInfo(HttpServletRequest req, Model model);
	
	//개인 계 내역
	public void myGatherList(HttpServletRequest req, Model model);
	
	//개인 구매내역(펀드)
	public void myFundList(HttpServletRequest req, Model model);
	
	//개인 구매내역(주식)
	public void myStockList(HttpServletRequest req, Model model);
	
}
