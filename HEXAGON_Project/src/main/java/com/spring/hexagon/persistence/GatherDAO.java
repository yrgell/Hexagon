package com.spring.hexagon.persistence;

import java.util.List;

import com.spring.hexagon.vo.GatherVO;

public interface GatherDAO {

	
	//계 리스트
	public List<GatherVO> gath_list();
		

	//계 추가
	public int gath_add(GatherVO key);
	
	//계 삭제
	public int gath_del(int GATH_NUM);
}
