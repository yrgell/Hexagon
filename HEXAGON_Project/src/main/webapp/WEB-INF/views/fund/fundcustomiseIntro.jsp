<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
<br><br><br><br><br><br><br><br><br>  	
  	<h2>반갑습니다!</h2>
  	<pre>
  		머니트리는 당신의 투자성향을 파악해 당신에게 맞는 펀드 상품을 추천합니다.
  		
  		${guestid}님의 투자성향을 파악하기 위해 설문을 시작할게요.<br>
  		[자본시장법]에 따라 투자성향 확인 후 투자권유 및 계약이 가능합니다.
  		
  		다음과 같은 질문을 할거에요.
  			<ul>
  				<li>수익 추구 방식</li>
  				<li>손실 대응 방식</li>
  				<li>금융투자에 대한 경험</li>
  				<li>예상 투자 기간</li>
  			</ul>
  	</pre>
  	<input type = "button" value = "맞춤투자 받기" onclick = "window.location= '/hexagon/fundcustomise.me'">
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>