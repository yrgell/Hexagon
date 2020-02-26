package com.spring.hexagon.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.hexagon.persistence.MemberDAO;
import com.spring.hexagon.vo.Fund_buyVO;
import com.spring.hexagon.vo.Fund_itemVO;
import com.spring.hexagon.vo.GatherVO;
import com.spring.hexagon.vo.HostVO;
import com.spring.hexagon.vo.MemberVO;
import com.spring.hexagon.vo.StockVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO mdao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	//개인 정보 확인하기
	@Override
	public void memberInfo(MultipartHttpServletRequest req, Model model) {
		String guestid = (String)req.getParameter("guestid");
		System.out.println(guestid +"님의 개인정보로 이동합니다");
		
		MemberVO vo = mdao.memberInfo(guestid);
		model.addAttribute("vo",vo);
	}
	
	//개인 정보 수정하기 전 비밀번호 확인
	@Override
	public void pwdCheck(HttpServletRequest req, Model model) {
		
		String pwd = req.getParameter("pwd");
		String encryptPwd = passwordEncoder.encode(pwd);
		
		System.out.println("------------비밀번호----------");
		System.out.println("암호화 전 비밀번호 = "+pwd);
		System.out.println("암호화 후 비밀번호 =" + encryptPwd);
		System.out.println("---------------------------");
		
		int checkCnt = mdao.pwdCheck(encryptPwd);
		model.addAttribute("checkCnt",checkCnt);
	}
	
	//개인 정보 수정처리
	@Override
	public void modifyMemberInfo(HttpServletRequest req, Model model) {
		
		//개인정보 받아오기
		
		//주소
		//연락처
		
		MemberVO vo = new MemberVO();
		vo.setName(req.getParameter("name"));
		vo.setPass(req.getParameter("pass"));
		
		int modifyCnt = mdao.modifyMemberInfo(vo);
		model.addAttribute("modifyCnt",modifyCnt);
	}
	
	//개인 계 내역
	@Override
	public void myGatherList(HttpServletRequest req, Model model) {
		int pageSize = 5; 		//한페이지당 출력할 글 갯수
		int pageBlock = 5;		//한 블럭당 페이지 갯수
		
		int cnt = 0;			//글갯수
		int start = 0;			//현재 페이지 시작 글번호
		int end = 0;			//현재 페이지 마지막 글번호
		int number = 0;			//출력용 글번호
		String pageNum = "";	//페이지 번호
		int currentPage = 0;	//현재 페이지
		
		int pageCount = 0;		//페이지 갯수
		int startPage = 0;		//시작 페이지
		int endPage = 0;		//마지막 페이지
		
		
		//갯수 구하기.
		String guestid = (String)req.getSession().getAttribute("guestid");
		cnt = mdao.gatherCnt(guestid);
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";		//첫페이지를 1페이지로 지정
		}
		//글 30건 기준
		currentPage = Integer.parseInt(pageNum);			//현재 페이지 1
		System.out.println("currentPage : " + currentPage);
		
		//페이지 갯수 6  = (30 / 5) + (0)
		pageCount =(cnt / pageSize)+(cnt%pageSize > 0 ? 1:0); 	//페이지 갯수  + 나머지있으면 1을 줘라 글갯수가 한페이지에 5개로 한정돼있는데 cnt%pageSize해서 나머지가 0보다 크면 1을 아니면 0을  
		
		//현재페이지 시작 글번호(페이지별)
		//1=(1-1)*5+1
		start = (currentPage -1) * pageSize +1;
		
		//현재 페이지 마지막 글번호(페이지별)
		//5=1+5-1
		end = start + pageSize -1;
		
		System.out.println("start : " + start);
		System.out.println("end : " + end);
		
		//출력용 글번호
		//30 = 30 - (1-1) *5
		number = cnt - (currentPage -1) * pageSize;
		
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);
		
		if(cnt > 0) {
			//목록 조회
			Map<String, Object> map = new HashMap<String,Object>();
			map.put("start", start);
			map.put("end", end);
			
			List<GatherVO> dtos = mdao.myGatherList(map);
			
			model.addAttribute("dtos", dtos);
		}
		//시작페이지
		//1 = (1/3)*3 +1;
		startPage = (currentPage/pageBlock) * pageBlock +1;
		if(currentPage % pageBlock == 0 ) startPage -= pageBlock;
		System.out.println("startPage : " + startPage);
		
		//마지막페이지
		// 3 = 1+3 -1;
		endPage = startPage + pageBlock -1;
		if(endPage > pageCount) endPage = pageCount;
		
		System.out.println("endPage : " + endPage);		
		System.out.println("======================");
		
		model.addAttribute("gatherCnt", cnt);				//계 갯수
		model.addAttribute("number", number);		//출력용 글번
		model.addAttribute("pageNum", pageNum);		//페이지번호
		
		if(cnt >0) {
			model.addAttribute("startPage", startPage); 		//시작페이지
			model.addAttribute("endPage", endPage);			//마지막페이지
			model.addAttribute("pageBlock", pageBlock);		//한 블럭당 페이지 갯수
			model.addAttribute("pageCount", pageCount);		//페이지 갯수
			model.addAttribute("currentPage", currentPage);	//현재페이지
		}
	}
	
	//개인 구매내역(펀드)
	@Override
	public void myFundList(HttpServletRequest req, Model model) {
		int pageSize = 5; 		//한페이지당 출력할 글 갯수
		int pageBlock = 5;		//한 블럭당 페이지 갯수
		
		int cnt = 0;			//글갯수
		int start = 0;			//현재 페이지 시작 글번호
		int end = 0;			//현재 페이지 마지막 글번호
		int number = 0;			//출력용 글번호
		String pageNum = "";	//페이지 번호
		int currentPage = 0;	//현재 페이지
		
		int pageCount = 0;		//페이지 갯수
		int startPage = 0;		//시작 페이지
		int endPage = 0;		//마지막 페이지
		
		
		//갯수 구하기.
		String guestid = (String)req.getSession().getAttribute("guestid");
		cnt = mdao.fundCnt(guestid);
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";		//첫페이지를 1페이지로 지정
		}
		//글 30건 기준
		currentPage = Integer.parseInt(pageNum);			//현재 페이지 1
		System.out.println("currentPage : " + currentPage);
		
		//페이지 갯수 6  = (30 / 5) + (0)
		pageCount =(cnt / pageSize)+(cnt%pageSize > 0 ? 1:0); 	//페이지 갯수  + 나머지있으면 1을 줘라 글갯수가 한페이지에 5개로 한정돼있는데 cnt%pageSize해서 나머지가 0보다 크면 1을 아니면 0을  
		
		//현재페이지 시작 글번호(페이지별)
		//1=(1-1)*5+1
		start = (currentPage -1) * pageSize +1;
		
		//현재 페이지 마지막 글번호(페이지별)
		//5=1+5-1
		end = start + pageSize -1;
		
		System.out.println("start : " + start);
		System.out.println("end : " + end);
		
		//출력용 글번호
		//30 = 30 - (1-1) *5
		number = cnt - (currentPage -1) * pageSize;
		
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);
		
		if(cnt > 0) {
			//목록 조회
			Map<String, Object> map = new HashMap<String,Object>();
			map.put("start", start);
			map.put("end", end);
			
			List<Fund_buyVO> dtos = mdao.myFundList(map);
			
			model.addAttribute("dtos", dtos);
		}
		//시작페이지
		//1 = (1/3)*3 +1;
		startPage = (currentPage/pageBlock) * pageBlock +1;
		if(currentPage % pageBlock == 0 ) startPage -= pageBlock;
		System.out.println("startPage : " + startPage);
		
		//마지막페이지
		// 3 = 1+3 -1;
		endPage = startPage + pageBlock -1;
		if(endPage > pageCount) endPage = pageCount;
		
		System.out.println("endPage : " + endPage);		
		System.out.println("======================");
		
		model.addAttribute("fundCnt", cnt);				//계 갯수
		model.addAttribute("number", number);		//출력용 글번
		model.addAttribute("pageNum", pageNum);		//페이지번호
		
		if(cnt >0) {
			model.addAttribute("startPage", startPage); 		//시작페이지
			model.addAttribute("endPage", endPage);			//마지막페이지
			model.addAttribute("pageBlock", pageBlock);		//한 블럭당 페이지 갯수
			model.addAttribute("pageCount", pageCount);		//페이지 갯수
			model.addAttribute("currentPage", currentPage);	//현재페이지
		}
	}
	
	//개인 구매내역(주식)
	@Override
	public void myStockList(HttpServletRequest req, Model model) {
		System.out.println("----------- service : fundList -----------");
		// 상품갯수 가져오기
		String guestid = (String)req.getSession().getAttribute("guestid");
		int cnt = mdao.stockCnt(guestid);
		System.out.println("펀드 상품갯수cnt: " + cnt);
		
		// 갯수가 0이상일때 내용가져오기
		if(cnt > 0) {
			List<StockVO> dtos = mdao.myStockList();
			System.out.println("상품 갯수 dtos: " + dtos);
			model.addAttribute("dtos",dtos);
		}
		model.addAttribute("stockcnt",cnt);
		
		System.out.println("-----------------------------------------");
	}

	
	
}
