package com.spring.hexagon.persistence;

import java.util.List;
import java.util.Map;

import com.spring.hexagon.vo.Gath_buyVO;
import com.spring.hexagon.vo.Gath_rateVO;
import com.spring.hexagon.vo.GatherVO;

public interface GatherDAO {

	
	//계 리스트
	public List<GatherVO> gath_list();
		
	//계 상세
	public GatherVO gath_detail(int key);
	public Gath_rateVO gath_detail2(int key);

	//계 추가
	public int gath_add(GatherVO key);
	
	//계 삭제
	public int gath_del(int gATH_NUM);
	
	//계 참가
	public int gath_join(Gath_buyVO vo);
	public int gath_join2(Map<String,Object> map);
	public int gath_chk(Gath_buyVO vo);
	
	//인원체크
	public int gath_count(int gath_num);
	
	//계 모집완료
	public int gath_compl(int gath_num);
	
	//회원 계 목록
	public List<GatherVO> gath_melist(String gUESTID);
	
	//계 퇴장
	public String gath_turn(Gath_buyVO vo);
	public int gath_out(Gath_buyVO vo);
	public int gath_out2(Map<String,Object> map);
}
