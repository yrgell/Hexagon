package com.spring.hexagon.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.hexagon.vo.HostVO;

public interface HostService {
	/////////////////////////////////////////////////////////////////////////////////////
	//****************************관리자 QnA******************************** 
	//관리자 입장 고객 QnA 확인
	public void hostI(HttpServletRequest req, Model model);
	
	//관리자 입장 고객 QnA 상세페이지
	public void hostQnAView(HttpServletRequest req, Model model);
	
	//관리자 입장 고객 QnA 수정(고객 QnA수정 페이지에서 답글 달기)
	public void hostQnAmodifyPro(HttpServletRequest req, Model model);
	
	//관리자 ........QnA 검색
	public List<HostVO> listAll(String searchOption, String keyword)throws Exception;
	
	//관리자 ........QnA 검색
	public int countArticle(String searchOption, String keyword)throws Exception;
	
	/////////////////////////////////////////////////////////////////////////////////////
	//**********************관리자 공지사항***********************
	//관리자 공지사항 목록 메인
	public void hostN(HttpServletRequest req, Model model);
	
	//관리자 공지사항 등록페이지
	public void hostNoticeAddForm(HttpServletRequest req, Model model);
	
	//관리자 공지사항 등록 처리
	public void hostNoticeAddPro(HttpServletRequest req, Model model);
	
	//관리자 공지사항 상세페이지(수정,삭제)
	public void hostNoticeView(HttpServletRequest req, Model model);
	
	//관리자 공지사항 수정 처리
	public void hostNoticeModifyPro(HttpServletRequest req, Model model);
	
	//관리자 공지사항 삭제 처리
	public void hostNoticeDeletePro(HttpServletRequest req, Model model);
	/////////////////////////////////////////////////////////////////////////////////////
	
	
}
