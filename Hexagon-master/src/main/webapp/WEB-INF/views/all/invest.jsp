<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<body>
<%@ include file = "../include/header.jsp" %>

  <!--contents-->
   <a href="/hexagon/snapshot.gu"><img src = "${project}images/graph/financial1.png"></a>
   <input type="button" value="맞춤 추천" onclick="window.location='/hexagon/recommend.me'">
  <img src = "${project}images/graph/financial2.png">
  <img src = "${project}images/graph/financial3.png" style="margin-left:90px;">
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>