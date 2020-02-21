package com.spring.hexagon.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.hexagon.persistence.StockDAOImpl;
import com.spring.hexagon.vo.Book_infoVO;
import com.spring.hexagon.vo.StockVO;

@Service
public class StockServiceImpl implements StockService{
	
	@Autowired
	StockDAOImpl sdao;
	
	//주식 목록 페이지
	@Override
	public void stockList(HttpServletRequest req, Model model) {
		
		System.out.println("--------serImpl : stockList--------");
		
		//주식상품 목록의 갯수를 파악하는 메소드
		int stockCnt = sdao.getstockCnt();
		System.out.println("stockCnt :" + stockCnt);
		if(stockCnt>0) {
			//주식상품 목록 받아오는 메소드
			List<StockVO> dtos = sdao.getstockList();
			model.addAttribute("dtos", dtos);
			System.out.println("dtos : " + dtos);
		}
		model.addAttribute("cnt", stockCnt);
		System.out.println("-----------------------------------");
		
	}

	//주식 상세페이지 값 가져오기
	@Override
	public void stockDetail(HttpServletRequest req, Model model) {
		//조회하려는 주식 코드값 받아오기
		String stock_code = req.getParameter("stock_code");
		System.out.println(stock_code);
		//주식 정보 가져오기
		StockVO svo = sdao.getStockDetail(stock_code);
		
		//재무재표 불러오기
		Book_infoVO bvo = sdao.getBookInfo(stock_code);
		//재무재표 값 중 필요한 부분 가져오기
		svo.setNet_in(bvo.getNet_in());
		svo.setSales(bvo.getSales());
		svo.setOp(bvo.getOp());
		// 투자정보 만들기
		//유동성비율
		System.out.println(bvo.getCa());
		float ca_nca = bvo.getCa()/bvo.getNca();
		System.out.println(ca_nca);
		svo.setCa_nca(ca_nca);//유동비율
		float ca_ivn_cl = (bvo.getCa()+bvo.getInventories())/bvo.getCl();
		System.out.println(ca_ivn_cl);
		svo.setCa_ivn_cl(ca_ivn_cl);//당좌비율
		//레버리지비율
		float cap_asset = bvo.getTotal_capital()/bvo.getTotal_asset();
		System.out.println(cap_asset);
		svo.setCap_asset(cap_asset);//자기자본비율
		float li_cap = bvo.getTotal_liabilities()/bvo.getTotal_capital();
		System.out.println(li_cap);
		svo.setLi_cap(li_cap);//부채비율
		float nca_cap = bvo.getNca()/bvo.getTotal_capital();
		System.out.println(nca_cap);
		svo.setNca_cap(nca_cap);//비유동비율
		//수익성비율
		float gp_sales = bvo.getGp()/bvo.getSales();
		System.out.println(gp_sales);
		svo.setGp_sales(gp_sales);//매출총이익률
		float netin_sales = bvo.getNet_in()/bvo.getSales();
		System.out.println(netin_sales);
		svo.setNetin_sales(netin_sales);//매출 순이익률
		float op_sales = bvo.getOp()/bvo.getSales();
		System.out.println(op_sales);
		svo.setOp_sales(op_sales);//매출 영업이익률
		//활동성비율
		float sales_cap = bvo.getSales()/bvo.getTotal_capital();
		System.out.println(sales_cap);
		svo.setSales_cap(sales_cap);//총자산 회전률
		float sales_inv = bvo.getSales()/bvo.getInventories();
		System.out.println(sales_inv);
		svo.setSales_inv(sales_inv);//재고자산 회전률
		//ROE
		float roe = bvo.getNet_in()/bvo.getTotal_capital();
		System.out.println(roe);
		svo.setRoe(roe);//자기자본이익률
		//현금창출능력
		int ebitda = bvo.getOp()+bvo.getAia()+bvo.getCd();
		System.out.println(ebitda);
		svo.setEbitda(ebitda);//현금 창출능력
		
		//값전달
		model.addAttribute("svo", svo);
		model.addAttribute("bvo", bvo);
	}


}
