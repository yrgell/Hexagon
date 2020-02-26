package com.spring.hexagon.persistence;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.Fund_buyVO;
import com.spring.hexagon.vo.Fund_detailVO;
import com.spring.hexagon.vo.Fund_itemVO;
import com.spring.hexagon.vo.GatherVO;
import com.spring.hexagon.vo.MemberVO;
import com.spring.hexagon.vo.StockVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	

	//개인 정보 확인하기
	@Override
	public MemberVO memberInfo(String guestid) {
		return sqlSession.selectOne("com.spring.hexagon.persistence.memberInfo",guestid);
	}
	
	//개인 정보 수정하기 전 비밀번호 확인
	@Override
	public int pwdCheck(String pwd) {
		return sqlSession.selectOne("com.spring.hexagon.persistence.pwdCheck",pwd);
	}
	
	//개인 정보 수정처리
	@Override
	public int modifyMemberInfo(MemberVO vo) {
		return sqlSession.update("com.spring.hexagon.persistence.modifyMemberInfo",vo);
	}
	
	//계 갯수
	@Override
	public int gatherCnt(String guestid) {
		return sqlSession.selectOne("com.spring.hexagon.persistence.gatherCnt",guestid);
	}
	//개인 계 내역
	@Override
	public List<GatherVO> myGatherList(Map<String, Object> map) {
		return sqlSession.selectList("com.spring.hexagon.persistence.myGatherList",map);
	}
	
	//펀드 갯수
	@Override
	public int fundCnt(String guestid) {
		return sqlSession.selectOne("com.spring.hexagon.persistence.fundCnt",guestid);
	}
	//개인 구매내역(펀드)
	@Override
	public List<Fund_buyVO> myFundList(Map<String, Object> map) {
		return sqlSession.selectList("com.spring.hexagon.persistence.myFundList",map);
	}
	
	//주식 갯수
	@Override
	public int stockCnt(String guestid) {
		return sqlSession.selectOne("com.spring.hexagon.persistence.stockCnt",guestid);
	}
	
	//개인 구매내역(주식)
	@Override
	public List<StockVO> myStockList() {
		return sqlSession.selectList("com.spring.hexagon.persistence.myStockList");
	}


	
	
}
