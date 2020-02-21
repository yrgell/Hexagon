package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class Fund_detailVO {
	private int fund_name;				// 펀드 이름
	private int goal_Money;				// 모집금액
	private String purpose_Investment;	// 자금용도
	private String way_payback;			// 상환방식
	private int fund_payback_count;		// 지급회차
	private int fund_term;				// 투자기간
	private Timestamp execute_date;		// 실행일
	private float fund_text_rate;		// 세율
	private float fund_interest_rate;	// 수익률
	private String fund_type;			// 투자상품성향
	private String fund_grade;			// 상품등급
	private String fund_risk;			// 위험도
	private String fund_stability_info;	// 펀드 안정성정보
	private String fund_stability;		// 펀드 안정성
	private String fund_risk_info;		// 리스크 정보
	
	public int getFund_name() {
		return fund_name;
	}
	public void setFund_name(int fund_name) {
		this.fund_name = fund_name;
	}
	public int getGoal_Money() {
		return goal_Money;
	}
	public void setGoal_Money(int goal_Money) {
		this.goal_Money = goal_Money;
	}
	public String getPurpose_Investment() {
		return purpose_Investment;
	}
	public void setPurpose_Investment(String purpose_Investment) {
		this.purpose_Investment = purpose_Investment;
	}
	public String getWay_payback() {
		return way_payback;
	}
	public void setWay_payback(String way_payback) {
		this.way_payback = way_payback;
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
	public Timestamp getExecute_date() {
		return execute_date;
	}
	public void setExecute_date(Timestamp execute_date) {
		this.execute_date = execute_date;
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
	
	
}
