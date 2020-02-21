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
<div class="products-header">
	<h1>머니트리 펀드상품</h1>
</div>
	<table id = "fundlist">
	<c:if test = "${cnt !=0 }">
		<c:forEach var = "i" step = "4" begin = "0" end = "${cnt}">
			<tr>
				<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
					<td><a href = "fundDetail.gu?fund_item_no=${dto.fund_item_no}"><img src = "${project}/${dto.fund_img}"></a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
					<td align = "center">${dto.fund_name}&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</c:forEach>
			</tr>
			<c:if test = "${dto.fund_state != 0}">
				<tr>
		   			<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
						<td align = "center">
						<fmt:formatNumber pattern = "#,###" value ="${dto.fund_comission}"/>원<br><br><br>
						</td>
					</c:forEach>
				</tr>
			</c:if>
			<c:if test = "${dto.fund_state == 0}">
				<tr>
		   			<td align = "center">구매불가 상품입니다.</td>
				</tr>
			</c:if>
		</c:forEach>
	</c:if>
	<c:if test="${cnt ==0 }">
		<tr>
   			<td align = "center"> 판매가능한 상품이 없습니다 :( </td>
		</tr>
	</c:if>
</table>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>