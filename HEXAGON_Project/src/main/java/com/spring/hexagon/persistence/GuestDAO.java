package com.spring.hexagon.persistence;

import java.util.List;

import com.spring.hexagon.vo.EventVO;
import com.spring.hexagon.vo.MemberVO;

public interface GuestDAO {
	//해당 아이디의 정보
	public MemberVO idCheck(String strId) ;
	
	//아이디 중복체크
	public int idCheck2(String strId) ;
	
	//비번확인
	public String pwCheck(String strId) ;

	//회원가입
	public int insertMember(MemberVO vo);
	
	//인증메일 보내기
	public void sendmail(String ema1, String key);
	
	//이메일 인증
	public int emailChk(String key);
	
	//비번찾기
	public String findPwPro(String key);
	
	//이벤트 목록 갯수 가져오기
	public int getEventCnt();
	
	//이벤트 목록 뿌려주기
	public List<EventVO> eventList();

}
