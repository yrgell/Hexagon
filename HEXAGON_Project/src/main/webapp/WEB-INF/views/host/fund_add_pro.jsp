<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>상품 추가 처리페이지</h2>
	
	<c:if test="${FundAdd ==1 }">
		<script type="text/javascript">
		 	window.location="product_fund.ho";
		</script>
	</c:if>
	
	<c:if test="${FundAdd != 1 }">
		<script type="text/javascript">
			window.history.back();
		</script>
	</c:if>
</body>
</html>