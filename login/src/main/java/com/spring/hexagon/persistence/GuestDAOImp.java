package com.spring.hexagon.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.MemberVO;

@Repository
public class GuestDAOImp implements GuestDAO{

	@Autowired
	SqlSession sqls;
	
	@Override
	public MemberVO idCheck(String strId) {
		
		return sqls.getMapper(GuestDAO.class).idCheck(strId);
	}

	@Override
	public int idCheck2(String strId) {
		
		return sqls.getMapper(GuestDAO.class).idCheck2(strId);
	}

	@Override
	public int insertMember(MemberVO vo) {
		return sqls.getMapper(GuestDAO.class).insertMember(vo);
	}
	
}
