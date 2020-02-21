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
				<div class="login100-form-title">
					<span class="login100-form-title-1">
						Sign In
					</span>
					<div class = "memjoin_steps_wrap">
			                <ol>
			                    <li class="memjoin_steps01 on">
			                        <i></i>
			                        STEP 01<br>기본정보
			                    </li>
			                    <li class="memjoin_steps02">
			                        <i></i>
			                        STEP 02<br>세부정보
			                    </li>
			                    <li class="memjoin_steps04">
			                        <i></i>
			                        STEP 03<br>가입완료
			                    </li>
			                </ol>
			            </div>
				</div>

				<form class="login100-form validate-form" action ="${path}joinNext.gu?${_csrf.parameterName}=${_csrf.token}" method="post"
				 id="signInForm" name="signInForm" enctype="multipart/form-data"  onsubmit="return signIncheck();">
					<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
					<input type="hidden" id="hiddenId" name="hiddenId" value=0>
					
					<div class="wrap-input100 validate-input-btn m-b-26" data-validate="profile is required">
						<span class="label-input100">프로필사진</span>
						<input class="login300-form-btn" type="file" name="profile_img">
					</div>
					
					<div class="wrap-input100 validate-input-btn m-b-26" data-validate="UserName(email) is required">
						<span class="label-input100">아이디(EMAIL)</span>
						<input class="input100" type="text" id="guestid" name="guestid" placeholder="Email">
						<input class="login300-form-btn" type="button" value="중복확인"  onclick="confirmId();">
					</div>
				
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">비밀번호</span>
						<input class="input100" type="password" id="pass" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password Check Please">
						<span class="label-input100">비밀번호 확인</span>
						<input class="input100" type="password" id="passRetype" name="passRetype" placeholder="Password (Re-type)">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "UserName is required">
						<span class="label-input100">이름</span>
						<input class="input100" type="text" name="name" placeholder="User name">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Phone Number is required">
						<span class="label-input100">전화번호</span>
						<input class="input100" type="text" name="mobile" placeholder="010-0000-0000">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input-btn m-b-18" data-validate = "postcode is required">
						<span class="label-input100">우편번호</span>
						<input class="input100" name="postcode" type="text" name="address1" placeholder="우편주소">
						<span class="focus-input100"></span>
						<input class="login300-form-btn" type="button" value="검색하기"/>
					</div class="wrap-input100 validate-input-btn m-b-18" data-validate = "postcode is required">
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "address is required">
						<input class="input100" name="address" type="text" name="address2" placeholder="주소">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Detail address is required">
						<input class="input100" name="detailAddress" type="text" name="address3" placeholder="상세주소">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="window.location = '${path}login.gu'">
							Before
						</button>
						<input type = "submit" class="login100-form-btn" value = "Next">
					</div>
					
				</form>
			</div>
		</div>
	</div>
	<!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>