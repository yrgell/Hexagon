<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ include file = "../settings.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width ,initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<sec:authorize access="isAnonymous()">
<%@ include file = "../include/header.jsp" %>
</sec:authorize>
<!--contents-->
<h1>계 리스트</h1>
		<table style="width:1000px" align="center">
			<tr>
				<th>&nbsp;</th>
				<th><strong>제품명</strong></th>
				<th><strong>가격</strong></th>		
				<th>&nbsp;</th>
			</tr>
		
			<c:forEach var="dto" items="${list}" >
				<tr>
					<td>${dto.pro_name}</td>
					<td>${dto.pro_price}</td>
					<td><a href="basketDelete.ba?basket_num=${dto.basket_num}">삭제</a></td>
				</tr>
			</c:forEach>
			
			<tr>
				<th colspan="3">
					<a href="basketPay.ba">전부구매하기</a>
				</th>
			</tr>
	</table>
	
    <div>
    	<div>
    		<a href="/hexagon/company.gu"><img alt="" src="/hexagon/resources/images/main4.png"></a>
    	</div>
    	<div>
    		<a href="/hexagon/fund.me"><img alt="" style="margin-left:100px;" src="/hexagon/resources/images/main3.png"></a>
    	</div>
    	<div>
    		<a href="/hexagon/investing.me"><img alt="" style="margin-left:100px;" src="/hexagon/resources/images/main2.png"></a>
    	</div>
    	
    </div>
<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>