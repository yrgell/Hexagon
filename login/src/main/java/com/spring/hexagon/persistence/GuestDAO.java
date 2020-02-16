package com.spring.hexagon.persistence;

import com.spring.hexagon.vo.MemberVO;

public interface GuestDAO {
	//해당 아이디의 정보
	public MemberVO idCheck(String strId) ;
	
	//아이디 중복체크
	public int idCheck2(String strId) ;
	
	//회원가입
	public int insertMember(MemberVO vo);
}
