package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class Fund_buyVO {
	private int fund_buy_no;			// 펀드 구매 key
	private String fund_name;			// 펀드 이름
	private String guestid;				// 이메일아이디
	private Timestamp fund_buy_date;	// 구매일자
	private float fund_after_tax;		// 세후 수익률
	private float fund_interest_rate;	// 수익률
	private int fund_invest_money;		// 투자원금
	private String fund_buy_state;		// 투자상태
	
	public int getFund_buy_no() {
		return fund_buy_no;
	}
	public void setFund_buy_no(int fund_buy_no) {
		this.fund_buy_no = fund_buy_no;
	}
	public String getFund_name() {
		return fund_name;
	}
	public void setFund_name(String fund_name) {
		this.fund_name = fund_name;
	}
	public String getGuestid() {
		return guestid;
	}
	public void setGuestid(String guestid) {
		this.guestid = guestid;
	}
	public Timestamp getFund_buy_date() {
		return fund_buy_date;
	}
	public void setFund_buy_date(Timestamp fund_buy_date) {
		this.fund_buy_date = fund_buy_date;
	}
	public float getFund_after_tax() {
		return fund_after_tax;
	}
	public void setFund_after_tax(float fund_after_tax) {
		this.fund_after_tax = fund_after_tax;
	}
	public float getFund_interest_rate() {
		return fund_interest_rate;
	}
	public void setFund_interest_rate(float fund_interest_rate) {
		this.fund_interest_rate = fund_interest_rate;
	}
	public int getFund_invest_money() {
		return fund_invest_money;
	}
	public void setFund_invest_money(int fund_invest_money) {
		this.fund_invest_money = fund_invest_money;
	}
	public String getFund_buy_state() {
		return fund_buy_state;
	}
	public void setFund_buy_state(String fund_buy_state) {
		this.fund_buy_state = fund_buy_state;
	}
	
	
	
	
	
}
