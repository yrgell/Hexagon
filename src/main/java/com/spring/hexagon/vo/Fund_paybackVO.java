package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class Fund_paybackVO {
	private int fund_payback_no;		// 페이백 key
	private int fund_buy_no;			// 펀드 구매 key
	private Timestamp fund_payback_date;// 수익금수령날짜
	private int fund_payback_state;		// 수령상태
	private float fund_comission;		// 서비스이용료
	private int fund_payback;			// 발생 수익금
	private int fund_payback_count;		// 지급회차
	
	public int getFund_payback_no() {
		return fund_payback_no;
	}
	public void setFund_payback_no(int fund_payback_no) {
		this.fund_payback_no = fund_payback_no;
	}
	public int getFund_buy_no() {
		return fund_buy_no;
	}
	public void setFund_buy_no(int fund_buy_no) {
		this.fund_buy_no = fund_buy_no;
	}
	public Timestamp getFund_payback_date() {
		return fund_payback_date;
	}
	public void setFund_payback_date(Timestamp fund_payback_date) {
		this.fund_payback_date = fund_payback_date;
	}
	public int getFund_payback_state() {
		return fund_payback_state;
	}
	public void setFund_payback_state(int fund_payback_state) {
		this.fund_payback_state = fund_payback_state;
	}
	public float getFund_comission() {
		return fund_comission;
	}
	public void setFund_comission(float fund_comission) {
		this.fund_comission = fund_comission;
	}
	public int getFund_payback() {
		return fund_payback;
	}
	public void setFund_payback(int fund_payback) {
		this.fund_payback = fund_payback;
	}
	public int getFund_payback_count() {
		return fund_payback_count;
	}
	public void setFund_payback_count(int fund_payback_count) {
		this.fund_payback_count = fund_payback_count;
	}
	
	
	
}
