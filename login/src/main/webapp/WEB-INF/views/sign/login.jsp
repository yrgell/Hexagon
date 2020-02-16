<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title></title>
<meta name="viewport" content="width=device-width ,initial-scale=1">

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#intro" class="scrollto">Money Tree</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="">로그인</a></li>
          <li><a href="">회원가입</a></li>
          
          
          <li class="menu-has-children bigDrop"><a href="">상품조회</a>
            <ul class="smallDrop">
              <li><a href="#">펀드상품조회</a></li>
              <li><a href="#">계모임상품조회</a></li>
            </ul>
          </li>
          
          <li class="menu-has-children bigDrop"><a href="">이용방법</a>
            <ul class="smallDrop">
              <li><a href="#">이율표 계산기</a></li>
              <li><a href="#">투자상품 안내</a></li>
              <li><a href="#">기능사용 안내</a></li>
            </ul>
          </li>
           <li class="menu-has-children bigDrop"><a href="">게시판</a>
            <ul class="smallDrop">
              <li><a href="#">이벤트</a></li>
              <li><a href="#">이용후기</a></li>
            </ul>
          </li>
           <li cl
           ass="menu-has-children bigDrop"><a href="">고객센터</a>
            <ul class="smallDrop">
              <li><a href="#">자주 묻는 질문</a></li>
              <li><a href="#">1:1문의</a></li>
              <li><a href="#">공지사항</a></li>
            </ul>
          </li>
          <!-- <li><a href="">Contact</a></li> -->
        </ul>
      </nav><!-- #nav-menu-container -->

    </div>
  </header>
  <!-- #header -->
  
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
						<input type=submit class="login100-form-btn" value="Login">
							
                        </input>
                        <button class="login100-form-btn" >
							SignIn
                        </button>
                    </div>
				</form>
			</div>
		</div>
	</div>
  <!--contents-->
  <!--footer-->
  <footer>
    <div class="container">
       <div class="row">
       
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <ul class="adress">
                         <span>Adress</span>    
                         <li>
                            <p>서울특별시 금천구 가산동 426-5 월드 메르디앙 벤처 센터 2 차 410 호</p>
                          </li>
                               
                          <li>
                            <p>02-2025-4119</p>
                          </li>
                               
                          <li>
                            <p>info@gmail.com</p>
                          </li>
                     </ul>
                </div>
                
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <ul class="contact">
                         <span>Contact</span>    
                         <li>
                            <a href="#">이용약관</a>
                          </li>
                               
                          <li>
                             <a href="#">서비스 이용약관</a>
                          </li>
                               
                          <li>
                            <a href="#">투자자 이용약관</a>
                          </li>
                               
                          <li>
                             <a href="#">개인정보 처리방침 </a>
                          </li>
                               
                          <li>
                            <a href="#">윤리강경</a>
                         </li>
                    </ul>
                </div>
                
                
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                     <div class="search-text"> 
                        <div class="container">
                            <div class="row text-center">
                             
                               <div class="form">
                                    <span class="header-form">SIGN UP</span>    
                                    <form id="search-form" class="form-search form-horizontal">
                                        <input type="text" class="input-search" placeholder="Email Address">
                                        <button type="submit" class="btn-search"><span style="font-size:11px;">SUBMIT</span></button>
                                    </form>
                                </div>
                            
                            </div>         
                        </div>     
                    </div>
                </div>
           
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                   <ul class="social ">
                              <span>Social</span>
                             
                               <li>
                                    <a href="#"><img src="images/footerfacebook.png" alt="페이스북" width="36px"></a>
                               </li>
                              
                               <li>
                                    <a href="#"><img class="m-t-3 m-l-5"src="images/kakao_png.png" alt="카카오" width="32px"></a>
                               </li>
                                
                               <li>
                                    <a href="#"><img class="m-r-16" src="images/instargram.png" alt="인스타그램" width="48px"></a>
                               </li>
                     </ul>
               </div>
       </div> 
    </div>
</footer>
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>