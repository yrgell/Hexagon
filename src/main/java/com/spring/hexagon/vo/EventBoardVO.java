package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class EventBoardVO{

	//멤버변수
	private int evb_num; 		//이벤트 게시글 번호
	private String evb_title;	//이벤트 제목
	private Timestamp evb_date;	//이벤트 등록일
	private int evb_term;		//이벤트 기간
	private int evb_state;		//이벤트 진행상태
	private String evb_content;	//이벤트 내용
	private int evb_count;		//조회수
	
	
	public int getEvb_num() {
		return evb_num;
	}
	public void setEvb_num(int evb_num) {
		this.evb_num = evb_num;
	}
	public String getEvb_title() {
		return evb_title;
	}
	public void setEvb_title(String evb_title) {
		this.evb_title = evb_title;
	}
	public Timestamp getEvb_date() {
		return evb_date;
	}
	public void setEvb_date(Timestamp evb_date) {
		this.evb_date = evb_date;
	}
	public int getEvb_term() {
		return evb_term;
	}
	public void setEvb_term(int evb_term) {
		this.evb_term = evb_term;
	}
	public int getEvb_state() {
		return evb_state;
	}
	public void setEvb_state(int evb_state) {
		this.evb_state = evb_state;
	}
	public String getEvb_content() {
		return evb_content;
	}
	public void setEvb_content(String evb_content) {
		this.evb_content = evb_content;
	}
	public int getEvb_count() {
		return evb_count;
	}
	public void setEvb_count(int evb_count) {
		this.evb_count = evb_count;
	}
}
