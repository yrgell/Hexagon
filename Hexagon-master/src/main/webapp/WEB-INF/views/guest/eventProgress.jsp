<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../settings.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진행중인 이벤트 게시판</title>
</head>
<body>

<table>

	<%-- <forEach var="${eventProgress}" items="${eventProgress}"> --%>
		
		<tr>
			<td colspan="2"><img src="${project}images/상위이벤트.jpg"></td>
		</tr>
		
		<tr>
			<td colspan="2">[D-day]</td>
		</tr>
		<tr>
			<td colspan="2">2020-02-08 ~ 2020-02-25</td>
		</tr>
		<tr>
			<td><img src="${project}images/진행중인이벤트.jpg"></td>
			<td><img src="${project}images/진행중인이벤트2.jpg"></td>
		</tr>
		
		<tr>
			<td>[D-day]</td>
			<td>[Daily]</td>
		</tr>
		
		<tr>
			<td>2020-02-08 ~ 2020-02-25</td>
			<td>상시</td>
		</tr>
	
	<!-- </forEach> -->

</table>


</body>
</html>