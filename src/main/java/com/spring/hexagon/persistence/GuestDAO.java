package com.spring.hexagon.persistence;

import com.spring.hexagon.vo.MemberVO;

public interface GuestDAO {
	//해당 아이디의 정보
	public MemberVO idCheck(String strId) ;
	
	//아이디 중복체크
	public int idCheck2(String strId) ;
	
	//회원가입
	public int insertMember(MemberVO vo);
	public int insertMember2(MemberVO vo);
	
	//인증메일 보내기
	public void sendmail(String ema1, String key);
	
	//이메일 인증
	public int emailChk(String key);
	
	//비번찾기
	public String findPwPro(String key);
}
