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
						계 생성
					</span>
					
				</div>

				<form class="login100-form validate-form" action ="${path}gath_addPro.me?${_csrf.parameterName}=${_csrf.token}" method="post"
				 	id="signInForm" name="signInForm" enctype="multipart/form-data"  >
					<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
					<input type="hidden" id="hiddenId" name="hiddenId" value=0>

					<input type="hidden" id="GATH_NUM" name="GATH_NUM" value="${GATH_NUM}">
					<input type="hidden" id="gath_ref_date" name="gath_ref_date" value="${gath_ref_date}">

					
					<div class="wrap-input100 validate-input-btn m-b-26" data-validate="profile is required">
						<span class="label-input100">계 이미지</span>
						<input class="login300-form-btn" type="file" name="gath_img" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input-btn m-b-26" data-validate="UserName(email) is required">
						<span class="label-input100">계 이름</span>
						<input class="input100" type="text" id="GATH_NAME" name="GATH_NAME" placeholder="계이름" required>
						<span class="focus-input100"></span>
					</div>
				
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">이율</span>
						<input class="input100" type="text" id="rate" name="rate" placeholder="이율" required>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password Check Please">
						<span class="label-input100">목표금액</span>
						<input class="input100" type="text" id="GATH_GOAL" name="GATH_GOAL" placeholder="목표금액 (Re-type)" required>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "UserName is required">
						<span class="label-input100">월납입금</span>
						<input class="input100" type="text" name="GATH_MONTH_PAY" placeholder="월 납입금" required>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Phone Number is required">
						<span class="label-input100">기간</span>
						<input class="input100" type="text" id="GATH_TERM" name="GATH_TERM" placeholder="기간" required>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Phone Number is required">
						<span class="label-input100">설명</span>
						<input class="input100" type="text" id="GATH_EX" name="GATH_EX" placeholder="설명" required>
						<span class="focus-input100"></span>
					</div>
					
					
					<p class="detail_info_radio registItemValue">
						<input id="category1" name=GATH_CATEGORY type="radio" value="목돈"> <label
							for="category1" >목돈</label>
					</p>
					<p class="detail_info_radio registItemValue">
						<input id="category2" name="GATH_CATEGORY" type="radio" value="투자"> <label
							for="category2" >투자</label>
					</p>
					<p class="detail_info_radio registItemValue">
						<input id="category3" name="GATH_CATEGORY" type="radio" value="급전"> <label
							for="category3" >급전</label>
					</p>
					
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="window.location = '${path}gath_list.gu'">
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