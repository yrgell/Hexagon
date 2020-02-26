<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<body>
<%@ include file = "../include/header.jsp" %>
<!-- 검색창 -->
<div>
	<ul>
		<li>
			<span><input type = "text" name = "search" placeholder = "종목이름"></span>
			<span><input type = "button" value = "검색" onclick = "window.location = '/hexagon/getStockDetail.gu'"></span>
		</li>
	</ul>
</div>
  <!--contents-->
  <h3>${svo.stock_company_name}</h3><h4>[${svo.stock_code}]</h4><h4 style = "color:blue">${svo.stock_market}/${svo.stock_category}</h4>
  <div>
  <!-- 왼쪽 위에 박스 -->
  	<div>
  		<div>
  			<ul>
  				<li>
  					<div>
  						<ul>
							<li>${svo.stock_code}</li>
  							<li>${svo.stock_company_name}</li>						
  						</ul>
  					</div>
  				</li>
  				<li>
  					<div>
  						<ul>
  							<li> <span>전일대비</span><span>${svo.stock_open_price-svo.stock_current}</span> </li>
  							<li><span>등락율</span><span>${svo.stock_gap }</span>
  							<li><span>거래량</span><span>${svo.stock_volume }</span></li>
  							<li> <span>거래대금</span><span>${svo.stock_price*svo.stock_volume}</span> </li>
  						</ul>
  					</div>
  				</li>
  			</ul>
  		</div>
  	<!-- 왼쪽 위에 박스 -->
  		<!-- 왼쪽 아래 박스 -->
  		<div>
  			<table border = "1">
  				<tr>
  					<th>시가</th>
  					<td>${svo.stock_mkt_price }</td>
  					<th>액면가</th>
  					<td>${svo.stock_facevalue}</td>
  				</tr>
  				<tr>
  					<th>고가</th>
  					<td>${svo.stock_highprice }</td>
  					<th>저가</th>
  					<td>${svo.stock_lowprice }</td>
  				</tr>
  				<tr>
					<th>시가총액(단위)</th>
					<td>${svo.stock_net_mkt_price }</td>
					<th>PER/PBR</th>
					<td>${svo.stock_per}/${svo.stock_pbr}</td>  				
  				</tr>
  				<tr>
  					<th>외국인비율</th>
  					<td>현재 값 없음</td>
  					<%-- <td>${svo.stock_foreign }</td> --%>
  					<th>상장주식수</th>
  					<td>현재 값 없음</td>
  					<%-- <td>${svo.stock_cnt }</td> --%>
  				</tr>
  			</table>
  		</div>
  	</div>
  	<!-- <div style = "float:right;">
  		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
       <div id="chart_div" style="width: 900px; height: 500px;"></div>
  	</div> -->
  </div>
  <br><br><br>
<div>
	<h3>Business Summary</h3>
	<div>
		<table>
			<tr>
				<th>매출액</th>
				<td>${bvo.gp }</td>
			</tr>
			<tr>
				<th>영업이익</th>
				<td>${bvo.op }</td>
			</tr>
			<tr>
				<th>당기순이익</th>
				<td>${bvo.net_in}</td>
			</tr>
		</table>
		<div>
			<ul>
				<li> <br><br><br>
					<div>사업내용 및 현황</div>
				</li>
				<li>
					<div>${svo.stock_info}</div>
				</li>
				<li> <br><br><br>
					<div>기업실적 코멘트</div>
				</li>
				<li> 
					<div>
						<%-- ${bvo.book_date} --%>년도 매출액은 ${bvo.gp}원 으로 기준<!-- 기록가져오는 것 보고 판단 -->
						<c:if test = "${bvo.gp}>100">증가</c:if><c:if test = "${bvo.gp}>100">감소</c:if>추세이고,
						영업이익과 당기순이익은 각각 ${bvo.op}, ${bvo.net_in}으로 각각 <c:if test = "${bvo.op}>100">증가</c:if><c:if test = "${bvo.op}>100">감소</c:if>,
						<c:if test = "${bvo.net_in}>100">증가</c:if><c:if test = "${bvo.net_in}>100">감소</c:if>추세이다.
					</div>
				</li>
				<li> <br><br>
					<div>유동성비율</div>
				</li>
				<li>
					<div>
						${svo.stock_company_name}의 유동비율과 당좌비율은 각각 ${svo.ca_nca }, ${svo.ca_ivn_cl} 으로 당사의 2018년 실적 보다
						<%-- <c:if test = "">증가하며 재무구조가 안정적으로 유지될 것으로 예상한다.</c:if><c:if test = "">감소하는 추세로 재무구조의 악화가 예상된다.</c:if> --%>
					</div>
				</li>
				<li><br><br>
					<div>레버리지 비율</div>
				</li>
				<li>
					<div>
						부채비율 : ${svo.li_cap }
						고정비율  :${svo.nca_cap }
						자기자본비율 : ${svo.cap_asset}
					</div>
				</li>
				<li><br><br>
					<div>활동성비율</div>
				</li>
				<li>
					<div>
						총자산회전율  :${svo.sales_cap }
						재고자산회전율 : ${svo.sales_inv }
					</div>
				</li>
				<li><br><br>
					<div>수익성비율</div>
				</li>
				<li>
					<div>
						매출영업이익률 : ${svo.op_sales }
						매출총이익률 : ${svo.gp_sales }
						매출 순이익률  :${svo.netin_sales }
					</div>
				</li>
				<li><br><br>
					<div>ROE</div>
				</li>
				<li>
					<div>
						roe  :${svo.roe }
					</div>
				</li>
				<li>
					<div>현금창출능력</div>
				</li>
				<li>
					<div>
						${svo.ebitda}
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>