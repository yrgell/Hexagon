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

	//펀드 맞춤추천 저장하기
	@Override
	public int fundcustomisePro(Map<String, Object> map) {
		return sqlSession.insert("com.spring.hexagon.persistence.FundDAO.fundcustomisePro",map);
	}

	//고객정보에 맞춤정보 저장
	@Override
	public void updateInvInfo(String guestid) {
		sqlSession.update("com.spring.hexagon.persistence.FundDAO.updateInvInfo",guestid);
	}

	//맞춤추천 펀드 목록 불러오기
	@Override
	public List<Fund_itemVO> getCustFund(String keyword) {
		return sqlSession.selectList("com.spring.hexagon.persistence.FundDAO.getCustFund",keyword);
	}
	
	//투자완료된 금액 불러오기
	@Override
	public Fund_detailVO getInvestedMoney(String fund_name) {
		return sqlSession.selectOne("com.spring.hexagon.persistence.FundDAO.getInvestedMoney",fund_name);
	}
	//투자 금액 초과시 펀드 상태 바꿔주기
	@Override
	public void switchFundState(String fund_name) {
		sqlSession.update("com.spring.hexagon.persistence.FundDAO.switchFundState",fund_name);
	}
	
	//펀드 구매 후 모집금액 누적
	@Override
	public void addInvestedMoney(Map<String, Object> map) {
		sqlSession.update("com.spring.hexagon.persistence.FundDAO.addInvestedMoney",map);
	}

	//투자 취소
	@Override
	public int cancelFundBuy(Map<String, Object> map) {
		return sqlSession.delete("com.spring.hexagon.persistence.FundDAO.cancelFundBuy",map);
	}

	//펀드 취소 후 누적금액 빼주기
	@Override
	public void subInvestedMoney(Map<String, Object> map) {
		sqlSession.update("com.spring.hexagon.persistence.FundDAO.subInvestedMoney",map);
	}

	
}
