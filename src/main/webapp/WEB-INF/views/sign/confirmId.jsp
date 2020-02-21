<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../settings.jsp"%>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>중복확인 페이지</h2>
	
	<%
		String id =(String)request.getAttribute("id"); //(타입)Object타입 형변환
		int cnt =(int)request.getAttribute("SelectCnt"); //(타입)Object타입 형변환
		
	%>
	<form action="idcheck.gu" method="post" name="confirmForm" onsubmit="confirmIdCheck();">
	<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
		<%
			//id 중복 
			if(cnt==1){
		%>
				<table >
						<tr>
							<th colspan="2">
								<span><%=id %></span>는 사용할 수 없습니다
							</th>
							<th>아이디 :
							<input type="text" class="input" name="guestid" placeholder="아이디입력" maxlength="" style="width:15px"></th>
						</tr>
						<tr>
							<th colspan="2">
								<input class="inputbutton" type="submit" value="확인">
								<input class="inputbutton" type="button" value="취소" onclick="self.close();">
							</th>
						</tr>
				</table>
				
		<%	
			//중복아닐때	
			}else{
		%>
				<table>
					<tr>
						<td align="center">
							<span><%=id %></span>는 사용할수 있습니다
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<input class="inputbutton" type="button" value="확인" onclick="setId('<%=id%>')">
						</th>
					</tr>
				</table>
		<%		
			}
		%>
		
	
	</form>

</body>
</html>