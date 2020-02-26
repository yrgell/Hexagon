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
  <form id="buyFundForm" action="${path}buyConfirm.me" >
  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
  	<input type="hidden" name="fund_name" value="${fund_name}">
  	<input type="hidden" name="fund_after_tax" value="${fund_after_tax}">
  	<input type="hidden" name="fund_interest_rate" value="${fund_interest_rate}">
	  <table id="buyFund_tbl">
	  	<tr>
	  		<td colspan="4"><h3>투자하기</h3></td>
	  	</tr>
	  	<tr>
	  		<td colspan="4">
	  			<input id="inputBox" name="fund_invest_money" type="text" placeholder="금액을 입력하세요(만원)">
	  		</td>
	  	</tr>
	  	<tr>
	  		<td><input id="addAmount" type="button" value="+10만"></td>
	  		<td><input id="addAmount" type="button" value="+50만"></td>
	  		<td><input id="addAmount" type="button" value="+100만"></td>
	  		<td><input id="reset" type="button" value="reset"></td> <!-- (참고:어니스트 )에서는 '전액' 버튼이었음!(수정가능성 높음) -->
	  	</tr>
	  	<tr>
	  		<td colspan="4"></td>
	  	</tr>
	  	<tr>
	  		<td colspan="4"><input id="next_btn" type="submit" value="다음"></td>
	  	</tr>
	  </table>
  </form>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>