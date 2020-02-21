package com.spring.hexagon.persistence;

import java.util.List;

import com.spring.hexagon.vo.Fund_detailVO;

public interface FundDAO {
	
	// 상품 갯수
	public int getFunCnt();
	
	// 상품 리스트
	public List<Fund_detailVO> fundList();
}
