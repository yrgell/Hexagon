package com.spring.hexagon.vo;

import java.sql.Timestamp;

public class StockVO{

	//멤버변수
	private String guestid;				//회원아이디
	//주식시장 정보
	private String stock_code; 			//종목코드
	private String stock_category; 		//업종분류
	private String stock_market;		//주가시장
	private String stock_company_name; 	//종목명
	private int stock_current; 		 	//현재가
	private int stock_gap; 				//등락률(%)
	private int stock_facevalue; 		//액면가
	private int stock_mkt_price; 		//시가
	private int stock_net_mkt_price; 	//시가총액
	private int stock_highprice;  		//고가
	private int stock_lowprice;			//저가
	private int stock_volume; 			//거래량(주)
	private int stock_price; 			//거래금액
	private String stock_info; 			//사업내용 및 현황
	private String stock_state; 		//주식거래상태
	private Timestamp stock_sysdate; 	//현재시간
	private int stock_open_price; 		//시작가
	private int stock_closing_price; 	//종가
	private float stock_per;			//주가수익비율
	private float stock_pbr;			//주가 순자산비율
	private int stock_trade_cnt;		//주식 거래량
	//기업평가모델 항목
	private int net_in;					//당기순이익
	private int sales;					//매출액
	private int op;						//영업이익
	private float nca_cap;				//고정자산
	private float roe;					//자기자본이익률
	private float ca_nca;				//유동비율
	private float ca_ivn_cl;			//당좌비율
	private float li_cap;				//부채비율
	private float cap_asset;			//자기자본비율
	private float gp_sales;				//매출총이익률
	private float netin_sales;			//매출순이익률
	private float sales_cap;			//총자산회전률
	private float sales_inv;			//재고자산 회전률
	private int ebitda;					//현금창출능력
	private float op_sales;				//매출영업이익률
	
	
	
	public int getNet_in() {
		return net_in;
	}
	public void setNet_in(int net_in) {
		this.net_in = net_in;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public int getOp() {
		return op;
	}
	public void setOp(int op) {
		this.op = op;
	}
	public String getStock_market() {
		return stock_market;
	}
	public void setStock_market(String stock_market) {
		this.stock_market = stock_market;
	}
	public int getStock_trade_cnt() {
		return stock_trade_cnt;
	}
	public void setStock_trade_cnt(int stock_trade_cnt) {
		this.stock_trade_cnt = stock_trade_cnt;
	}
	public String getStock_code() {
		return stock_code;
	}
	public void setStock_code(String stock_code) {
		this.stock_code = stock_code;
	}
	public String getStock_category() {
		return stock_category;
	}
	public void setStock_category(String stock_category) {
		this.stock_category = stock_category;
	}
	public String getStock_company_name() {
		return stock_company_name;
	}
	public void setStock_company_name(String stock_company_name) {
		this.stock_company_name = stock_company_name;
	}
	public int getStock_current() {
		return stock_current;
	}
	public void setStock_current(int stock_current) {
		this.stock_current = stock_current;
	}
	public int getStock_gap() {
		return stock_gap;
	}
	public void setStock_gap(int stock_gap) {
		this.stock_gap = stock_gap;
	}
	public int getStock_facevalue() {
		return stock_facevalue;
	}
	public void setStock_facevalue(int stock_facevalue) {
		this.stock_facevalue = stock_facevalue;
	}
	public int getStock_mkt_price() {
		return stock_mkt_price;
	}
	public void setStock_mkt_price(int stock_mkt_price) {
		this.stock_mkt_price = stock_mkt_price;
	}
	public int getStock_net_mkt_price() {
		return stock_net_mkt_price;
	}
	public void setStock_net_mkt_price(int stock_net_mkt_price) {
		this.stock_net_mkt_price = stock_net_mkt_price;
	}
	public int getStock_highprice() {
		return stock_highprice;
	}
	public void setStock_highprice(int stock_highprice) {
		this.stock_highprice = stock_highprice;
	}
	public int getStock_lowprice() {
		return stock_lowprice;
	}
	public void setStock_lowprice(int stock_lowprice) {
		this.stock_lowprice = stock_lowprice;
	}
	public int getStock_volume() {
		return stock_volume;
	}
	public void setStock_volume(int stock_volume) {
		this.stock_volume = stock_volume;
	}
	public int getStock_price() {
		return stock_price;
	}
	public void setStock_price(int stock_price) {
		this.stock_price = stock_price;
	}
	public String getStock_info() {
		return stock_info;
	}
	public void setStock_info(String stock_info) {
		this.stock_info = stock_info;
	}
	public String getStock_state() {
		return stock_state;
	}
	public void setStock_state(String stock_state) {
		this.stock_state = stock_state;
	}
	public Timestamp getStock_sysdate() {
		return stock_sysdate;
	}
	public void setStock_sysdate(Timestamp stock_sysdate) {
		this.stock_sysdate = stock_sysdate;
	}
	public int getStock_open_price() {
		return stock_open_price;
	}
	public void setStock_open_price(int stock_open_price) {
		this.stock_open_price = stock_open_price;
	}
	public int getStock_closing_price() {
		return stock_closing_price;
	}
	public void setStock_closing_price(int stock_closing_price) {
		this.stock_closing_price = stock_closing_price;
	}
	public float getNca_cap() {
		return nca_cap;
	}
	public void setNca_cap(float nca_cap) {
		this.nca_cap = nca_cap;
	}
	public float getRoe() {
		return roe;
	}
	public void setRoe(float roe) {
		this.roe = roe;
	}
	public float getCa_nca() {
		return ca_nca;
	}
	public void setCa_nca(float ca_nca) {
		this.ca_nca = ca_nca;
	}
	public float getCa_ivn_cl() {
		return ca_ivn_cl;
	}
	public void setCa_ivn_cl(float ca_ivn_cl) {
		this.ca_ivn_cl = ca_ivn_cl;
	}
	public float getLi_cap() {
		return li_cap;
	}
	public void setLi_cap(float li_cap) {
		this.li_cap = li_cap;
	}
	public float getCap_asset() {
		return cap_asset;
	}
	public void setCap_asset(float cap_asset) {
		this.cap_asset = cap_asset;
	}
	public float getGp_sales() {
		return gp_sales;
	}
	public void setGp_sales(float gp_sales) {
		this.gp_sales = gp_sales;
	}
	public float getNetin_sales() {
		return netin_sales;
	}
	public void setNetin_sales(float netin_sales) {
		this.netin_sales = netin_sales;
	}
	public float getSales_cap() {
		return sales_cap;
	}
	public void setSales_cap(float sales_cap) {
		this.sales_cap = sales_cap;
	}
	public float getSales_inv() {
		return sales_inv;
	}
	public void setSales_inv(float sales_inv) {
		this.sales_inv = sales_inv;
	}
	public int getEbitda() {
		return ebitda;
	}
	public void setEbitda(int ebitda) {
		this.ebitda = ebitda;
	}
	public float getOp_sales() {
		return op_sales;
	}
	public void setOp_sales(float op_sales) {
		this.op_sales = op_sales;
	}
	public float getStock_per() {
		return stock_per;
	}
	public void setStock_per(float stock_per) {
		this.stock_per = stock_per;
	}
	public float getStock_pbr() {
		return stock_pbr;
	}
	public void setStock_pbr(float stock_pbr) {
		this.stock_pbr = stock_pbr;
	}
	/**
	 * @return the guestid
	 */
	public String getGuestid() {
		return guestid;
	}
	/**
	 * @param guestid the guestid to set
	 */
	public void setGuestid(String guestid) {
		this.guestid = guestid;
	}
	

}
