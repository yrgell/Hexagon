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
<%@ include file = "../include/header2.jsp" %>
  <!-- #content -->
  <div class="limiter p-t-90">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						아이디 찾기
					</span>
				</div>

				<form class="login100-form validate-form">
          <div>
            본인 확인 이메일로 인증<br>
            <span class="title lh-1-0">
              본인확인 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.
            </span>
            </div>

          <div class="wrap-input100 validate-input m-b-26" data-validate = "Name is required">
						<span class="label-input100">이름</span>
						<input class="input100" type="password" name="name" placeholder="Password">
						<span class="focus-input100"></span>
          </div>
          
					<div class="wrap-input100 validate-input-btn m-b-18" data-validate="Email is required">
						<span class="label-input100">이메일 주소</span>
						<input class="input100" type="text" name="email" placeholder="Email">
						<input class="login300-form-btn" type="button" value="인증번호"/>
					</div>
				
					<div class="wrap-input100 validate-input m-b-18" data-validate = "verification code Check Please">
					<input class="input100" type="text" name="code" placeholder="verification code">
            <span class="focus-input100"></span>
            <!-- <span class="label-input100">인증번호가 다시 오지 않나요?<img src=""></span> -->
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
					  	다음
						</button>
				</form>
			</div>
		</div>
	</div>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>