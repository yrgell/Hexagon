package com.spring.hexagon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.Fund_detailVO;

@Repository
public class FundDAOImpl implements FundDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	// 펀드 상품 갯수
	@Override
	public int getFunCnt() {
		
		return sqlSession.selectOne("com.spring.hexagon.persistence.FundDAO.getFunCnt");
	}
	
	// 펀드 상품리스트
	@Override
	public List<Fund_detailVO> fundList() {
		return sqlSession.selectList("com.spring.hexagon.persistence.FundDAO.fundList");
	}
	
	
}
