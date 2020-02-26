<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
  
	<c:if test="${insertCnt ==1 }">
		<script type="text/javascript">
		 	window.location="fundBuyFinish.me";
		</script>
	</c:if>
	
	<c:if test="${insertCnt != 1 }">
		<script type="text/javascript">
			window.history.back();
		</script>
	</c:if>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>