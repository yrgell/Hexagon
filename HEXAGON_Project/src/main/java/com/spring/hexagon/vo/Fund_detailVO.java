package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class Fund_detailVO {
	
	private String fund_name;				// 펀드 이름
	private int fund_goal_Money;			// 모집금액
	private String fund_purpose;			// 자금용도
	private String fund_way_payback;		// 상환방식
	private int fund_payback_count;			// 지급회차
	private int fund_term;					// 투자기간
	private Timestamp fund_execute_date;	// 실행일
	private float fund_text_rate;			// 세율
	private float fund_interest_rate;		// 수익률
	private String fund_type; 				// 투자상품성향
	private String fund_detail_state;
	private String fund_grade;				// 상품등급
	private String fund_risk;				// 위험도
	private String fund_stability_info;		// 펀드 안정성정보
	private String fund_stability;			// 펀드 안정성
	private String fund_risk_info;			// 리스크 정보
	private int fund_item_no;				// 펀드 아이템 key
	private String fund_img;				// 펀드이미지
	private String fund_eximg;				// 펀드 설명
	private String fund_state;				// 펀드상태
	private int fund_investor_num;			// 투자자수
	private float fund_comission;			// 서비스이용료
	private int fund_invested_money;		//모집완료금액
	
	
	
	public int getFund_invested_money() {
		return fund_invested_money;
	}
	public void setFund_invested_money(int fund_invested_money) {
		this.fund_invested_money = fund_invested_money;
	}
	public String getFund_detail_state() {
		return fund_detail_state;
	}
	public void setFund_detail_state(String fund_detail_state) {
		this.fund_detail_state = fund_detail_state;
	}
	public String getFund_name() {
		return fund_name;
	}
	public void setFund_name(String fund_name) {
		this.fund_name = fund_name;
	}
	
	public int getFund_payback_count() {
		return fund_payback_count;
	}
	public void setFund_payback_count(int fund_payback_count) {
		this.fund_payback_count = fund_payback_count;
	}
	public int getFund_term() {
		return fund_term;
	}
	public void setFund_term(int fund_term) {
		this.fund_term = fund_term;
	}
	
	public float getFund_text_rate() {
		return fund_text_rate;
	}
	public void setFund_text_rate(float fund_text_rate) {
		this.fund_text_rate = fund_text_rate;
	}
	public float getFund_interest_rate() {
		return fund_interest_rate;
	}
	public void setFund_interest_rate(float fund_interest_rate) {
		this.fund_interest_rate = fund_interest_rate;
	}
	public String getFund_type() {
		return fund_type;
	}
	public void setFund_type(String fund_type) {
		this.fund_type = fund_type;
	}
	public String getFund_grade() {
		return fund_grade;
	}
	public void setFund_grade(String fund_grade) {
		this.fund_grade = fund_grade;
	}
	public String getFund_risk() {
		return fund_risk;
	}
	public void setFund_risk(String fund_risk) {
		this.fund_risk = fund_risk;
	}
	public String getFund_stability_info() {
		return fund_stability_info;
	}
	public void setFund_stability_info(String fund_stability_info) {
		this.fund_stability_info = fund_stability_info;
	}
	public String getFund_stability() {
		return fund_stability;
	}
	public void setFund_stability(String fund_stability) {
		this.fund_stability = fund_stability;
	}
	public String getFund_risk_info() {
		return fund_risk_info;
	}
	public void setFund_risk_info(String fund_risk_info) {
		this.fund_risk_info = fund_risk_info;
	}
	public int getFund_item_no() {
		return fund_item_no;
	}
	public void setFund_item_no(int fund_item_no) {
		this.fund_item_no = fund_item_no;
	}
	public String getFund_img() {
		return fund_img;
	}
	public void setFund_img(String fund_img) {
		this.fund_img = fund_img;
	}
	public String getFund_eximg() {
		return fund_eximg;
	}
	public void setFund_eximg(String fund_eximg) {
		this.fund_eximg = fund_eximg;
	}
	
	public String getFund_state() {
		return fund_state;
	}
	public void setFund_state(String fund_state) {
		this.fund_state = fund_state;
	}
	public int getFund_investor_num() {
		return fund_investor_num;
	}
	public void setFund_investor_num(int fund_investor_num) {
		this.fund_investor_num = fund_investor_num;
	}
	public float getFund_comission() {
		return fund_comission;
	}
	public void setFund_comission(int fund_comission) {
		this.fund_comission = fund_comission;
	}
	public int getFund_goal_Money() {
		return fund_goal_Money;
	}
	public void setFund_goal_Money(int fund_goal_Money) {
		this.fund_goal_Money = fund_goal_Money;
	}
	public String getFund_purpose() {
		return fund_purpose;
	}
	public void setFund_purpose(String fund_purpose) {
		this.fund_purpose = fund_purpose;
	}
	public String getFund_way_payback() {
		return fund_way_payback;
	}
	public void setFund_way_payback(String fund_way_payback) {
		this.fund_way_payback = fund_way_payback;
	}
	public Timestamp getFund_execute_date() {
		return fund_execute_date;
	}
	public void setFund_execute_date(Timestamp fund_execute_date) {
		this.fund_execute_date = fund_execute_date;
	}
	public void setFund_comission(float fund_comission) {
		this.fund_comission = fund_comission;
	}
	
	
}
