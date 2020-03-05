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
						계 참가
					</span>
				</div>

				<form class="login100-form validate-form" action ="${path}gath_joinPro.me" method="post"
				 	id="signInForm" name="signInForm"   >
					<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">

					<input type="hidden" id="GATH_NUM" name="GATH_NUM" value="${GATH_NUM}">
					<input type="hidden" id="gath_ref_date" name="gath_ref_date" value="${gath_ref_date}">
					
					<!-- 참가가능한 순번만 체크가능  -->
					<div class="wrap-input100 validate-input-btn m-b-26">
						<c:if test="${vo.first == null}">
							<input class="input100" id="1" name="GATH_TURN" type="radio" value="1" >
							<label for="1">순번1</label>
						</c:if>
						<c:if test="${vo.second == null}">
							<input class="input100" id="2" name="GATH_TURN" type="radio" value="2">
							<label for="2">순번2</label>
						</c:if>
						<c:if test="${vo.third == null}">
							<input class="input100" id="3" name="GATH_TURN" type="radio" value="3">
							<label for="3">순번3</label>
						</c:if>
						<c:if test="${vo.fourth == null}">
							<input class="input100" id="4" name="GATH_TURN" type="radio" value="4">
							<label for="4">순번4</label>
						</c:if>
						<c:if test="${vo.fifth == null}">
							<input class="input100" id="5" name="GATH_TURN" type="radio" value="5">
							<label for="5">순번5</label>
						</c:if>
					</div>

					<div class="wrap-input100 validate-input-btn m-b-26" >
						<span class="label-input100">순번고려 이자률 확인</span>
						<input class="input100" type="text" id="GATH_ACTUAL_RATE" name="GATH_ACTUAL_RATE" placeholder="순번고려 이자률" readonly>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Phone Number is required">
						<span class="label-input100">월납입금</span>
						<input class="input100" type="text" id="GATH_MONTH_PAY" name="GATH_MONTH_PAY" placeholder="월납입금" required>
						<span class="focus-input100"></span>
					</div>
					
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

<script type="text/javascript">
	var first = ${rate.first};
	var second = ${rate.second};
	var third = ${rate.third};
	var fourth = ${rate.fourth};
	var fifth = ${rate.fifth};
	var GATH_MONTH_PAY =${vo.GATH_MONTH_PAY} ;
	var result ="";
	    $(document).ready(function () {
	
	      $('#1').click(function () {
	    	  
	        $('input[name="GATH_ACTUAL_RATE"]').val(first);
	        result = GATH_MONTH_PAY*(100-first)/100;
	        $('input[name="GATH_MONTH_PAY"]').val(result);
	      });
	      
	      $('#2').click(function () {
	         $('input[name="GATH_ACTUAL_RATE"]').val(second);
	         result = GATH_MONTH_PAY*(100-second)/100;
	        $('input[name="GATH_MONTH_PAY"]').val(result);
	 	  });
	      
	      $('#3').click(function () {
	         $('input[name="GATH_ACTUAL_RATE"]').val(third);
	         result = GATH_MONTH_PAY;
	        $('input[name="GATH_MONTH_PAY"]').val(result);
	       });
	      
	      $('#4').click(function () {
	         $('input[name="GATH_ACTUAL_RATE"]').val(fourth);
	         result = GATH_MONTH_PAY*(100+fourth)/100;
	        $('input[name="GATH_MONTH_PAY"]').val(result);
	       });
	      
	      $('#5').click(function () {
	         $('input[name="GATH_ACTUAL_RATE"]').val(fifth);
	         result = GATH_MONTH_PAY*(100+fifth)/100;
	        $('input[name="GATH_MONTH_PAY"]').val(result);
	       });
	    });
  </script>
  </body>
</html>