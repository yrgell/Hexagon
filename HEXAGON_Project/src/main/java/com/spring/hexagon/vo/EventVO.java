package com.spring.hexagon.vo;
public class EventVO {
	
	//멤버변수
	private int evb_no; 	/*이벤트 게시글 키 */
	private int evb_title; 	/*이벤트 제목 */
	private int evb_date; 	/*이벤트 등록일 */
	private int evb_term; 	/*이벤트 기간 */
	private int evb_state; 	/*이벤트 진행상태 */
	private int evb_content;/*이벤트 내용*/
	private int evb_count; 	/* 조회수 */
	
	//setter, getter
	protected int getEvb_no() {
		return evb_no;
	}
	protected void setEvb_no(int evb_no) {
		this.evb_no = evb_no;
	}
	protected int getEvb_title() {
		return evb_title;
	}
	protected void setEvb_title(int evb_title) {
		this.evb_title = evb_title;
	}
	protected int getEvb_date() {
		return evb_date;
	}
	protected void setEvb_date(int evb_date) {
		this.evb_date = evb_date;
	}
	protected int getEvb_term() {
		return evb_term;
	}
	protected void setEvb_term(int evb_term) {
		this.evb_term = evb_term;
	}
	protected int getEvb_state() {
		return evb_state;
	}
	protected void setEvb_state(int evb_state) {
		this.evb_state = evb_state;
	}
	protected int getEvb_content() {
		return evb_content;
	}
	protected void setEvb_content(int evb_content) {
		this.evb_content = evb_content;
	}
	protected int getEvb_count() {
		return evb_count;
	}
	protected void setEvb_count(int evb_count) {
		this.evb_count = evb_count;
	}
}