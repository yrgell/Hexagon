package com.spring.hexagon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	
	//계 삭제
	@Override
	public int gath_del(int GATH_NUM) {
		return sqls.getMapper(GatherDAO.class).gath_del(GATH_NUM);
	}
	
	
	
}
