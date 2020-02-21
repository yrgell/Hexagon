package com.spring.hexagon.vo;

import java.sql.Timestamp;
import java.util.Map;

public class HostVO {

	//QnAVO
	private int qna_no;					//  NUMBER(8) PRIMARY KEY,
	private	String guestid;				//	guestid         VARCHAR2(50),
	private	String qna_type;				//	qa_type         VARCHAR2(50),
	private	String qna_title;				//	qa_title        VARCHAR2(255),
	private	String qna_content;			//	qa_content      VARCHAR2(4000),
	private	String qna_pass;			//	qap_pass        VARCHAR2(50),
	private	Timestamp qna_date;				//	qap_date        TIMESTAMP,
	private int start;	// 어떻게 쓸까1
	private int end;	// 어떻게 쓸까2
	
	//NoticeVO
	private int nb_num;	//          NUMBER(10) PRIMARY KEY ,
	private String nb_title;        	//VARCHAR2(50) ,
	private Timestamp nb_date;        	 //TIMESTAMP,
	private int nb_state;      	  //NUMBER(1) default 0,
	private String nb_content;   	 //  VARCHAR2(100),
	private int nb_count;      	 // NUMBER(10) default 0,
	private String nb_type;       	 // VARCHAR2(50)
	
	

////////////////////////////////////////////////////
////////// 관리자 QnAVO setter,getter ////////////////	

	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public String getGuestid() {
		return guestid;
	}
	public void setGuestid(String guestid) {
		this.guestid = guestid;
	}
	public String getQna_type() {
		return qna_type;
	}
	public void setQna_type(String qna_type) {
		this.qna_type = qna_type;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_pass() {
		return qna_pass;
	}
	public void setQna_pass(String qna_pass) {
		this.qna_pass = qna_pass;
	}
	public Timestamp getQna_date() {
		return qna_date;
	}
	public void setQna_date(Timestamp qna_date) {
		this.qna_date = qna_date;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
	
////////////////////////////////////////////
/////// 관리자 NoticeVO setter,getter ////////
	
	public int getNb_num() {
		return nb_num;
	}
	public void setNb_num(int nb_num) {
		this.nb_num = nb_num;
	}
	public String getNb_title() {
		return nb_title;
	}
	public void setNb_title(String nb_title) {
		this.nb_title = nb_title;
	}
	public Timestamp getNb_date() {
		return nb_date;
	}
	public void setNb_date(Timestamp nb_date) {
		this.nb_date = nb_date;
	}
	public int getNb_state() {
		return nb_state;
	}
	public void setNb_state(int nb_state) {
		this.nb_state = nb_state;
	}
	public String getNb_content() {
		return nb_content;
	}
	public void setNb_content(String nb_content) {
		this.nb_content = nb_content;
	}
	public int getNb_count() {
		return nb_count;
	}
	public void setNb_count(int nb_count) {
		this.nb_count = nb_count;
	}
	public String getNb_type() {
		return nb_type;
	}
	public void setNb_type(String nb_type) {
		this.nb_type = nb_type;
	}
	
////////////////////////////////////////////////////

	

	
	
	
}
