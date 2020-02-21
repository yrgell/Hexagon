<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>

<body>
<%@ include file = "../include/header.jsp" %>
<!--contents-->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<form action = "${path}buyFund.gu">
	<div class = "products-header">
		<div id = "products-header">
			<ul>
				<li style = "float:right;">${fund_type}값이 없다<br><br></li>
				<li style = "float:right;">${purpose_Investment}값이 없다</li>
			</ul>
		</div>
		<div>
			<h2>${fund_name}값이 없다</h2><br><br>
		<div>
			<table>
				<tr>
					<td>연수익률&nbsp;&nbsp;&nbsp;</td>
					<td>${fund_interest_rate}값이 없다</td>
				</tr>
				<tr>
					<td>투자기간&nbsp;&nbsp;&nbsp;</td>
					<td>${fund_term}값이 없다</td>
				</tr>
			</table>
		</div>
	</div>
</form>
<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>