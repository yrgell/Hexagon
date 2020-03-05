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
<h1>계 목록</h1>

<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>