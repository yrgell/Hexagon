<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>

<body>
<%@ include file = "../include/header.jsp" %>
	<!--contents-->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><!-- 화면 조정용 css 적용하면서 조정해주세요 -->
 	<form action="${path}buyFund.me">
 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
 	
 		<!-- 펀드 이름 (구매하기위해 hidden으로값 넘김) -->
 		<input type = "hidden" name="fund_name" value = "${fdvo.fund_name}"> 
 		<!-- 수익률 (구매하기위해 hidden으로값 넘김) -->
 		<input type = "hidden" name="fund_interest_rate" value = "${fdvo.fund_interest_rate}"> 
 		<!-- 세후 수익률 (구매하기위해 hidden으로값 넘김) -->
 		<input type = "hidden" name ="fund_after_tax" value = "${fdvo.fund_text_rate*fdvo.fund_interest_rate}">
 		
 		<div class="banner">
	 		<table id = "fundlist">
	 		
	 			<tr>
	 				<td>${fdvo.fund_type}</td><!-- 투자성향 -->
	 				<td>${fdvo.fund_purpose}</td><!-- 건설자금 -->
	 			</tr>
	 			<tr>
	 				<td>${fdvo.fund_name}</td><!-- 펀드이름 -->
	 				<td>연수익률 : ${fdvo.fund_interest_rate}%</td><!-- 수익률 -->
	 			</tr>
	 			<tr>
	 				<td>투자기간 : ${fdvo.fund_term}개월</td><!-- 투자기간 -->
	 			</tr>
	 		</table>
 		</div>
 		
 		<div class="">
 		<table>
 			<tr>
 				<th>목표 모집 금액</th>
 				<td>${fdvo.fund_goal_Money}원</td>
 				<c:if test="${!fdvo.fund_state.equals('모집대기')}">
	 				<th>${fdvo.fund_investor_num}명이 </th>
	 				<td>${fdvo.fund_invested_money}원을 투자중입니다.</td>
 				</c:if>
 				<c:if test="${fdvo.fund_state.equals('모집대기')}">
		 		<tr>
		 			<td>
			 			<br><br>
			 			<h4>펀드 모집 대기중입니다!! 조금만 기다려주세요</h4>
			 			<br><br>
		 			</td>
		 		</tr>
		 		</c:if>
 			</tr>
 			<tr>
 				<th>상환방식</th>
 				<td>${fdvo.fund_way_payback}</td>
 				<th>실행일</th>
 				<td>${fdvo.fund_execute_date}</td>
 				<th>서비스이용료</th>
 				<td> ${fdvo.fund_comission}</td>
 			</tr>
 		</table>
 		<c:if test="${!fdvo.fund_state.equals('모집대기')}">
 		<div>
 			지금 
			<input type = "text" name = "expectedIncome">원을 투자하면?
			수익금 : ${fdvo.fund_text_rate*fdvo.fund_interest_rate*1000000}원!<!-- 위에 input으로 값을 받아서 값 띄워주기 지금은 하드코딩 되어있어요 -->
 		</div>
 		</c:if>
 		<div>
 			<table>
 				<tr>
 					<th>위험도 정보</th>
 				</tr>
 				<tr>
 					<td>${fdvo.fund_risk}</td>
 					<td>${fdvo.fund_risk_info}</td>
 				</tr>
 				<tr>
 					<th>펀드 안정성정보</th>
 				</tr>
 				<tr>
 					<td>${fdvo.fund_stability}</td>
 					<td>${fdvo.fund_stability_info}</td>
 				</tr>
 			</table>
 		</div>
 		<br><br>
 		<c:if test="${fdvo.fund_state.equals('모집중')}">
 			<div style = "border:1;">
 			<input type = "submit" value = "투자하기">
 		</div>
 		</c:if>
 		<c:if test="${fdvo.fund_state.equals('모집대기')}">
 			<div style = "border:1;">
 			<h4>펀드 모집 대기중입니다!! 조금만 기다려주세요</h4>
 			</div>
 		</c:if>
 		<c:if test="${!fdvo.fund_state.equals('모집중') && !fdvo.fund_state.equals('모집대기')}">
 			<div style = "border:1;">
 				<h4>모집이 완료된 펀드입니다.</h4>
 			</div>
 		</c:if>
 	</div>
 	<br><br>
 		<img src = "${project}fund/${fdvo.fund_eximg}"><br><br><br>
 	</form>
	<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>