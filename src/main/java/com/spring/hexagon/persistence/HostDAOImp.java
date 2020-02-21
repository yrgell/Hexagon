package com.spring.hexagon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.MemberVO;

@Repository
public class HostDAOImp implements HostDAO{

	@Autowired
	SqlSession sqls;
	
	
	@Override
	public List<MemberVO> userList(String name) {
		return sqls.selectList("com.spring.hexagon.persistence.HostDAO.userList",name);
	}
	
}
