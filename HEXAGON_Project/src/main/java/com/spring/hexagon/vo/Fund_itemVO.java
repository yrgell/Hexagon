package com.spring.hexagon.vo;


public class Fund_itemVO {
	private int fund_item_no;		// 펀드 아이템 key
	private String fund_img;		// 펀드이미지
	private String fund_eximg;		// 펀드 설명
	private String fund_state;			// 펀드상태
	private int fund_investor_num;	// 투자자수
	private float fund_comission;		// 서비스이용료
	private String fund_name;		// 펀드이름
	
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
	public void setFund_comission(float fund_comission) {
		this.fund_comission = fund_comission;
	}
	public String getFund_name() {
		return fund_name;
	}
	public void setFund_name(String fund_name) {
		this.fund_name = fund_name;
	}
	
	
	
	
}
