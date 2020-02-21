package com.spring.hexagon.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.Fund_detailVO;
import com.spring.hexagon.vo.Fund_itemVO;

@Repository
public class FundDAOImpl implements FundDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	// 펀드 상품 갯수
	@Override
	public int getFundCnt() {
		
		return sqlSession.selectOne("com.spring.hexagon.persistence.FundDAO.getFundCnt");
	}
	
	// 펀드 상품리스트
	@Override
	public List<Fund_itemVO> fundList() {
		return sqlSession.selectList("com.spring.hexagon.persistence.FundDAO.fundList");
	}
	
	// 펀드 상세페이지
	@Override
	public Fund_detailVO fundDetail(int fund_item_no) {
		return sqlSession.selectOne("com.spring.hexagon.persistence.FundDAO.fundDetail",fund_item_no);
	}

	//펀드 상세페이지 => 투자하기
	@Override
	public int fundBuy(Map<String, Object> map) {
		return sqlSession.insert("com.spring.hexagon.persistence.FundDAO.fundBuy",map);
	}
	
	
	
}
