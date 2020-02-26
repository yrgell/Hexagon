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
<h1>메인</h1>

<input type="button" value="관리자 모드" onclick="">

	<sec:authorize access="hasRole('ROLE_USER')">
		유저로그인
	<%@ include file = "../include/afterheader.jsp" %>
    </sec:authorize>   
            
    <sec:authorize access="hasRole('ROLE_ADMIN')">
                관리자로그인
    </sec:authorize>
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