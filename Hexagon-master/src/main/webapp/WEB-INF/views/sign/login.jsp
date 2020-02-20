<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title></title>
<meta name="viewport" content="width=device-width ,initial-scale=1">
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
  <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						LogIn
					</span>
				</div>

				<form class="login100-form validate-form" action='/hexagon/loginPro.gu'  method="post"> 
				<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
                    <div class="limiter p-b-15  p-r-50 text-center">
                        <p class="m-b-14"> 간편 로그인 </p>
                    <button type="button" onclick="location.href='https://www.kakaocorp.com/'">
                        <img src="images/kakaobutton.png" alt="카카오로그인" width="35">
                    </button>
                    <button type="button" onclick="location.href='https://www.facebook.com/'">
                        <img src="images/facebook.png" alt= "페이스북로그인" width="45">
                    </button>
                    <button type="button" onclick="location.href='https://www.facebook.com/'">
                        <img src="images/gmail.png" alt= "페이스북로그인" width="35">
                    </button>
                </div>
 
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Id Email</span>
						<input class="input100" type="text" name="guestid" placeholder="Enter Email">
						<span class="focus-input100"></span>
					</div>


					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pass" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>


					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="#" class="txt1">
								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<input type=submit class="login100-form-btn" value="Login" value="login">
							
                        <input type="button" class="login100-form-btn" onclick="window.location='/hexagon/join.gu'" value="SignIn">
							
                    </div>
				</form>
			</div>
		</div>
	</div>
  <!--contents-->
  <!--footer-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>