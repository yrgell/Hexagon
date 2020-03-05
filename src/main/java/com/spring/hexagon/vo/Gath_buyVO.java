package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class Gath_buyVO {
	Timestamp  gath_ref_date        ;
	Timestamp  GATH_PAYBACK_DATE    ;
	Timestamp  GATH_BUY_DATE        ;
	Timestamp  GATH_DUE_DATE        ;
	int  GATH_MONTH_PAY       ;
	int  GATH_NUM             ;
	int  GATH_BUY_NO          ;
	String  GATH_TURN            ;
	String  GUESTID              ;
	String  GATH_BUY_STATE     ;
	float  GATH_ACTUAL_RATE     ;
	
	public Timestamp getGath_ref_date() {
		return gath_ref_date;
	}
	
	public void setGath_ref_date(Timestamp Gath_ref_date) {
		gath_ref_date = Gath_ref_date;
	}
	public Timestamp getGATH_PAYBACK_DATE() {
		return GATH_PAYBACK_DATE;
	}
	public void setGATH_PAYBACK_DATE(Timestamp gATH_PAYBACK_DATE) {
		GATH_PAYBACK_DATE = gATH_PAYBACK_DATE;
	}
	public int getGATH_MONTH_PAY() {
		return GATH_MONTH_PAY;
	}
	public void setGATH_MONTH_PAY(int gATH_PAY_MONTH) {
		GATH_MONTH_PAY = gATH_PAY_MONTH;
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
	public String getGATH_TURN() {
		return GATH_TURN;
	}
	public void setGATH_TURN(String gATH_TURN) {
		GATH_TURN = gATH_TURN;
	}
	
	
}
