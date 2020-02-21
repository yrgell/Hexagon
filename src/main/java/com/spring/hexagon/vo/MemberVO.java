package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class MemberVO {
	private	String guestid  ;
	private	String emailchk  ;
	private	String emailcode  ;
	private String name  ;
	private String pass  ;
	private String credit_chk  ;
	private String enabled  ;
	private String authority  ;
	private String address  ;
	private String mobile  ;
	private String favor ;
	private String job  ;
	private  Timestamp join_date ;
	private  int work_year  ;
	private String married  ;
	private String house  ;
	private String car  ;
	private String typehouse ;
	private String authorization_code ;
	private String profile_img ;
	
	
	public String getEmailcode() {
		return emailcode;
	}
	public void setEmailcode(String emailcode) {
		this.emailcode = emailcode;
	}
	public String getCredit_chk() {
		return credit_chk;
	}
	public void setCredit_chk(String credit_chk) {
		this.credit_chk = credit_chk;
	}
	public String getAuthorization_code() {
		return authorization_code;
	}
	public void setAuthorization_code(String authorization_code) {
		this.authorization_code = authorization_code;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getGuestid() {
		return guestid;
	}
	public void setGuestid(String guestid) {
		this.guestid = guestid;
	}
	public String getEmailchk() {
		return emailchk;
	}
	public void setEmailchk(String emailchk) {
		this.emailchk = emailchk;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public Timestamp getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Timestamp join_date) {
		this.join_date = join_date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getFavor() {
		return favor;
	}
	public void setFavor(String favor) {
		this.favor = favor;
	}
	
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getWork_year() {
		return work_year;
	}
	public void setWork_year(int work_year) {
		this.work_year = work_year;
	}
	public String getMarried() {
		return married;
	}
	public void setMarried(String married) {
		this.married = married;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	public String getTypehouse() {
		return typehouse;
	}
	public void setTypehouse(String typehouse) {
		this.typehouse = typehouse;
	}
	
	
	
}
