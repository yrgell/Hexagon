<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 align="center">펀드 등록 페이지</h3>
<form action="fund_modifyPro.ho?${_csrf.parameterName}=${_csrf.token}" method="post" name="fundAdd" enctype="multipart/form-data">
	<input type="hidden" name="fund_item_no" value="${fivo.fund_item_no}">
	<table align="center" class="table">
		<tr>
			<th> 펀드이름 </th>
			<td>
			${fivo.fund_name}
			</td>
		</tr>
		
		<tr>
			<th> 펀드상품이미지 </th>
			<td>
				<input class="input" type="file" name="fund_img"  value="${fivo.fund_img}" maxlength="50">
			</td>
		</tr>
		
		<tr>
			<th> 펀드설명이미지 </th>
			<td>
				<input class="input" type="file" name="fund_eximg" value="${fivo.fund_eximg}" maxlength="50">
			</td>
		</tr>
		
		<tr>
			<th>투자상태</th>
			<td>
				<select name="fund_state" >
				 	<option value="${fivo.fund_state}">현재 : ${fivo.fund_state}</option>
					<option value="투자대기">투자대기</option>
					<option value="모집중">모집중</option>
					<option value="마감">마감</option>
					<option value="투자취소">투자취소</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<th>모집투자자수</th>
			<td>
				<input type="number" name="fund_investor_num" value="${fivo.fund_investor_num}" step="10" min="0" max="100">
			</td>
		</tr>
		
		<tr>
			<th>서비스이용료</th>
			<td>
				<input type="text" name="fund_comission" value="${fivo.fund_comission}"/>
			</td>
		</tr>
		<tr>
			<th	colspan="2">
				<input class="inputButton" type="submit" value="수정">
				<input class="inputButton" type="reset" value="초기화">
			</th>
		</tr>
	</table>
</form>
</body>
</html>