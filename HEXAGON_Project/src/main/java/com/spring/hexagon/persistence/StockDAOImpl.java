package com.spring.hexagon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.Book_infoVO;
import com.spring.hexagon.vo.StockVO;

@Repository
public class StockDAOImpl implements StockDAO{
	
	@Autowired
	SqlSession sqlsession;
	
	//주식 상품 갯수 불러오기
	@Override
	public int getstockCnt() {
		return sqlsession.selectOne("com.spring.hexagon.persistence.StockDAO.getstockCnt");
	}
	
	//주식 상품 목록 불러오기
	@Override
	public List<StockVO> getstockList() {
		return sqlsession.selectList("com.spring.hexagon.persistence.StockDAO.getstockList");
	}

	//주식 정보 불러오기
	@Override
	public StockVO getStockDetail(String stock_code) {
		return sqlsession.selectOne("com.spring.hexagon.persistence.StockDAO.getStockDetail",stock_code);
	}

	//재무재표 불러오기
	@Override
	public Book_infoVO getBookInfo(String stock_code) {
		return sqlsession.selectOne("com.spring.hexagon.persistence.StockDAO.getBookInfo",stock_code);
	}
}
