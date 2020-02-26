<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	  <security:authorize access="hasRole('ROLE_USER')">
	   <script type="text/javascript">
	   	alert("${guestid}님! 반갑습니다^^");
	   	window.location="/hexagon/";
	   </script>
	  </security:authorize>
	  
	<security:authorize access="hasRole('ROLE_ADMIN')">
	<script type="text/javascript">
	 alert("관리자님 안녕하세요")
	 window.location="/hexagon/dashboard.ho"
	</script>
	</security:authorize>
</body>
</html>