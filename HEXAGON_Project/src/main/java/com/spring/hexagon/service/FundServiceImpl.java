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
	
	private static final int HashMap = 0;
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
	
	// 펀드 정보 가지고 가기(투자하기 버튼)
	@Override
	public void getFundInfoBuy(HttpServletRequest req, Model model) {
		
		System.out.println("----------- service : fundBuy -----------");
		
		//fundDetail.jsp에서 (펀드 이름/이메일아이디/세후 수익률 가져오기)
		String fund_name = req.getParameter("fund_name");
		System.out.println("fund_name : " + fund_name);
		
		float fund_after_tax = Float.parseFloat(req.getParameter("fund_after_tax"));
		System.out.println("fund_after_tax : " + fund_after_tax);
		
		float fund_interest_rate = Float.parseFloat(req.getParameter("fund_interest_rate"));
		System.out.println("fund_interest_rate : " + fund_interest_rate);
		
		model.addAttribute("fund_name", fund_name);
		model.addAttribute("fund_after_tax", fund_after_tax);
		model.addAttribute("fund_interest_rate", fund_interest_rate);
		
		System.out.println("-----------------------------------------");
	}
	
	//펀드 투자원금 입력 페이지 정보 가지고 가기
	@Override
	public void getFundMoneyInfo(HttpServletRequest req, Model model) {
		int fund_invest_money = Integer.parseInt(req.getParameter("fund_invest_money"));
		float fund_after_tax = Float.parseFloat(req.getParameter("fund_after_tax"));
		float fund_interest_rate = Float.parseFloat(req.getParameter("fund_interest_rate"));
		String fund_name = req.getParameter("fund_name");
		
		model.addAttribute("fund_name",fund_name);
		model.addAttribute("fund_after_tax",fund_after_tax);
		model.addAttribute("fund_interest_rate",fund_interest_rate);
		model.addAttribute("fund_invest_money",fund_invest_money);
	}
	//펀드 구매하기
	@Override
	public void buyFundPro(HttpServletRequest req, Model model) {
		int fund_invest_money = Integer.parseInt(req.getParameter("fund_invest_money"));
		float fund_after_tax = Float.parseFloat(req.getParameter("fund_after_tax"));
		float fund_interest_rate = Float.parseFloat(req.getParameter("fund_interest_rate"));
		String fund_name = req.getParameter("fund_name");
		String fund_buy_state = req.getParameter("fund_buy_state");
		String guestid = (String) req.getSession().getAttribute("guestid");
		
		System.out.println(guestid);
		System.out.println(fund_buy_state);
		System.out.println(fund_name);
		System.out.println(fund_interest_rate);
		System.out.println(fund_after_tax);
		System.out.println(fund_invest_money);
		
		
		Map<String,Object> insertFundMap = new HashMap<String,Object>();
		
		insertFundMap.put("fund_invest_money", fund_invest_money);
		insertFundMap.put("fund_after_tax",fund_after_tax);
		insertFundMap.put("fund_interest_rate",fund_interest_rate);
		insertFundMap.put("fund_name",fund_name);
		insertFundMap.put("fund_buy_state",fund_buy_state);
		insertFundMap.put("guestid", guestid);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("fund_invest_money", fund_invest_money);
		map.put("fund_name", fund_name);
		map.put("fund_buy_state", fund_buy_state);
		
		int insertCnt = fdao.fundBuy(insertFundMap);
		if(insertCnt !=0) {
			fdao.addInvestedMoney(map);
 		}
		
		Fund_detailVO dvo = fdao.getInvestedMoney(fund_name);
		if(dvo.getFund_invested_money() >= dvo.getFund_goal_Money()) {
			fdao.switchFundState(fund_name);
		}
		model.addAttribute("insertCnt",insertCnt);
	}

	//맞춤투자 입력
	@Override
	public void fundcustomisePro(HttpServletRequest req, Model model) {
		int inv_profit_taking = Integer.parseInt(req.getParameter("inv_profit_taking"));
		int inv_risk_taking = Integer.parseInt(req.getParameter("inv_risk_taking"));
		String inv_purpose = req.getParameter("inv_purpose");
		System.out.println(inv_purpose);
		int inv_experience = Integer.parseInt(req.getParameter("inv_experience"));
		String inv_term = req.getParameter("inv_term");
		String guestid = (String) req.getSession().getAttribute("guestid");
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("inv_profit_taking", inv_profit_taking);
		map.put("inv_risk_taking", inv_risk_taking);
		map.put("inv_purpose", inv_purpose);
		map.put("inv_experience", inv_experience);
		map.put("inv_term", inv_term);
		
		//값넣어주기
		int insertCnt = fdao.fundcustomisePro(map);
		if(insertCnt !=0) {
			String preference = null;
			List<Fund_itemVO> dtos = null;
			String keyword = null;
			//투자성향 : 높을수록 위험추구형
			int inv_summary = inv_profit_taking+inv_risk_taking+inv_experience;
			if(inv_summary<6) {
				preference = "안정추구형";
				keyword = preference.substring(0,2);
				dtos = fdao.getCustFund(keyword);
			}else if(inv_summary>=6 && inv_summary<18) {
				preference = "안정, 위험 중립형";
				keyword = preference.substring(7,9);
				dtos = fdao.getCustFund(keyword);
			}else {
				preference = "위험추구형";
				keyword = preference.substring(0,2);
				dtos = fdao.getCustFund(keyword);
			}
			model.addAttribute("preference", preference);
			System.out.println(dtos.toString());
			model.addAttribute("dtos", dtos);
			//고객 정보에 성향입력해주기
			fdao.updateInvInfo(guestid);
		}
		
		model.addAttribute("guestid", guestid);
	}
	
	
	


	
}
