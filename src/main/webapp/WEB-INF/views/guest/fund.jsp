<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<script type="text/javascript">

function popup(){
	window.open("/hexagon/graph.gu");
}
</script>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
  <img src = "${project}images/fund.png" onclick="popup();">
  <img src = "${project}images/fund2.png">
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>