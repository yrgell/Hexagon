package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class Gath_buyVO {
	
	Timestamp  GATH_REG_DATE        ;	//계 등록날짜
	Timestamp  GATH_PAYBACK_DATE    ;	//지급 날짜
	int  GATH_PAY_MONTH       ;			//지급 달 
	int  GATH_NUM             ;			//계 고유 번호
	int  GATH_BUY_NO          ;			//장부 번호
	String  GUESTID              ;		//회원 아이디
	Timestamp  GATH_BUY_DATE        ;   //계 납부 날짜
	String  GATH_BUY_STATE     ;		//계 납부 상태
	Timestamp  GATH_DUE_DATE        ;	//개시날짜
	float  GATH_ACTUAL_RATE     ;		//순번당 이자율
	int  GATH_TURN            ;			//계 순번
	
	public Timestamp getGATH_REG_DATE() {
		return GATH_REG_DATE;
	}
	public void setGATH_REG_DATE(Timestamp gATH_REG_DATE) {
		GATH_REG_DATE = gATH_REG_DATE;
	}
	public Timestamp getGATH_PAYBACK_DATE() {
		return GATH_PAYBACK_DATE;
	}
	public void setGATH_PAYBACK_DATE(Timestamp gATH_PAYBACK_DATE) {
		GATH_PAYBACK_DATE = gATH_PAYBACK_DATE;
	}
	public int getGATH_PAY_MONTH() {
		return GATH_PAY_MONTH;
	}
	public void setGATH_PAY_MONTH(int gATH_PAY_MONTH) {
		GATH_PAY_MONTH = gATH_PAY_MONTH;
	}
	public int getGATH_NUM() {
		return GATH_NUM;
	}
	public void setGATH_NUM(int gATH_NUM) {
		GATH_NUM = gATH_NUM;
	}
	public int getGATH_BUY_NO() {
		return GATH_BUY_NO;
	}
	public void setGATH_BUY_NO(int gATH_BUY_NO) {
		GATH_BUY_NO = gATH_BUY_NO;
	}
	public String getGUESTID() {
		return GUESTID;
	}
	public void setGUESTID(String gUESTID) {
		GUESTID = gUESTID;
	}
	public Timestamp getGATH_BUY_DATE() {
		return GATH_BUY_DATE;
	}
	public void setGATH_BUY_DATE(Timestamp gATH_BUY_DATE) {
		GATH_BUY_DATE = gATH_BUY_DATE;
	}
	public String getGATH_BUY_STATE() {
		return GATH_BUY_STATE;
	}
	public void setGATH_BUY_STATE(String gATH_BUY_STATE) {
		GATH_BUY_STATE = gATH_BUY_STATE;
	}
	public Timestamp getGATH_DUE_DATE() {
		return GATH_DUE_DATE;
	}
	public void setGATH_DUE_DATE(Timestamp gATH_DUE_DATE) {
		GATH_DUE_DATE = gATH_DUE_DATE;
	}
	public float getGATH_ACTUAL_RATE() {
		return GATH_ACTUAL_RATE;
	}
	public void setGATH_ACTUAL_RATE(float gATH_ACTUAL_RATE) {
		GATH_ACTUAL_RATE = gATH_ACTUAL_RATE;
	}
	public int getGATH_TURN() {
		return GATH_TURN;
	}
	public void setGATH_TURN(int gATH_TURN) {
		GATH_TURN = gATH_TURN;
	}
	
	
}
