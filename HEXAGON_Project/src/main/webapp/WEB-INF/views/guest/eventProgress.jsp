<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<body>
<%@ include file = "../include/header2.jsp" %>
  <!--contents-->
  <form>
  	<table>
  		<c:forEach var="i" begin="0" end="${cnt}" step="3">
      		<tr>   
     			<c:forEach var="dto" items="${dtos}" begin="${i}" end="${i+2}" step="1">
        	 		 <td style="width:33.3%;">
        	 		 <!-- 그림 누르면 같이 가져가야할 정보들 get방식으로 넣어주기 -->
        	 		 <a href="eventDeatil.gu?evb_no=${evb_no}">
        	 		 <img style="width: 300px; heigth:215px;" src="/hexagon/resources/images/event/${dto.img}" >
        	 		 </a>
        	 		 </td>
     			</c:forEach>
         	</tr>
         	
         	<tr align="center">
         	
      			<c:forEach var="dto" items="${dtos}" begin="${i}" end="${i+2}" step="1">
      			
			        <input type="hidden" name="evb_no" value="${dto.evb_no}">
			        <input type="hidden" name="evb_title" value="${dto.evb_title}">
			        <input type="hidden" name="evb_date" value="${dto.evb_date}">
			        <input type="hidden" name="evb_term" value="${dto.evb_term}">
			        <input type="hidden" name="evb_state" value="${dto.evb_state}">
			         <input type="hidden" name="evb_content" value="${dto.evb_content}">
			        <input type="hidden" name="evb_count" value="${dto.evb_count}">
			        <td id="preview"><span style="font-size:20px;"><span style="font-size:10px; color:blue;">[NO.${dto.evb_no}]</span>${dto.evb_title}</span><br>
			            ${dto.evb_term}
			        </td>
			        
      			</c:forEach>
      			
        	</tr>
   		</c:forEach>
  		<tr>
  			<td><a href="eventEnd.gu"><img src="">종료 이벤트</a></td>
  			<td></td>
  			<td><a href="winner.gu">당첨자 발표<img src=""></a></td>
  		</tr>
  	</table>
  </form>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>