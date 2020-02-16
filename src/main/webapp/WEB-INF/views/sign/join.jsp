<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title></title>
<meta name="viewport" content="width=device-width ,initial-scale=1">
</head>
<body>
<%@ include file = "../include/header.jsp" %>
   <!--contents--> 
	<div class="limiter p-t-90">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<form class="login100-form validate-form" action = "${path}joinNext.gu">
					<div class="wrap-input100 validate-input-btn m-b-26" data-validate="UserName(email) is required">
						<span class="label-input100">아이디(EMAIL)</span>
						<input class="input100" type="text" name="email" placeholder="Email">
						<input class="login300-form-btn" type="button" value="중복확인" onclick = "window.location='${path}idconfirmChk.gu'">
					</div>
				
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">비밀번호</span>
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password Check Please">
						<span class="label-input100">비밀번호 확인</span>
						<input class="input100" type="password" name="passRetype" placeholder="Password (Re-type)">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "UserName is required">
						<span class="label-input100">이름</span>
						<input class="input100" type="text" name="name" placeholder="User name">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">생년월일</span>
						<input class="input100" type="date" name="userbirthday" placeholder="Click Here" style="cursor:pointer;">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Phone Number is required">
						<span class="label-input100">전화번호</span>
						<input class="input100" type="text" name="phone" placeholder="010-0000-0000">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input-btn m-b-18" data-validate = "postcode is required">
						<span class="label-input100">우편번호</span>
						<input class="input100" name="postcode" type="text" name="pass" placeholder="우편주소">
						<span class="focus-input100"></span>
						<input class="login300-form-btn" type="button" value="검색하기"/>
					</div class="wrap-input100 validate-input-btn m-b-18" data-validate = "postcode is required">

					<div class="wrap-input100 validate-input m-b-18" data-validate = "address is required">
						<input class="input100" name="address" type="text" name="pass" placeholder="주소">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Detail address is required">
						<input class="input100" name="detailAddress" type="text" name="pass" placeholder="상세주소">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "postcode is required">
						<input class="input100" name="extraAddress" type="text" name="pass" placeholder="참고항목">
						<span class="focus-input100"></span>
					</div>
						
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							이전
						</button>
						<input type = "submit" class="login200-form-btn" value = "회원가입">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>