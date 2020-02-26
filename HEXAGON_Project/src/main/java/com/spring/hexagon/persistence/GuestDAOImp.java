package com.spring.hexagon.persistence;

import java.util.List;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Repository;

import com.spring.hexagon.vo.EventVO;
import com.spring.hexagon.vo.GatherVO;
import com.spring.hexagon.vo.MemberVO;

@Repository
public class GuestDAOImp implements GuestDAO{

	@Autowired
	SqlSession sqls;
	
	@Autowired
    private JavaMailSender mailSender; // xml에 등록한 bean autowired
	
	
	
	@Override
	public MemberVO idCheck(String strId) {
		
		return sqls.getMapper(GuestDAO.class).idCheck(strId);
	}

	
	@Override
	public int idCheck2(String strId) {
		
		return sqls.getMapper(GuestDAO.class).idCheck2(strId);
	}

	@Override
	public String pwCheck(String strId) {
		// TODO Auto-generated method stub
		return sqls.getMapper(GuestDAO.class).pwCheck(strId);
	}
	
	@Override
	public int insertMember(MemberVO vo) {
		return sqls.getMapper(GuestDAO.class).insertMember(vo);
	}

	@Override
	public int emailChk(String key) {
		return sqls.getMapper(GuestDAO.class).emailChk(key);
	}
	
	//이멜보내기
	@Override
	public void sendmail(String ema1, String key) {

		
		try{
            MimeMessage message = mailSender.createMimeMessage();
            String txt = "회원가입 인증 메일입니다. 링크를 눌러 회원가입을 완료하세요."  
			+ "<a href='localhost/hexagon/emailChk.gu?key=" + key + "'>click</a>";
            System.out.println(txt);
          message.setSubject("회원가입 인증 메일입니다.");
          message.setText(txt, "UTF-8", "html");
          message.setFrom(new InternetAddress("admin@mss.com"));
          message.addRecipient(RecipientType.TO, new InternetAddress(ema1));
          mailSender.send(message);
		}catch(Exception e){
		          e.printStackTrace();
		}  
	
	
	}


	@Override
	public String findPwPro(String key) {
		return null;
	}


	//이벤트 갯수 가져오기
	@Override
	public int getEventCnt() {
		return sqls.getMapper(GuestDAO.class).getEventCnt();
	}
	
	//이벤트 목록 가져오기
	@Override
	public List<EventVO> eventList() {
		return sqls.getMapper(GuestDAO.class).eventList();
	}


	
	
}
