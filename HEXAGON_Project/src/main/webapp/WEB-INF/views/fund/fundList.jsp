<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<script type="text/javascript">

function popup(){
	window.open("hexagon/graph.gu");
}
</script>
<body>
<%@ include file = "../include/header.jsp" %>
<!--contents-->
<br><br><br><br><br><br><br><br><br><br><br>
<div class="products-header">
	<h1>머니트리 펀드상품</h1>
</div>
	<table id = "fundlist">
	<!-- 상품이 있는 경우  리스트 조회 -->
	<c:if test = "${cnt !=0 }">
		<c:forEach var = "i" step = "4" begin = "0" end = "${cnt}">
			<tr>
				<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
					<td><a href = "${path}fundDetail.gu?fund_item_no=${dto.fund_item_no}">
					<img src = "${project}fund/${dto.fund_img}" style = width:200px;heigh:150px;></a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
					<td align = "center">${dto.fund_name}
					<br><br>
					${dto.fund_state}<br><br></td>
				</c:forEach>
			</tr>
			<!-- 펀드 상태에 따른 투자가능여부 -->
			<%-- <c:if test = "${dto.fund_state == 0}">
				<tr>
		   			<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
						<td align = "center">투자대기</td>
					</c:forEach>
				</tr>
			</c:if>
			<c:if test = "${dto.fund_state == 1}">
				<tr>
		   			<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
						<td align = "center">투자 모집중</td>
					</c:forEach>
				</tr>
			</c:if>
			<c:if test = "${dto.fund_state == 2}">
				<tr>
		   			<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
						<td align = "center">투자완료</td>
					</c:forEach>
				</tr>
			</c:if>
			<c:if test = "${dto.fund_state == 3}">
				<tr>
		   			<c:forEach var = "dto" items = "${dtos}" begin="${i}" end = "${i+3}" step = "1">
						<td align = "center">투자상환중</td>
					</c:forEach>
				</tr>
			</c:if> --%>
		</c:forEach>
		</c:if>
		
		<!-- 상품이 없는 경우 -->
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