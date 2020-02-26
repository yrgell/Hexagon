<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "../settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${fundUpdate == 1}">
		<script type="text/javascript">
			alert("수정에 성공했습니다.");
			
		 	window.location="/hexagon/product_fund.ho";
		</script>
	</c:if>
	
	<c:if test="${fundUpdate != 1 }">
		<script type="text/javascript">
			window.history.back();
		</script>
	</c:if>
	
</body>
</html>