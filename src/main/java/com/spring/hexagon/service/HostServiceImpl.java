package com.spring.hexagon.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.hexagon.persistence.HostDAO;
import com.spring.hexagon.vo.HostVO;

@Service
public class HostServiceImpl implements HostService{

	@Autowired
	HostDAO hdao;
	
	//관리자 입장 고객 QnA 보기
	@Override
	public void hostI(HttpServletRequest req, Model model) {
		int pageSize = 10; 		//한페이지당 출력할 글 갯수
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
		
		//4단계. 다형성 적용, 싱글톤 방식으로 dao 객체 생성
		
		//5-1. QnA 갯수 구하기.
		cnt = hdao.getArticleCnt();
		
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
			//5-2단계. QnA 목록 조회
			HostVO vo = new HostVO();	//se = start + end 
			vo.setStart(start);
			vo.setEnd(end);
			
			List<HostVO> dtos1 = (List<HostVO>) hdao.getArticleList(vo);
			
			model.addAttribute("dtos1", dtos1);
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
		
		model.addAttribute("cnt", cnt);				//글갯수
		model.addAttribute("number", number);			//출력용 글번
		model.addAttribute("pageNum", pageNum);		//페이지번호
		
		if(cnt >0) {
			model.addAttribute("startPage", startPage); 		//시작페이지
			model.addAttribute("endPage", endPage);			//마지막페이지
			model.addAttribute("pageBlock", pageBlock);		//한 블럭당 페이지 갯수
			model.addAttribute("pageCount", pageCount);		//페이지 갯수
			model.addAttribute("currentPage", currentPage);	//현재페이지
		}
	}
	
	//관리자 고객 QnA 상세페이지
	@Override
	public void hostQnAView(HttpServletRequest req, Model model) {
		int qna_no = Integer.parseInt(req.getParameter("qna_no"));
		System.out.println("(ServiceImpl)hostQnAView-qna_no : "+qna_no);
		int selectCnt = 0;
		HostVO vo = new HostVO();
		
		vo.setQna_no(qna_no);
		HostVO vo1 = hdao.getQnA(vo);
		System.out.println("vo1.getQna_no"+vo1.getQna_no());
		if(vo1.getQna_no() == qna_no) {
			System.out.println("여기 타나?");
			selectCnt = 1;
			model.addAttribute("selectCnt",selectCnt);
			model.addAttribute("dto",vo1);
		}
	}

	//관리자 고객 QnA 답변(수정)
	@Override
	public void hostQnAmodifyPro(HttpServletRequest req, Model model) {
		int updateCnt = 0;
		System.out.println("(service)-hostQnAmodifyView");

		HostVO vo = new HostVO();
		vo.setQna_content(req.getParameter("qna_content"));
		vo.setQna_title(req.getParameter("qna_title"));
		vo.setQna_type(req.getParameter("qna_type"));
		vo.setQna_no(Integer.parseInt(req.getParameter("qna_no")));
		
		updateCnt = hdao.updateQnA(vo);
		
		System.out.println("(Service)updateCnt:"+updateCnt);
		model.addAttribute("deleteCnt",updateCnt);
	}
	
//////////////////////////////////////////////////////////////////////////////////////////////////
	
	//관리자 공지사항 목록 메인(추가,삭제,수정 버튼 포함)
	@Override
	public void hostN(HttpServletRequest req, Model model) {
		
		int pageSize = 10; 		//한페이지당 출력할 글 갯수
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
		
		//4단계. 다형성 적용, 싱글톤 방식으로 dao 객체 생성
		
		//5-1.공지사항 갯수 구하기
		cnt = hdao.getNoticeCount();
		
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
			//5-2단계. QnA 목록 조회
			HostVO vo = new HostVO();	//se = start + end 
			vo.setStart(start);
			vo.setEnd(end);
			
			List<HostVO> dtos = (List<HostVO>) hdao.getNoticeList(vo);
			
			model.addAttribute("dtos", dtos);
		}
		//6단계. request나 session에 처리결과를 저장(jsp에 전달하기 위함)
		
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
		
		model.addAttribute("cnt", cnt);				//글갯수
		model.addAttribute("number", number);			//출력용 글번
		model.addAttribute("pageNum", pageNum);		//페이지번호
		
		if(cnt >0) {
			model.addAttribute("startPage", startPage); 		//시작페이지
			model.addAttribute("endPage", endPage);			//마지막페이지
			model.addAttribute("pageBlock", pageBlock);		//한 블럭당 페이지 갯수
			model.addAttribute("pageCount", pageCount);		//페이지 갯수
			model.addAttribute("currentPage", currentPage);	//현재페이지
		}
		
	}

	//공지사항 등록 페이지
	@Override
	public void hostNoticeAddForm(HttpServletRequest req, Model model) {
		int pageNum = 1;
		model.addAttribute("pageNum", pageNum);
	}
	
	//공지사항 추가처리
	@Override
	public void hostNoticeAddPro(HttpServletRequest req, Model model) {
		int insertCnt = 0;
		
		HostVO vo = new HostVO();
		vo.setNb_type(req.getParameter("nb_type"));
		vo.setNb_content(req.getParameter("nb_content"));
		vo.setNb_title(req.getParameter("nb_title"));
		System.out.println("hostNoticeAddpro vo : " + vo.getNb_type()
							+vo.getNb_content()+vo.getNb_title());
		
		insertCnt = hdao.insertNotice(vo);
	
		model.addAttribute("insertCnt",insertCnt);
	}

	//관리자 공지사항 삭제 처리
	@Override
	public void hostNoticeDeletePro(HttpServletRequest req, Model model) {
		int deleteCnt = 0;
		int nb_num = Integer.parseInt(req.getParameter("nb_num"));
		deleteCnt = hdao.deleteNotice(nb_num);
		System.out.println("h-service-deletePro---nb_num:"+nb_num);
		model.addAttribute("deleteCnt", deleteCnt);
	}
	
	//관리자 공지사항 상세페이지(수정,삭제가 이루어지는 페이지)
	@Override
	public void hostNoticeView(HttpServletRequest req, Model model) {
		int nb_num = Integer.parseInt(req.getParameter("nb_num"));
		System.out.println("(ServiceImpl)hostNoticeView-nb_num : "+nb_num);
		int selectCnt = 0;
		HostVO vo = new HostVO();
		
		vo.setNb_num(nb_num);
		HostVO vo1 = hdao.getNotice(vo);
		if(vo1.getNb_num() == nb_num) {
			selectCnt = 1;
			model.addAttribute("selectCnt",selectCnt);
			model.addAttribute("dto",vo1);
		}
	}

	//관리자 공지사항 수정 처리
	@Override
	public void hostNoticeModifyPro(HttpServletRequest req, Model model) {
		int updateCnt = 0;
		System.out.println("(service)-hostNoticeModifyPro");

		HostVO vo = new HostVO();
		vo.setNb_content(req.getParameter("nb_content"));
		vo.setNb_title(req.getParameter("nb_title"));
		vo.setNb_type(req.getParameter("nb_type"));
		vo.setNb_num(Integer.parseInt(req.getParameter("nb_num")));
		
		updateCnt = hdao.updateNotice(vo);
		
		System.out.println("수정 제목:"+req.getParameter("nb_title"));
		System.out.println("수정 타입:"+req.getParameter("nb_type"));
		System.out.println("수정 내용:"+req.getParameter("nb_content"));
		
		System.out.println("(Service)updateCnt:"+updateCnt);
		model.addAttribute("deleteCnt",updateCnt);
	}

	//관리자 QnA 검색
	@Override
	public List<HostVO> listAll(String searchOption, String keyword) throws Exception {
		return hdao.listAll(searchOption, keyword);
	}
	//관리자 QnA 검색
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		return hdao.countArticle(searchOption, keyword);
	}

}
