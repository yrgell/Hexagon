<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">
<head>

</head>
<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
 <link rel="stylesheet" href="/hexagon/resources/fonts/main/icomoon/style.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/bootstrap.min.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/jquery-ui.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/owl.carousel.min.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/owl.theme.default.min.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/owl.theme.default.min.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/jquery.fancybox.min.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/bootstrap-datepicker.css">
 <link rel="stylesheet" href="/hexagon/resources/fonts/main/flaticon/font/flaticon.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/aos.css">
 <link rel="stylesheet" href="/hexagon/resources/css/main/style.css">
<body>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
 
  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>

  <div class="site-wrap"  id="home-section">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
   
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-md-3 col-xl-4  d-block">
            <h1 class="mb-0 site-logo"><a href="${path}.gu" class="text-black h2 mb-0">MoneyTree<span class="text-primary">.</span> </a></h1>
          </div>

          <div class="col-12 col-md-9 col-xl-8 main-menu">
            <nav class="site-navigation position-relative text-right" role="navigation">
		
	            <!-- 메인 페이지 메뉴 -->
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block ml-0 pl-0">
                <!--<li><a href="#home-section" class="nav-link">Home</a></li>-->
	    
                <!-- 여기서부터 추가한 메뉴들!-->
                <li><a href="${path}login.gu" class="">로그인</a></li>
                <li><a href="${path}join.gu" class="">회원가입</a></li>
                
                <!-- 여기서부터 추가한 메뉴들!-->
                <!-- 상품조회 메뉴 -->
                <li class="has-children">
                  <a href="#features-section" class="nav-link">상품조회</a>
                    <ul class="dropdown arrow-top">
                      <li><a href="${path}fundList.gu" target="_blank" class="nav-link"><span class="text-primary">펀드상품조회</span></a></li>
                      <li><a href="${path}stockList.gu" target="_blank" class="nav-link">주식상품조회</a></li>
                      <li><a href="${path}gatheringList.gu" class="nav-link">계모임 상품 조회</a></li>
                    </ul>
              </li>

                <!-- 이용방법 메뉴 -->
                <li class="has-children">
                  <a href="#about-section" class="nav-link">이용방법</a>
                    <ul class="dropdown arrow-top">
                      <li><a href="${path}getInterest.gu" target="_blank" class="nav-link"><span class="text-primary">계모임 이율표 계산기</span></a></li>
                      <li><a href="${path}howtoFund.gu" target="_blank" class="nav-link">투자상품 안내</a></li>
                      <li><a href="${path}howtoGath.gu" class="nav-link">기능사용 안내</a></li>
                    </ul>
                </li>

                <!-- 게시판 메뉴 -->
                <li class="has-children">
                  <a href="#about-section" class="nav-link">게시판</a>
                    <ul class="dropdown arrow-top">
                      <li><a href="${path}event.gu" target="_blank" class="nav-link"><span class="text-primary">이벤트</span></a></li>
                      <li><a href="${path}reviews.gu" target="_blank" class="nav-link">이용후기</a></li>
                      <li><a href="#our-team-section" class="nav-link">기능사용 안내</a></li>
                    </ul>
                 </li>

                <!-- 고객센터 -->
                <li class="has-children">
                  <a href="#about-section" class="nav-link">고객센터</a>
                    <ul class="dropdown arrow-top">
                      <li><a href="${path}faq.gu" target="_blank" class="nav-link"><span class="text-primary">자주묻는 질문</span></a></li>
                      <li><a href="${path}personalQ.gu" target="_blank" class="nav-link">1:1 문의</a></li>
                      <li><a href="${path}notice.gu" class="nav-link">공지사항</a></li>
                    </ul>
                </li>
              </ul>
            </nav>
          </div>

          <div class="col-6 col-md-9 d-inline-block d-lg-none ml-md-0" >
            <a href="#" class="site-menu-toggle js-menu-toggle text-black float-right">
              <span class="icon-menu h3"></span>
            </a>
          </div>

        </div>
      </div>
    </header>
  <script src="/hexagon/resources/js/main/jquery-3.3.1.min.js"></script>
  <script src="/hexagon/resources/js/main/jquery-ui.js"></script>
  <script src="/hexagon/resources/js/main/popper.min.js"></script>
  <script src="/hexagon/resources/js/main/bootstrap.min.js"></script>
  <script src="/hexagon/resources/js/main/owl.carousel.min.js"></script>
  <script src="/hexagon/resources/js/main/jquery.countdown.min.js"></script>
  <script src="/hexagon/resources/js/main/bootstrap-datepicker.min.js"></script>
  <script src="/hexagon/resources/js/main/jquery.easing.1.3.js"></script>
  <script src="/hexagon/resources/js/main/aos.js"></script>
  <script src="/hexagon/resources/js/main/jquery.fancybox.min.js"></script>
  <script src="/hexagon/resources/js/main/jquery.sticky.js"></script>
  <script src="/hexagon/resources/js/main/main.js"></script>
  
  </div> <!-- .site-wrap -->
</body>
</html>