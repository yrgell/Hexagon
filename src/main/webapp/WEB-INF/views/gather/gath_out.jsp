<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "../settings.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> gath_addPro 처리 페이지</h2>
	
	<%
		int cnt =(int)request.getAttribute("cnt");
		if(cnt == 0 ){ 
	%>
			<script type="text/javascript">
				alert("계 퇴장 실패");
				location.href="gath_melist.me";
			</script>
	<% 
	
		}else {
	%>
			<script type="text/javascript">
				alert("계 퇴장 성공");
				location.href="gath_melist.me";
			</script>
	<% 
		}
	%>			
	
</body>
</html>