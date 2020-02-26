<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
 <br><br><br><br><br><br><br><br> <br><br><br>
 <form action = "/hexagon/fundcustomisePro.me" method = "post" align = "center">
  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
  	<h3>${guestid}님은 투자할 때 수익과 위험의 밸런스가 어땠으면 좋겠나요?</h3>
 	<br>
 	<!-- ajax를 넣어서 답변하면 아래꺼 뜨게 하고싶다. -->
	<input type = "radio" name = "inv_profit_taking" value = "1">무조건 안전하게<br>
	<input type = "radio" name = "inv_profit_taking" value = "4">모든게 적당히<br>
	<input type = "radio" name = "inv_profit_taking" value = "9">수익성이 높게<br>
  	<br><br><br><br><br><br>
  	<h3>${guestid}님은 투자 손실을 얼마나 견딜 수 있나요?</h3>
 	<br>
	<input type = "radio" name = "inv_risk_taking" value = "1">절대 안됨<br>
	<input type = "radio" name = "inv_risk_taking" value = "4">5% ~ 10%<br>
	<input type = "radio" name = "inv_risk_taking" value = "9">10% ~ 15%<br>
	<br><br><br><br><br><br>
	<h3>${guestid}님은 무엇을 위해 투자를 하려하나요?</h3>
 	<br>
	<input type = "text" name = "inv_purpose" style = "border-bottom:1px solid #000;">
	<br><br><br><br><br><br>
	<h3>${guestid}님은 금융투자(주식, 펀드 등) 경험이 있으신가요?</h3>
 	<br>
	<input type = "radio" name = "inv_experience" value = "1">없어요<br>
	<input type = "radio" name = "inv_experience" value = "2">한 번쯤은 해봤어요<br>
	<input type = "radio" name = "inv_experience" value = "3">맨날하쥬<br>
	<br><br><br><br><br><br>
	<h3>${guestid}님은 투자를 한다면 얼마 정도 기간을 예상하나요?</h3>
 	<br>
	<input type = "radio" name = "inv_term" value = "단기">1년미만<br>
	<input type = "radio" name = "inv_term" value = "중단기">2년정도?<br>
	<input type = "radio" name = "inv_term" value = "장기">3년을 넘는 장기투자!<br>
	<br><br><br><br><br><br>
	
	<div>
		<input type = "submit" value = "맞춤투자 추천받기">
	</div>
	<br><br><br><br><br><br>
</form>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>