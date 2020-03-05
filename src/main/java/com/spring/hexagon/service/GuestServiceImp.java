package com.spring.hexagon.service;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.hexagon.persistence.GuestDAO;
import com.spring.hexagon.vo.GatherVO;
import com.spring.hexagon.vo.MemberVO;

@Service
public class GuestServiceImp implements GuestService{

	@Autowired
	GuestDAO gdao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	

	//아이디 중복 확인
	@Override
	public void idcheck(HttpServletRequest req, Model model) {
		String strId = req.getParameter("guestid");
		
		
		
		int cnt =0;
		//5단계. 중복된 아이디가 있는지 확인
		 cnt =gdao.idCheck2(strId);//1이 중복 
		
		
		//6단계. request나 session으로 처리 결과를 저장(jsp에 전달하기 위함)
		model.addAttribute("SelectCnt", cnt);		
		model.addAttribute("id", strId);			
		
		
		
	}
	
	//회원가입
	@Override
	public void joinPro(MultipartHttpServletRequest req, Model model) {
		//프로필사진
		MultipartFile file1 =req.getFile("profile_img");
		

		// 업로드할 파일이 위치하게될 물리적인 경로 
		String savePage = "C:\\java\\workspace\\HEXAGON_Project\\src\\main\\webapp\\resources\\images\\profiles\\";
		
		try {
			file1.transferTo(new File(savePage+file1.getOriginalFilename()));
		} catch(IOException e) { 
			e.printStackTrace(); 
		}
		
		String img1 = file1.getOriginalFilename();
		
		
		
		MemberVO vo= new MemberVO();
		
		String id = req.getParameter("guestid");
		String pw = req.getParameter("pass");
		String name = req.getParameter("name");
		String address = req.getParameter("address1")+"/"+req.getParameter("address2")+"/"+req.getParameter("address3");
		String mobile = req.getParameter("mobile");
		
		
		//비번 해쉬값
		String pw2=passwordEncoder.encode(pw);
		
		
		
		
		
		
		

		model.addAttribute("id", id);
		model.addAttribute("name", name);
		model.addAttribute("profile_img", img1);
		model.addAttribute("pass", pw2);
		model.addAttribute("mobile", mobile);
		model.addAttribute("address", address);
	}
	//회원가입 2
	@Override
	public void joinPro2(HttpServletRequest req, Model model) {
		//이메일인증키 생성
		StringBuffer temp = new StringBuffer();
		Random ran = new Random();
		for(int i =0; i<6; i++) {
			int rIndex = ran.nextInt(2);
			switch(rIndex){
				case 0:
					temp.append((char) ((int) (ran.nextInt(26))+ 65));
					break;
				case 1:
					temp.append((ran.nextInt(10)));
					break;
			}
		}
		String key = temp.toString();
		//이메일키 끝
		
		
		
		String favor = req.getParameter("category");
		String job = req.getParameter("job");
		System.out.println(favor+job+req.getParameter("work_year"));
		int work_year = Integer.parseInt(req.getParameter("work_year"));
		String  married= req.getParameter("married");
		String  children= req.getParameter("children");
		String  house= req.getParameter("house");
		String  car= req.getParameter("car");
		String  typehouse= req.getParameter("typehouse");

		String id = req.getParameter("guestid");
		String pw2 = req.getParameter("pass");
		String name = req.getParameter("name");
		String img1 = req.getParameter("profile_img");
		String address = req.getParameter("address");
		String mobile = req.getParameter("mobile");
		System.out.println("image : : : "+img1);
		if(img1.equals("")) {
			img1 = "default_image.png";
		}
		MemberVO vo= new MemberVO();
		vo.setGuestid(id);
		vo.setGuestid(id);
		vo.setPass(pw2);
		vo.setAddress(address);
		vo.setName(name);
		vo.setMobile(mobile);
		
		vo.setProfile_img(img1);
		
		vo.setFavor(favor);
		vo.setJob(job);
		vo.setWork_year(work_year);
		vo.setMarried(married);
		vo.setHouse(house);
		vo.setTypehouse(typehouse);
		vo.setCar(car);
		vo.setEmailcode(key);
		int cnt = gdao.insertMember(vo);
		
		if(cnt==1) {
			//이메일 보내기
			gdao.sendmail(id,key);
		}
		
		model.addAttribute("insertCnt", cnt);
	}

	
	
	//이메일 체크
	@Override
	public void emailChk(HttpServletRequest req, Model model) {
		String key = req.getParameter("key");
		
		System.out.println("SERV key: "+ key);
		
		//4단계. 다형성 적용, 싱글톤방식으로 DAO 객체 생성
		
		//5단계 회원수정처리
		int cnt = gdao.emailChk(key);
		
		//6단계. request나 session으로 처리 결과를 저장(jsp에 전달하기 위함)
		model.addAttribute("cnt", cnt);
	}
		

	
	

	//비밀번호찾기
	@Override
	public void findPwPro(HttpServletRequest req, Model model) {
		String pass = req.getParameter("pass");
		String pw = gdao.findPwPro(pass);
		
	}

	
	//로그인처리
	@Override
	public void loginPro(HttpServletRequest req, Model model) {
		
		
		
	}

	
	
	
}
