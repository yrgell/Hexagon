<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 화면</h1>
	<sec:authorize access="hasRole('ROLE_USER')">
			유저로그인
    </sec:authorize>   
            
    <sec:authorize access="hasRole('ROLE_ADMIN')">
         	관리자로그인
    </sec:authorize>
</body>
</html>