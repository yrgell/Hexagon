<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../settings.jsp"%>
<html>
<style>
#stockList{
	margin:auto;
	width: 1000px;
	height: 500px;
}
#stockList tr{
	width: 16%
}
button{
	margin-right:10px;
	padding: 5px;
	
	width: 80px;	 
	border-top-left-radius: 5px; 
	border-top-right-radius: 5px; 
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px; 
	border: 1px solid #2b5178;
	 
	background-color: rgba(0,0,0,0); 
	color: #2b5178; 
}

button:hover{
	border-top-left-radius: 5px; 
	border-top-right-radius: 5px; 
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
	margin-right:10px;
	color:white; 
	background-color: #2b5178; 
}

</style>
<body>

	<%@ include file="../include/header.jsp"%>
	<!--contents-->
	<table id= "stockList" border="1">
		<tr>
        	<td colspan="5"><h3>머니트리의<br>투자 전문가들이 선정한<br><span style="color:#2b5178">추천 주식상품</span></h3></td>
        	<td rowspan="2" align="right"><img src="${project}images/stock/product.jpg"></td>
        </tr>
        
        <tr>
        	<td colspan="5">투자전문가들이 시장환경과 상품특성을 고려해<br>선정한 향후 유망할 것으로 전망되는 상품입니다.</td>
        </tr>		
		
		<!-- ${cnt} : 주식 상품 목록 갯수  -->
		<c:forEach var="i" begin="0" end="${cnt}" step="3">
			<tr>
     			<c:forEach var="dto" items="${dtos}" begin="${i}" end="${i+2}" step="1">
     			
     				<td colspan="2" width:33.3%>
     					[${dto.stock_code}] &nbsp;	<!-- 종목코드  --> 
     					<span style="font-size:25px">${dto.stock_company_name}</span> <!-- 종목명  -->
     				</td>
        	 		 <%-- <td style="width:33.3%;" align="center">
	        	 	 	[${dto.stock_code}] &nbsp;<span style="font-size:25px">${dto.stock_company_name}</span><br>
	        	 	 	현재금액   &nbsp; ${dto.stock_current} &nbsp;&nbsp;<span>등락률(%) &nbsp;<img src="">${dto.stock_gap}</span><br>
	        	 	 	거래량  &nbsp; ${dto.stock_volume} &nbsp;&nbsp;거래대금  &nbsp; ${dto.stock_price}
        	 		 </td> --%>
        	 	
     			</c:forEach>
     		<tr>
     		
     		<tr>
     			<c:forEach var="dto" items="${dtos}" begin="${i}" end="${i+2}" step="1">
					<td>
						현재금액   &nbsp; ${dto.stock_current}
					</td>
					<td>
						<span>등락률(%) &nbsp; ${dto.stock_gap}</span>
					</td>
     			</c:forEach>
     		<tr>
         	
         	<tr>
     			<c:forEach var="dto" items="${dtos}" begin="${i}" end="${i+2}" step="1">
					<td>
						거래량  &nbsp; ${dto.stock_volume}
					</td>
					<td>
						거래대금  &nbsp; ${dto.stock_price}
					</td>
     			</c:forEach>
     		<tr>
     		
            <tr>
      			<c:forEach var="dto" items="${dtos}" begin="${i}" end="${i+2}" step="1">
			        <td colspan="2">
				        <a href="stockDetail.gu?stock_code=${dto.stock_code}">
			        		<button id="stock_btn"><img src="">자세히</button>
			        	</a>
			        	<a href="buyStock.gu?stock_code=${dto.stock_code}&stock_category=${dto.stock_category}&stock_company_name=${dto.stock_company_name}&stock_current=${dto.stock_current}">
			        		<button id="stock_btn"><img src="">거래하기</button>
			        	</a>
			       	</td>
			        
      			</c:forEach>
      			
        	</tr>
   		</c:forEach>
	</table>
	<!--contents-->
	<%@ include file="../include/footer.jsp"%>
</body>
</html>