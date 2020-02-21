package com.spring.hexagon.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.hexagon.persistence.FundDAO;
import com.spring.hexagon.vo.Fund_detailVO;
import com.spring.hexagon.vo.Fund_itemVO;


@Service
public class FundServiceImpl implements FundService{
	
	@Autowired
	FundDAO fdao;
	
	// 펀드상품 리스트
	@Override
	public void fundList(HttpServletRequest req, Model model) {
		System.out.println("----------- service : fundList -----------");
		// 상품갯수 가져오기
		int cnt = fdao.getFundCnt();
		System.out.println("펀드 상품갯수cnt: " + cnt);
		
		// 갯수가 0이상일때 내용가져오기
		if(cnt > 0) {
			List<Fund_itemVO> dtos = fdao.fundList();
			System.out.println("상품 갯수 dtos: " + dtos);
			model.addAttribute("dtos",dtos);
		}
		model.addAttribute("cnt",cnt);
		//소라 코멘트 :   cnt를 넘겨받아야 jsp파일에서 c:if조건문을 탈 수 있겠죠?> 읽고 지워주세요 성민님:)
		
		System.out.println("-----------------------------------------");
	}
	
	// 상품 상세페이지
	@Override
	public void fundDetailView(HttpServletRequest req, Model model) {
		System.out.println("----------- service : fundDetailView -----------");
		
		//펀드 상품 번호 가져오기 
		int fund_item_no = Integer.parseInt(req.getParameter("fund_item_no"));
		System.out.println("fund_item_no: " + fund_item_no);
		model.addAttribute("fund_item_no",fund_item_no); //addAttribute하는 이유가 뭘까용...??
		
		Fund_detailVO fdvo = fdao.fundDetail(fund_item_no);
		System.out.println("펀드 상품키에 따른 테이블 정보 fdvo: " + fdvo);
		model.addAttribute("fdvo",fdvo);
		System.out.println("-----------------------------------------");
	}
	
	// 투자하기
	@Override
	public void fundBuy(HttpServletRequest req, Model model) {
		
		System.out.println("----------- service : fundBuy -----------");
		
		//fundDetail.jsp에서 (펀드 이름/이메일아이디/세후 수익률 가져오기)
		String fund_name = req.getParameter("fund_name");
		System.out.println("fund_name : " + fund_name);
		
		String guestid = (String)req.getSession().getAttribute("guestid");
		System.out.println("guestid : " + guestid);
		
		float fund_after_tax = Float.parseFloat(req.getParameter("fund_after_tax"));
		System.out.println("fund_after_tax : " + fund_after_tax);
		
		float fund_interest_rate = Float.parseFloat(req.getParameter("fund_interest_rate"));
		System.out.println("fund_interest_rate : " + fund_interest_rate);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("fund_name", fund_name);
		map.put("guestid", guestid);
		map.put("fund_after_tax", fund_after_tax);
		map.put("fund_interest_rate", fund_interest_rate);
		
		int insertCnt = fdao.fundBuy(map);
		req.setAttribute("insertCnt", insertCnt);
		
		System.out.println("-----------------------------------------");
	}
	
	/* 구매 상세페이지 */
	@Override
	public void buyConfirm(HttpServletRequest req, Model model) {
		
	}

	
}
