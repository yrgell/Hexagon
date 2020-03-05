package com.spring.hexagon.service;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.hexagon.persistence.GatherDAO;
import com.spring.hexagon.vo.Gath_buyVO;
import com.spring.hexagon.vo.Gath_rateVO;
import com.spring.hexagon.vo.GatherVO;

@Service
public class GatherServiceImp implements GatherService {

	@Autowired
	GatherDAO gtdao;
	
	//계 리스트
	@Override
	public void gath_list(HttpServletRequest req, Model model) {
		List<GatherVO> dtos = gtdao.gath_list();
		
		model.addAttribute("dtos", dtos);
	}
	//계 추가
	@Override
	public void gath_add(MultipartHttpServletRequest req, Model model) {
		//프로필사진
				MultipartFile file1 =req.getFile("gath_img");
				

				// 업로드할 파일이 위치하게될 물리적인 경로 
				String savePage = "C:\\java\\workspace\\HEXAGON_Project\\src\\main\\webapp\\resources\\images\\gath\\";
				
				try {
					file1.transferTo(new File(savePage+file1.getOriginalFilename()));
				} catch(IOException e) { 
					e.printStackTrace(); 
				}
				String img1 = file1.getOriginalFilename();
				
		int gATH_INTEREST_RATE = Integer.parseInt(req.getParameter("rate"));
		String gATH_EX = req.getParameter("GATH_EX");
		int gATH_TERM = Integer.parseInt(req.getParameter("GATH_TERM"));
		int gATH_GOAL = Integer.parseInt(req.getParameter("GATH_GOAL"));
		int gATH_MONTH_PAY = Integer.parseInt(req.getParameter("GATH_MONTH_PAY"));
		String gATH_NAME = req.getParameter("GATH_NAME");
		String gATH_CATEGORY = req.getParameter("GATH_CATEGORY");
		
		GatherVO vo = new GatherVO();
		
		vo.setGATH_CATEGORY(gATH_CATEGORY);
		vo.setGATH_EX(gATH_EX);
		vo.setGATH_GOAL(gATH_GOAL);
		vo.setGATH_IMG(img1);
		vo.setRate(gATH_INTEREST_RATE);
		vo.setGATH_MONTH_PAY(gATH_MONTH_PAY);
		vo.setGATH_NAME(gATH_NAME);
		vo.setGATH_TERM(gATH_TERM);
		
		int cnt = gtdao.gath_add(vo);
		
		model.addAttribute("cnt", cnt);
	}
	
	//계 상세페이지
	@Override
	public void gath_detail(HttpServletRequest req, Model model) {
		int GATH_NUM = Integer.parseInt(req.getParameter("GATH_NUM"));
		String gath_ref_date = req.getParameter("gath_ref_date");
		
		GatherVO vo = gtdao.gath_detail(GATH_NUM);
		int key =vo.getRate();
		Gath_rateVO rate = gtdao.gath_detail2(key);
		model.addAttribute("vo", vo);
		model.addAttribute("gath_ref_date", gath_ref_date);
		model.addAttribute("GATH_NUM", GATH_NUM);
		model.addAttribute("rate", rate);
	}
	
	//계 삭제
	@Override
	public void gath_del(HttpServletRequest req, Model model) {
		int GATH_NUM=Integer.parseInt(req.getParameter("GATH_NUM"));
		int cnt =gtdao.gath_del(GATH_NUM);
		model.addAttribute("cnt", cnt);
	}
	
	//계 참가
	@Override
	public void gath_join(HttpServletRequest req, Model model) {
		Timestamp	gATH_REF_DATE=Timestamp.valueOf(req.getParameter("gath_ref_date"));
		String gUESTID=(String) req.getSession().getAttribute("guestid");
		int gATH_NUM=Integer.parseInt(req.getParameter("GATH_NUM"));
		int GATH_MONTH_PAY=Integer.parseInt(req.getParameter("GATH_MONTH_PAY"));
		
		float gATH_ACTUAL_RATE=Float.parseFloat(req.getParameter("GATH_ACTUAL_RATE"));
		String gATH_TURN=req.getParameter("GATH_TURN");
		
		//if문으로 이미 참가한 계인지 확인 하기
		
		Gath_buyVO vo = new Gath_buyVO();	
		
		vo.setGATH_ACTUAL_RATE(gATH_ACTUAL_RATE);
		vo.setGATH_NUM(gATH_NUM);
		vo.setGATH_MONTH_PAY(GATH_MONTH_PAY);
		vo.setGath_ref_date(gATH_REF_DATE);
		vo.setGATH_TURN(gATH_TURN);
		vo.setGUESTID(gUESTID);
		int cnt=0;
		int chk=gtdao.gath_chk(vo);
		
		if(chk==0) {
		//참여테이블에 추가
			cnt = gtdao.gath_join(vo);
			
			String turn = "";
			
			switch(req.getParameter("GATH_TURN")) {
		    case "1" : turn="first";
		         break;
		    case "2" : turn="second";
	        break;
		    case "3" : turn="third";
	        break;
		    case "4" : turn="fourth";
	        break;
		    case "5" : turn="fifth";
	        break;
		}
			
			Map<String,Object> map = new HashMap<String,Object>();
			
			map.put("GATH_NUM", Integer.parseInt(req.getParameter("GATH_NUM")));
			map.put("GATH_TURN", turn);
			map.put("guestid", gUESTID);
			
			//해당 계의 순번에 아이디 추가
			gtdao.gath_join2(map);
			
			//계 인원체크
			int count =gtdao.gath_count(gATH_NUM);
			if(count ==5) {
				//계 모집완료
				gtdao.gath_compl(gATH_NUM);
			}
		}else {
			cnt=2;
			System.out.println("ddddddddddddd");
		}
		model.addAttribute("cnt", cnt);
		
	}
	
	//회원 계 목록
	@Override
	public void gath_melist(HttpServletRequest req, Model model) {
		String gUESTID=(String) req.getSession().getAttribute("guestid");
		
		List<GatherVO> dtos = gtdao.gath_melist(gUESTID);
		
		model.addAttribute("dtos", dtos);
		
		
	}
		
	//계 퇴장
	@Override
	public void gath_out(HttpServletRequest req, Model model) {
		int GATH_NUM=Integer.parseInt(req.getParameter("GATH_NUM"));
		String gUESTID=(String) req.getSession().getAttribute("guestid");
		
		Gath_buyVO vo = new Gath_buyVO();
		vo.setGATH_NUM(GATH_NUM);
		vo.setGUESTID(gUESTID);
		String GATH_TURN = gtdao.gath_turn(vo);
		
		switch (GATH_TURN) { 
		case "1":  
			GATH_TURN="first";
			break;
			
		case "2":  
			GATH_TURN="second";
			break;
			
		case "3":  
			GATH_TURN="third";
			break;
			
		case "4":  
			GATH_TURN="fourth";
			break;
			
		case "5":  
			GATH_TURN="fifth";
			break;
		}
		
		
		int cnt = gtdao.gath_out(vo);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("GATH_NUM", GATH_NUM);
		map.put("GATH_TURN",GATH_TURN);
		
		gtdao.gath_out2(map);
		
		model.addAttribute("cnt", cnt);
		
	}
	
	
	


}
