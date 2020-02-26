<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 align="center" class="fs-60">펀드 등록 페이지</h3>
<form action="fund_add_pro.ho?${_csrf.parameterName}=${_csrf.token}&fund_detail_state=+정상등록" method="post" name="fundAdd" enctype="multipart/form-data"> 
		<!-- 가지고 있는 펀드 정보 -->
	<div class="input-group-addon">
	<table class="table p-r-71" style="display:inline;">
			<tr>
				<th colspan = "6">펀드 정보 목록</th>
			</tr>
			<tr>
				<th>펀드이름</th>
				<th>모집금액</th>
				<th>펀드등급</th>
				<th>투자상품성향</th>
				<th>펀드 실행일</th>
				<th>펀드등록상태</th>
			</tr>
			<c:forEach var="dto" items = "${dtos}">
				<tr>
					<td>${dto.fund_name}</td>
					<td>${dto.fund_goal_Money}</td>
					<td>${dto.fund_grade}</td>
					<td>${dto.fund_type}</td>
					<td>${dto.fund_execute_date}</td>
					<td>${dto.fund_detail_state}</td>
				</tr>
			</c:forEach>
	</table>
		<table align="center" class="table m-t-44" style="display:inline;">
		<tr>
			<th> 펀드이름 </th>
			<td>
				<input class="input" type="text" name="fund_name" maxlength="300"
					placeholder="펀드이름을 입력하세요!" autofocus required>
			</td>
		</tr>
		
		<tr>
			<th> 펀드상품이미지 </th>
			<td>
				<input class="input" type="file" name="fund_img" maxlength="50" required>
			</td>
		</tr>
		
		<tr>
			<th> 펀드설명이미지 </th>
			<td>
				<input class="input" type="file" name="fund_eximg" maxlength="50" required>
			</td>
		</tr>
		
		<tr>
			<th>투자상태</th>
			<td>
				<select name="fund_state">
					<option value="모집대기">모집대기</option>
					<option value="모집진행중">모집진행중</option>
					<option value="모집완료">모집완료</option><!-- 모집금액이 모두 차면 실행 -->
					<option value="상환대기">상환중</option><!-- 실행일이 지나면 -->
					<option value="상환대기">투자완료</option><!-- 상환일이 되면 -->
					<option value="상환완료">상환완료</option><!-- 투자기간이 만료되고 어카운트로 수익금이 입력될때  -->
				</select>
			</td>
		</tr>
		<tr>
			<th>서비스이용료</th>
			<td>
				<select name="fund_comission">
					<option value="0.05">5%</option>
					<option value="0.1">10%</option>
				</select>
			</td>
		</tr>
		<tr>
			<th	colspan="2" class="text-center fs-36" >
				<input class="input-sm" type="submit" value="추가" style="background-color:#fff;">
				<input class="input-sm" type="reset" value="초기화" style="background-color:#fff;">
			</th>
		</tr>
	</table>
	</div>
</form>
<%@ include file="../include/footer.jsp" %>
</body>
</html>