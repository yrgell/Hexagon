package com.spring.hexagon.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.hexagon.vo.HostVO;

public interface HostDAO {

	//*******************관리자 QnA 전용*******************
	//관리자 입장 고객QnA 갯수 확인
	public int getArticleCnt();

	//관리자 입장 고객QnA 리스트
	public List<HostVO> getArticleList(HostVO vo);
	
	//관리자 입장 고객QnA 상세페이지
	public HostVO getQnA(HostVO vo);
	
	//관리자 입장 고객QnA 수정처리
	public int updateQnA(HostVO vo);
	
	//관리자 QnA 검색
	public List<HostVO> listAll(String searchOption, String keyword)throws Exception;
	
	//관리자 QnA 검색
	public int countArticle(String searchOption, String keyword)throws Exception; 
	
	////////////////////////////////////////////////////////////////
	//*******************관리자 공지사항 전용 *******************
	//관리자 공지사항 갯수 확인
	public int getNoticeCount();
	
	//관리자 공지사항 리스트
	public List<HostVO> getNoticeList(HostVO vo);
	
	//관리자 공지사항 상세페이지 조회
	public HostVO getNotice(HostVO vo);
	
	//관리자 공지사항 등록 처리
	public int insertNotice(HostVO vo);
	
	//관리자 공지사항 삭제 처리
	public int deleteNotice(int nb_num);
	
	//공지사항 수정 처리
	public int updateNotice(HostVO vo);
	
}