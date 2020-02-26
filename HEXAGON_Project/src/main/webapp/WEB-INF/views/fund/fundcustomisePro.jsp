<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
  <br><br><br><br><br><br><br><br>
  <pre>
   ${guestid}님의 투자성향은 ${preference}입니다.
   
    이런 ${preference} 펀드는 어떤가요??
<c:forEach var ="dto" items = "${dtos}">
<ul>
	<li>
	<div>
		<img src = "${project}/${dto.fund_img}">
		<a href = "/hexagon/fundDetail.gu?fund_item_no=${dto.fund_item_no}">${dto.fund_name}</a>
		${dto.fund_state}
	</div>
	</li>
	<li></li>
</ul>
 </c:forEach>

  </pre>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>