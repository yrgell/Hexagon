package com.spring.hexagon.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.service.HostServiceImpl;
import com.spring.hexagon.vo.HostVO;

@Repository
public class HostDAOImpl implements HostDAO{

	@Autowired
	SqlSession sqls;
	
	//관리자 입장 고객QnA 갯수 확인
	@Override
	public int getArticleCnt() {
		return sqls.getMapper(HostDAO.class).getArticleCnt();
	}
	//관리자 입장 고객QnA 리스트
	@Override
	public List<HostVO> getArticleList(HostVO vo) {
		return sqls.getMapper(HostDAO.class).getArticleList(vo);
	}
	//관리자 입장 고객QnA 상세
	@Override
	public HostVO getQnA(HostVO vo) {
		return sqls.getMapper(HostDAO.class).getQnA(vo);
	}
	//관리자 입장 고객QnA 수정
	@Override
	public int updateQnA(HostVO vo) {
		return sqls.getMapper(HostDAO.class).updateQnA(vo);
	}
	//관리자 QnA 검색
	@Override
	public List<HostVO> listAll(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqls.selectList("hostI.listAll", map);
	}
	//관리자 QnA 검색
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqls.selectOne("hostI.countArticle", map);
	}
	
	
	///////////////////////////////////////////////////////////////
	//***************공지사항 관련***************
	//관리자 공지사항 갯수 확인
	@Override
	public int getNoticeCount() {
		return sqls.getMapper(HostDAO.class).getNoticeCount();
	}
	
	//관리자 공지사항 리스트
	@Override
	public List<HostVO> getNoticeList(HostVO vo) {
		return sqls.getMapper(HostDAO.class).getNoticeList(vo);
	}
	
	//관리자 공지사항 등록 처리
	@Override
	public int insertNotice(HostVO vo) {
		return sqls.getMapper(HostDAO.class).insertNotice(vo);
	}
	
	//관리자 공지사항 삭제 처리
	@Override
	public int deleteNotice(int nb_num) {
		return sqls.getMapper(HostDAO.class).deleteNotice(nb_num);
	}
	//관리자 공지사항 상세페이지 조회
	@Override
	public HostVO getNotice(HostVO vo) {
		return sqls.getMapper(HostDAO.class).getNotice(vo);
	}
	//관리자 공지사항 수정
	@Override
	public int updateNotice(HostVO vo) {
		return sqls.getMapper(HostDAO.class).updateNotice(vo);
	}

	
	
	
	//관리자 입장 고객QnA 목록 조회
//	@Override
//	public List<QnAVO> getArticleList(int strat, int end) {
//		return null;
//	}
}
