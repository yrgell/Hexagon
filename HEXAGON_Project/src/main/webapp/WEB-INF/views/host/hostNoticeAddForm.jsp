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
<div class="hostNotice-form"><h3>공지사항</h3></div>
<div class="hostNotice-sub"><h4>헥사곤의 주요 소식을 전합니다.</h4></div>

<form action="hostNoticeAddPro.ho" method="post"">
<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
<table class="hostN-table" border="0">
	<tr class="hostN-table-top">
		<td>
			<label for ="hostType" >타입선택</label>
			<select id="hostType" name="nb_type">
				<option value="시스템운영">시스템운영</option>
				<option value="서비스운영">서비스운영</option>
				<option value="이벤트">이벤트</option>
			</select>
		</td>
	</tr>
	<tr class="hostN-table-middel">
		<td >
			<label for ="hostType" >제목</label>
			<input class="" style="width:1000px;" type="text" name="nb_title" placeholder="공지사항 제목을 입력하세요">
		</td>
	</tr>

</table>
<table class="hostN-table1" border="0">
	
	<tr class="hostN-table-bottom">
		<td>
			<textarea class="" rows="10" cols="100" name="nb_content" style="width:1500px; height: 500px;"
					placeholder="공지 내용을 입력하세요" word-break:break-all ></textarea>
		</td>
	</tr>
	
	<tr>
		<th colspan="2">
			<input class="btn" type="submit" value="등록">
			<input class="btn" type="reset" value="취소">
			<input class="btn" type="button" value="목록"
					onclick="window.location='hostN.ho'">
		</th>
		
	</tr>
</table>
</form>
	
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>