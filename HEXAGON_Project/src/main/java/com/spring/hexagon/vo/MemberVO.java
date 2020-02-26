package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class MemberVO {
	private	String guestid  ;
	private	String emailchk  ;
	private	String emailcode  ;
	private String  name  ;
	private  String pass  ;
	private  int financechk  ;
	private  String enabled  ;
	private String  authority  ;
	private  Timestamp join_date ;
	private String  address  ;
	private  String mobile  ;
	private  String favor ;
	private  String job  ;					//직업
	private  int work_year  ;				//근속년수
	private String  married  ;					//기혼/미혼
	private String  house  ;					//집 여부
	private String  car  ;						//차 보유 여부
	private String  typehouse ;				//집 소유 형태
	private String  dob  ;					//생년월일
	private String  sex ;					//성별
	private String profile_img;				//프로필 사진
	private String account_num;				//계좌번호
	
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
	public int getFinancechk() {
		return financechk;
	}
	public void setFinancechk(int financechk) {
		this.financechk = financechk;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	/**
	 */
	public String getProfile_img() {
		return profile_img;
	}
	/**
	 */
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	/**
	 */
	public String getAccount_num() {
		return account_num;
	}
	/**
	 */
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}
	/**
	 */
	public String getEmailcode() {
		return emailcode;
	}
	/**
	 */
	public void setEmailcode(String emailcode) {
		this.emailcode = emailcode;
	} 
	
	
}
