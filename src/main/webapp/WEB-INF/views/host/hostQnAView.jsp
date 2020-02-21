<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
<div class="hostNotice-form"><h3>QnA</h3></div>
<div class="hostNotice-sub"><h4>상세페이지</h4></div>

<form action="hostQnAmodifyPro.ho?qna_no=${dto.qna_no}" method="post">
	<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
		<%-- <c:if test="${selectCnt >= 0}">
			<c:forEach var="dto" items="${dtos}"> --%>
			<table class="hostN-table" border="0">
				<tr class="hostN-table-top">
				</tr>
				<tr class="hostN-table-middel">
					<td >
						<label for ="hostType" >제목 : </label>
						<input class="" style="width:1000px;" type="text" name="qna_title" value="${dto.qna_title}">
						
					</td>
					<td style="width: 200px;">
						조회수 : -
					</td>
				</tr>
				
			
			</table>
			<table class="hostN-table1" border="0">
				
				<tr class="hostN-table-bottom">
					<td>
						<textarea class="" rows="10" cols="100" name="qna_content" style="width:1500px; height: 500px;"
								 word-break:break-all >${dto.qna_content}</textarea>
					</td>
				</tr>
				
				<tr>
					<th colspan="2">
						<input class="btn" type="submit" value="답변등록">
						<input class="btn" type="reset" value="취소"
								onclick="#">
						<input class="btn" type="button" value="목록"
								onclick="window.location='hostI.ho'">
					</th>
				</tr>
		   </table>
</form>

  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>