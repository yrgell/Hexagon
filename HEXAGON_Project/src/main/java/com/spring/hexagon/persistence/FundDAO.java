package com.spring.hexagon.persistence;

import java.util.List;
import java.util.Map;

import com.spring.hexagon.vo.Fund_detailVO;
import com.spring.hexagon.vo.Fund_itemVO;

public interface FundDAO {
	
	// 상품 갯수
	public int getFundCnt();
	
	// 상품 리스트
	public List<Fund_itemVO> fundList();
	
	// 상품상세페이지
	public Fund_detailVO fundDetail(int fund_item_no);
	
	// 펀드구매
	public int fundBuy(Map<String,Object> insertFundMap);
	
	//맞춤추천 저장
	public int fundcustomisePro(Map<String,Object> map);
	
	//고객정보에 맞춤정보 저장
	public void updateInvInfo(String guestid);
	
	//맞춤추천 펀드리스트 불러오기
	public List<Fund_itemVO> getCustFund(String keyword);
	
	
	//펀드 구매 후 모집금액 누적
	public void addInvestedMoney(Map<String,Object> map);
	//투자완료된 금액 불러오기
	public Fund_detailVO getInvestedMoney(String fund_name);
	//투자 금액 초과시 펀드 상태 바꿔주기
	public void switchFundState(String fund_name);
	
	
	//투자 취소
	public int cancelFundBuy(Map<String,Object> map);
	
	//펀드 취소 후 누적금액 빼주기
	public void subInvestedMoney(Map<String,Object> map);
		
}
