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
<h1>나의 계 목록</h1>
		<table style="width:1000px; margin:auto;" align="center" border="1">
			<tr>
				<th><strong>번호</strong></th>
				<th><strong>계 이름</strong></th>		
				<th><strong>최대이율</strong></th>		
				<th><strong>계 금액</strong></th>		
				<th><strong>월당 입금액</strong></th>
				<th><strong>기간</strong></th>		
				<th><strong>계 설명</strong></th>		
				<th><strong>세금</strong></th>		
				<th><strong>카테고리</strong></th>		
				<th><strong>이미지</strong></th>		
				<th>&nbsp;</th>
			</tr>
		
			<c:forEach var="dto" items="${dtos}" >
				<tr>
					<td>${dto.GATH_NUM}</td>
					<td>${dto.GATH_NAME}</td>
					<td>${dto.rate}</td>
					<td>${dto.GATH_GOAL}</td>
					<td>${dto.GATH_MONTH_PAY}</td>
					<td>${dto.GATH_TERM}</td>
					<td>${dto.GATH_EX}</td>
					<td>${dto.GATH_TAX}</td>
					<td>${dto.GATH_CATEGORY}</td>
					<td>${dto.GATH_IMG}</td>
					
					  <td><a href="gath_out.me?GATH_NUM=${dto.GATH_NUM}">퇴장하기</a></td>
				</tr>
			</c:forEach>
	</table>
   
<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>