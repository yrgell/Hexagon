<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<style>
#confirmForm #confirm_tbl{
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
  <form id="confirmForm" action="${path}buyFundPro.me" >
  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	  <table id="confirm_tbl" border="1">
	  	<tr>
	  		<td colspan="4"><h3>확인 및 동의</h3></td>
	  	</tr>
	  	<tr>
	  		<td colspan="4">
	  			<h4>
	  				<span style="color:blue">${fund_invest_money}원 투자</span>
	  			</h4>
	  		</td>
	  	</tr>
	  	<tr>
	  		<td colspan="4">
	  			<h4>펀드명 : ${fund_name}</h4>
	  		</td>
	  	</tr>
	  	<tr>
	  		<td colspan="4"><h4>수익률 : ${fund_interest_rate} &nbsp; 세후 수익률 : ${fund_after_tax}</h4></td>
	  	</tr>
	 
	  	<tr>
	  		<td colspan="4">나 ${guestid}은(는) 아래 내용을 모두 확인하였으며 그내용에</td>
	  	</tr>
	  	<tr>
	  		<td colspan="4"><input type="text" id="sign" placeholder="동의함"></td>	  		
	  	</tr>
	  	<tr>
	  		<td colspan="4">alert창 부분</td>	  		
	  	</tr>
	  	<tr>
	  		<td colspan="2">투자자이용약관</td>
	  		<td colspan="2"><a href="#">자세히 보기</a></td>
	  	</tr>			
	  	<tr>
	  		<td>
	  			<pre>
	  				1. 본 투자상품은 원금이 보장되지 않습니다. 모든 투자상품은 현행 법률 상 ‘유사수신행위의 규제에 관한 법률‘에 의거하여 원금과 수익을 보장할 수 없습니다.
					2. 차입자가 원금의 전부 또는 일부를 상환하지 못할 경우 발생하게 되는 투자금 손실 등 투자위험은 투자자가 부담하게 됩니다.
					3. 당사는 투자상품 내용, 투자원리금 지급일정, 채권관리 현황 안내에 최선을 다하며, 연체 발생 시에는 채권 추심 및 투자금 회수에 도의적 책임을 다합니다.
					4. 투자 취소는 해당 상품의 투자모집 마감 전까지만 가능하며, 마이페이지에서 취소하실 수 있습니다. 모집 마감 이후에는 투자기간이 종료될 때까지 중도해지 및 투자금 환급이 불가능합니다.
					5. 투자 원리금은 투자상품의 지급 스케쥴에 따라 투자 가상계좌로 입금해드립니다. 단, 중도상환, 연체 등이 발생할 경우 지급 스케쥴이 변경될 수 있습니다.
					6. 투자가 진행되는 기간 내에는 회원탈퇴가 제한될 수 있습니다.
	  			</pre>
	  		</td>
	  	</tr>
	  </table>
  </form>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>