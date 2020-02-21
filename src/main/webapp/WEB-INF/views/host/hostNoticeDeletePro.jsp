<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
삭제 처리페이지
<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> --%>
<c:if test = "${deleteCnt == 0}">	<!-- insert 실패 -->
	<script type="text/javascript">
		alert("공지사항 삭제실패");
	</script>
</c:if>

<c:if test = "${deleteCnt != 0 }">	<!-- insert 성공 -->
	<script type="text/javascript">
		alert("공지사항 삭제완료");
		window.location="hostN.ho";
	</script>
</c:if>
</body>
</html>