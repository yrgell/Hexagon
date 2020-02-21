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
}
