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
 		모집금액 : ${fdvo.fund_goal_Money}<!-- 모집금액 --><br>
 		상환방식 : ${fdvo.fund_way_payback}<!-- 상환방식 --><br>
 		지급회차 : ${fdvo.fund_payback_count}<!-- 지급회차 --><br>
 		실행일 : ${fdvo.fund_execute_date}<!-- 실행일 --><br>
 		<div>
			<input type = "text" name = "expectedIncome">
 		</div>
 		세후 수익률 : ${fdvo.fund_text_rate*fdvo.fund_interest_rate*1000000}<br><!-- 위에 input으로 값을 받아서 값 띄워주기 지금은 하드코딩 되어있어요 -->
 		위험도 정보: ${fdvo.fund_risk}<!-- 위험도 정보 --><br>
 		펀드 안정성정보 : ${fdvo.fund_stability_info}<!-- 펀드 안정성정보 --><br>
 		안정성 : ${fdvo.fund_stability}<!-- 안정성 --><br>
 		리스크 : ${fdvo.fund_risk_info}<!-- 리스크 --><br>
 		펀드이미지 : ${fdvo.fund_img}<!-- 펀드이미지 -->
 		설명 : ${fdvo.fund_eximg}<!-- 설명 --><br>
 		투자자수 : ${fdvo.fund_investor_num}<br><!-- 투자자수 --><!-- 투자하기를 누를때 카운트 증가 & 가능하다면 투자 정원을 정해놓고
 													정원 모집 완료시 자동으로  투자 state 변경하고 싶습니다.-->
 		서비스이용료 : ${fdvo.fund_comission}<br><!-- 서비스이용료 -->
 		
 		</div>
 		
 		<div style = "border:1;">
 			<input type = "submit" value = "투자하기">
 		</div>
 	</form>
	<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>