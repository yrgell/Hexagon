package com.spring.hexagon.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.Gath_buyVO;
import com.spring.hexagon.vo.Gath_rateVO;
import com.spring.hexagon.vo.GatherVO;

@Repository
public class GatherDAOImp implements GatherDAO{

	@Autowired
	SqlSession sqls;
	
	//계 목록
	@Override
	public List<GatherVO> gath_list() {
		return sqls.getMapper(GatherDAO.class).gath_list();
	}
	
	//계 추가
	@Override
	public int gath_add(GatherVO key) {
	return sqls.getMapper(GatherDAO.class).gath_add(key);
	}
	
	//계 상세페이지
	@Override
	public GatherVO gath_detail(int GATH_NUM) {
		return sqls.getMapper(GatherDAO.class).gath_detail(GATH_NUM);
	}
	
	//이자률 
	@Override
	public Gath_rateVO gath_detail2(int key) {
		return sqls.getMapper(GatherDAO.class).gath_detail2(key);
	}
	
	//계 삭제
	@Override
	public int gath_del(int GATH_NUM) {
		return sqls.getMapper(GatherDAO.class).gath_del(GATH_NUM);
	}

	//계 참가
	@Override
	public int gath_join(Gath_buyVO vo) {
		return sqls.getMapper(GatherDAO.class).gath_join(vo);
	}
	@Override
	public int gath_join2(Map<String, Object> map) {
		return sqls.getMapper(GatherDAO.class).gath_join2(map);
	}

	//계 퇴장
	@Override
	public int gath_out(Gath_buyVO vo) {
		return sqls.getMapper(GatherDAO.class).gath_out(vo);
	}
	@Override
	public int gath_out2(Map<String, Object> map) {
		return sqls.getMapper(GatherDAO.class).gath_out2(map);
	}

	//인원체크
	@Override
	public int gath_count(int gath_num) {
		return sqls.getMapper(GatherDAO.class).gath_count(gath_num);
	}

	//계 모집완료
	@Override
	public int gath_compl(int gath_num) {
		return sqls.getMapper(GatherDAO.class).gath_compl(gath_num);
	}

	//회원 계 목록
	@Override
	public List<GatherVO> gath_melist(String gUESTID) {
		return sqls.getMapper(GatherDAO.class).gath_melist(gUESTID);
	}

	@Override
	public String gath_turn(Gath_buyVO vo) {
		return sqls.getMapper(GatherDAO.class).gath_turn(vo);
	}

	@Override
	public int gath_chk(Gath_buyVO vo) {
		return sqls.getMapper(GatherDAO.class).gath_chk(vo);
	}

	
}
