<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<style>
#buyFundForm #buyFund_tbl{
	margin: 0 auto;
	margin-top: 200px;
	margin-bottom: 200px;
	text-align: center;
	width: 200px;
}
#inputBox{
	border-color: #f03c3c;
}
</style>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
  <form id="buyFundForm" action="${path}my.me" >
	  <table id="buyFund_tbl">
	  	<tr>
	  		<td colspan="4"><h3>투자완료</h3></td>
	  	</tr>
	  	
	  	<tr>
	  		<td colspan="4"></td>
	  	</tr>
	  	<tr>
	  		<td colspan="4"><input id="next_btn" type="submit" value="mypage로 이동"></td>
	  	</tr>
	  </table>
  </form>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>