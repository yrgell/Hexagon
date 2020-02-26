package com.spring.hexagon.persistence;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.hexagon.vo.Fund_buyVO;
import com.spring.hexagon.vo.Fund_detailVO;
import com.spring.hexagon.vo.Fund_itemVO;
import com.spring.hexagon.vo.GatherVO;
import com.spring.hexagon.vo.MemberVO;
import com.spring.hexagon.vo.StockVO;

public interface MemberDAO {
	
	//개인 정보 확인하기
	public MemberVO memberInfo(String guestid);
	
	//개인 정보 수정하기 전 비밀번호 확인
	public int pwdCheck(String pwd);
	
	//개인 정보 수정처리
	public int modifyMemberInfo(MemberVO vo);
	
	//계 갯수
	public int gatherCnt(String guestid);
	//개인 계 내역
	public List<GatherVO> myGatherList(Map<String,Object> map);
	
	//펀드 갯수
	public int fundCnt(String guestid);
	//개인 구매내역(펀드)
	public List<Fund_buyVO> myFundList(Map<String,Object> map);
	
	//주식 갯수
	public int stockCnt(String guestid);
	//개인 구매내역(주식)
	public List<StockVO> myStockList();
	
	//지급 스케줄
	
	//알림 관리
	
	//1:1 문의
		
}
