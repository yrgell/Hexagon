package com.spring.hexagon.persistence;

import java.util.List;

import com.spring.hexagon.vo.MemberVO;

public interface HostDAO {
	//회원 조회
	public List<MemberVO> userList(String name);

}
