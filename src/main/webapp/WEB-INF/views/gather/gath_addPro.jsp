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
		if(cnt == 0 ){ //insert 실패  0
	%>
			<script type="text/javascript">
				alert("계 추가 실패");
				location.href="gath_list.gu";
			</script>
	<% 
		}else{// 성공
	%>
			<script type="text/javascript">
				alert("계 추가 성공");
				location.href="gath_list.gu";
			</script>
	<% 
		}
	%>			
	
</body>
</html>