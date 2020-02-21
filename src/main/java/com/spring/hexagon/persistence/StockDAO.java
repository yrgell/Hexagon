package com.spring.hexagon.persistence;

import java.util.List;

import com.spring.hexagon.vo.Book_infoVO;
import com.spring.hexagon.vo.StockVO;

public interface StockDAO {
	//주식 상품 갯수 가져오기
	public int getstockCnt();
		
	//주식 상품 목록 가져오기
	public List<StockVO> getstockList();

	//주식 정보 불러오기
	public StockVO getStockDetail(String stock_code);
	
	//분석 정보 불러오기
	public Book_infoVO getBookInfo(String stock_code);
		
}
