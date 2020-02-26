<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>

<!-- <meta name="viewport" content="width=device-width ,initial-scale=1">  --><!-- 원래 뷰포트 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- 추가한 뷰포트 -->
<link href="/hexagon/resources/images/s_icon.png" rel="shortcut icon">
<title>메인페이지</title>
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

<!--contents-->
 <security:authorize access="isAnonymous()">
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
                      <li><a href="#features-section-fund" target="_blank" class="nav-link"><span class="text-primary">펀드상품조회</span></a></li>
                      <li><a href="#features-section-stock" target="_blank" class="nav-link">주식상품조회</a></li>
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
	</security:authorize>
	
	<security:authorize access="hasRole('ROLE_USER')">
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
                  <li><a href="${path}login.gu">로그아웃</a></li>
         		  <li><a href="${path}mypage.me">마이페이지</a></li>
                <!-- 여기서부터 추가한 메뉴들!-->
                <!-- 상품조회 메뉴 -->
                <li class="has-children">
                  <a href="#features-section" class="nav-link">상품조회</a>
                    <ul class="dropdown arrow-top">
                      <li><a href="${path}fundList.gu">펀드상품조회</a></li>
		              <li><a href="${path}fundcustomiseIntro.me">펀드맞춤추천</a></li>
		              <li><a href="${path}stockList.gu">주식상품조회</a></li>
		              <li><a href="${path}gatheringList.gu">계모임상품조회</a></li>
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
    </security:authorize>   
<input type="button" value="관리자 모드" onclick="">
	
<!--contents-->
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
   
   
    <%-- <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

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
                      <li><a href="#features-section-fund" target="_blank" class="nav-link"><span class="text-primary">펀드상품조회</span></a></li>
                      <li><a href="#features-section-stock" target="_blank" class="nav-link">주식상품조회</a></li>
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
     --%>

    <div class="site-blocks-cover" style="overflow: hidden;">
      <div class="container">
        <div class="row align-items-center justify-content-center">

          <div class="col-md-12" style="position: relative;" data-aos="fade-up" data-aos-delay="200">
            
            <img src="/hexagon/resources/images/main/undraw_investing_7u74.svg" alt="Image" class="img-fluid img-absolute">

            <div class="row mb-4" data-aos="fade-up" data-aos-delay="200">
              <div class="col-lg-6 mr-auto">
                <h1>MoneyTree</h1>
                <h1>Make Your life</h1>
                <h1>More Profitable</h1>
                <p class="mb-5">나만의 목돈마련 솔루션, 머니트리<span>필요할 때 언제나 간편하게 <br>나의 목돈 마련은 머니트리로 시작하세요!</span></p>
                <div>
                  <a href="#" class="btn btn-primary mr-2 mb-2">시작하기</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>  
    
	<!-- 회사 소개 -->
    <div class="site-section bg-light" id="about-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3">About MoneyTree</h2>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-lg-6" data-aos="fade-right">
            <img src="/hexagon/resources/images/main/undraw_bookmarks_r6up.svg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 ml-auto pl-lg-5">
            <h2 class="text-black mb-4 h3 font-weight-bold">Our Mission</h2>
            <p class="mb-4"> 
            	머니트리는 높은 이자수익과 빠르게 목돈을 마련할 수 있는 계모임 서비스를 구축하고 있으며, 
            	또한 뛰어난 기술력과 네트워크를 통해 맞춤 투자 서비스를 제공합니다.
            </p>
            <ul class="ul-check mb-5 list-unstyled success">
              <li>신용등급 하락없는 목돈마련</li>
              <li>빠르게 가능한 목돈마련</li>
              <li>높은 이자수익 목돈 마련</li>
              <li>빅데이터 기반의 맞춤투자</li>
            </ul>
            <p><a href="#" class="btn btn-primary">머니트리 더 알아보기</a></p>
          </div>
        </div>
      </div>
    </div>

	<!-- 회사 디테일 소개 -->
    <div class="site-section" id="our-team-section">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center"  data-aos="fade-up">
          <div class="col-7 text-center  mb-5">
            <h2 class="section-title">계모임 시작하기</h2>
            <p class="lead">계획에 맞춰 자유롭게 계모임에 참여 할 수 있고, 누구나 원하는 조건으로 계모임을 직접 만들 수 있습니다.</p>
          </div>
        </div>
       
        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up" data-aos-delay="100">
            <div class="person">
              <div class="bio-img">
                <figure>
                  <img src="/hexagon/resources/images/main/계모임1.jpg" alt="Image" class="img-fluid">
                </figure>
                <div class="social">
                  <h3><a href="#">계모임 참여하기</a></h3>
                </div>
              </div>
              <h2 class="text-black h1">목돈모아 유럽여행가요!</h2>
              <span class="sub-title d-block mb-3">다같이 열심히 모아서 유럽여행 가요!</span>
              <p>월 1,200,000원</p>
              <p>이율 19% 약정금 1560만원 총 적립</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up" data-aos-delay="200">
            <div class="person">
              <div class="bio-img">
                <figure>
                  <img src="/hexagon/resources/images/main/계모임2.jpg" alt="Image" class="img-fluid">
                </figure>
                <div class="social">
                  <h3><a href="#">계모임 참여하기</a></h3>
                </div>
              </div>
              <h2 class="text-black h1">아이 종잣돈 만들어주기 첫걸음</h2>
              <span class="sub-title d-block mb-3">우리 아이들의 종잣돈이 지금부터 시작해야합니다!</span>
	              <p>월 100,000원</p>
	              <p>이율 21% 약정금 70만원 총 적립</p>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up" data-aos-delay="300">
            <div class="person">
              <div class="bio-img">
                <figure>
                  <img src="/hexagon/resources/images/main/계모임3.jpg" alt="Image" class="img-fluid">
                </figure>
                <div class="social">
                 <h3><a href="#">계모임 참여하기</a></h3>
                </div>
              </div>
              <h2 class="text-black h1">치아교정을 위한 목돈 마련하기!</h2>
              <span class="sub-title d-block mb-3">치아교정을 비용을 위한 계모임입니다. 새해를 맞이해 더 예뻐지기위해 도전해봅니다!</span>
              <p>월 1,000,000원 </p>
	          <p>이율 22% 약정금 5,000,000원 총 적립</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
            <div class="person">
              <div class="bio-img">
                <figure>
                  <img src="/hexagon/resources/images/main/계모임4.png" alt="Image" class="img-fluid">
                </figure>
                <div class="social">
                  <h3><a href="#">계모임 참여하기</a></h3>
                </div>
              </div>
              <h2 class="text-black h1">살뜰히 모아 취미생활에 투자해요!</h2>
              <span class="sub-title d-block mb-3">취미를 즐길 비용이나 레슨 받을 때 드는 수업료를 모으기 위한 계모임입니다!</span>
              <p>월 200,000원 </p>
	          <p>이율 19% 약정금 2,600,000원 총 적립</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up" data-aos-delay="100">
            <div class="person">
              <div class="bio-img">
                <figure>
                  <img src="/hexagon/resources/images/main/계모임5.jpg" alt="Image" class="img-fluid">
                </figure>
                <div class="social">
                  <h3><a href="#">계모임 참여하기</a></h3>
                </div>
              </div>
              <h2 class="text-black h1">목돈마련 프로젝트</h2>
              <span class="sub-title d-block mb-3">1년동안 목돈 마련을 위해 함께 해요!</span>
           		<p>월 500,000원 </p>
	          	<p>이율 19% 약정금 6,500,000원 총 적립</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up" data-aos-delay="200">
            <div class="person">
              <div class="bio-img">
                <figure>
                  <img src="/hexagon/resources/images/main/계모임6.jpg" alt="Image" class="img-fluid">
                </figure>
                <div class="social">
                  <h3><a href="#">계모임 참여하기</a></h3>
                </div><!-- social 끝 -->
              </div><!-- bio-img 끝 -->
              <h2 class="text-black h1">천만원 종잣돈 모읍시다!</h2>
              <span class="sub-title d-block mb-3">우리 종자돈 천만원 모아봅시다! 다달이 적금 납입 해나가봐요</span>
             	<p>월 800,000원 </p>
	          	<p>이율 19% 약정금 10,400,000원 총 적립</p>
            </div><!-- person 끝 -->
          </div><!-- col-lg-4 col-md-6 mb-4 끝 -->
          
        </div>
      </div>
      <div class="text-center" data-aos="fade-up"  data-aos-delay="100">
        <a href="${path}gatheringList.gu" class="btn btn-primary mr-2 mb-2"> + 계모임 더 알아보기</a>
      </div>
    </div>
    
  <!--펀드 투자 상품 목록-->
    <div class="site-section" id="features-section-fund">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center"  data-aos="fade-up"> 
          <div class="col-7 text-center mb-5"> 
            <h2 class="section-title">Fund List</h2>
            <p class="lead">머니트리 펀드 투자 상품</p>
          </div> <!-- col-7 text-center mb-5 끝--> 
        </div> <!--row mb-5 justify-content-center text-center 끝-->

        <div class="row align-items-stretch">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
            <div class="unit-4 d-block">
              <div class="unit-4-icon mb-3">
                <span class="icon-wrap"><span class="text-primary icon-autorenew"></span></span>
              </div> <!--unit-4-icon mb-3 끝-->
              <div>
                <h3>SCF베이직</h3>
                <p>안정지향 법인신용 연6.00%  1개월</p>
                <p><a href="#">투자하기</a></p>
              </div>
            </div> <!--"unit-4 d-block 끝-->
          </div> <!--col-md-6 col-lg-4 mb-4 mb-lg-4 끝-->

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="unit-4 d-block">
              <div class="unit-4-icon mb-3">
                <span class="icon-wrap"><span class="text-primary icon-store_mall_directory"></span></span>
              </div> <!-- unit-4-icon mb-3 끝-->
              <div>
                <h3>여수 마리나항만</h3>
                <p>균형지향 건설자금 연13.00% 10개월</p>
                <p><a href="#">투자하기</a></p>
              </div>
            </div> <!-- unit-4 d-block  끝-->
          </div> <!-- col-md-6 col-lg-4 mb-4 mb-lg-4 끝 -->

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up"  data-aos-delay="200">
            <div class="unit-4 d-block">
              <div class="unit-4-icon mb-3">
                <span class="icon-wrap"><span class="text-primary icon-shopping_basket"></span></span>
              </div> <!-- unit-4-icon mb-3끝-->
              <div>
                <h3>청평호 리버뷰</h3>
                <p>안전지향 건설자금 연13.00% 15개월</p>
                <p><a href="#">투자하기</a></p>
              </div>
            </div> <!--"unit-4 d-block 끝-->
          </div> <!--col-md-6 col-lg-4 mb-4 mb-lg-4 끝 -->
          
        </div> <!-- row align-items-stretch 끝 -->
      </div> <!--row align-items-stretch 끝 -->
      <div class="text-center" data-aos="fade-up"  data-aos-delay="100">
        <a href="${path}fundList.gu" class="btn btn-primary mr-2 mb-2"> + 펀드 더 알아보기</a>
      </div>
    </div> <!--container 끝 -->

          <!--주식 투자 상품 목록-->
          <div class="site-section" id="features-section-stock">
            <div class="container">
              <div class="row mb-5 justify-content-center text-center"  data-aos="fade-up">
                <div class="col-7 text-center  mb-5">
                  <h2 class="section-title">Stock List</h2>
                  <p class="lead">머니트리 주식 투자 상품</p>
                </div>
              </div> <!--row mb-5 끝-->

              <div class="row align-items-stretch">
                <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
                  <div class="unit-4 d-block">
                    <div class="unit-4-icon mb-3">
                      <span class="icon-wrap"><span class="text-primary icon-settings_backup_restore"></span></span>
                    </div>
                    <div>
                      <h3>카카오[035720]</h3>
                      <p>189,500원</p>
                      <p>추천후수익률 92.39%</p>
                      <p>추천일 2019-02-22</p>
                      <p><a href="#">투자하기</a></p>
                    </div>
                  </div>
                </div> <!--col-md-6 끝-->

                <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100">
                  <div class="unit-4 d-block">
                    <div class="unit-4-icon mb-3">
                      <span class="icon-wrap"><span class="text-primary icon-sentiment_satisfied"></span></span>
                    </div>
                    <div>
                      <h3>하이트진로[000080]</h3>
                      <p>30,000원</p>
                      <p>추천후수익률 46.34%</p>
                      <p>추천일 2019-01-08</p>
                      <p><a href="#">투자하기</a></p>
                    </div>
                  </div>   
                </div> <!--col-md-6 끝-->

                <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
                  <div class="unit-4 d-block">
                    <div class="unit-4-icon mb-3">
                      <span class="icon-wrap"><span class="text-primary icon-power"></span></span>
                    </div>
                    <div>
                      <h3>삼성바이오로직스[207940]</h3>
                      <p>486,500원</p>
                      <p>추천후수익률 24.42%</p>
                      <p>추천일 2018-12-28</p>
                      <p><a href="#">투자하기</a></p>
                    </div>
                  </div>
                </div> <!--col-md-6 끝-->
            </div><!--container 끝-->
          </div><!--site-section 끝-->
          <div class="text-center" data-aos="fade-up"  data-aos-delay="100">
            <a href="${path}stockList.gu" class="btn btn-primary mr-2 mb-2"> + 주식 더 알아보기</a>
          </div>
       </div>
    
    <!-- 후기 게시판 -->   
    <div class="feature-big">
      <div class="container">
        <div class="row mb-5 site-section">
          <div class="col-lg-7" data-aos="fade-right">
            <img src="/hexagon/resources/images/main/undraw_gift_card_6ekc.svg" alt="Image" class="img-fluid">
          </div>
          <!-- 고객 정보 -->
          <div class="col-lg-5 pl-lg-5 ml-auto mt-md-5">
            <h2 class="text-black">후기 게시판</h2>
            <p class="mb-4">머니트리를 사용하신 고객님들의 소중한 후기 입니다.</p>
            
            <!-- 고객 정보 -->
            <div class="author-box" data-aos="fade-left">
              <div class="d-flex mb-4">
              	<!-- 고객 사진 -->
                <div class="mr-3">
                  <img src="/hexagon/resources/images/main/person_4.jpg" alt="Image" class="img-fluid rounded-circle">
                </div>
                <!-- 고객 정보 -->
                <div class="mr-auto text-black">
                  <strong class="font-weight-bold mb-0">허성민</strong> <br>
                  	군포시 부곡동 31세 남
                </div>
              </div>
              <blockquote>&ldquo;급하게 돈이 필요했었는데 머니트리의 계모임을 통해서 돈을 마련할 수 있었습니다.또한 이렇게 계모임의 순서 기능을 통해 
              	신용등급에 영향을 끼치지 않고 돈을 마련할 수 있다는건 머니트리의 큰 메리트 인것 같습니다!&rdquo;</blockquote>
            </div>
          </div>
        </div> <!-- row mb-5 site-section 끝 -->

        <div class="mt-5 row mb-5 site-section ">
          <div class="col-lg-7 order-1 order-lg-2" data-aos="fade-left">
            <img src="/hexagon/resources/images/main/undraw_metrics_gtu7.svg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 pr-lg-5 mr-auto mt-5 order-2 order-lg-1">
           <!--  <h2 class="text-black">후기 게시판</h2>
            <p class="mb-4">머니트리를 사용하신 고객님들의 소중한 후기 입니다.</p> -->
            
            <div class="author-box" data-aos="fade-right">
              <div class="d-flex mb-4">
                <div class="mr-3">
                  <img src="/hexagon/resources/images/main/person_1.jpg" alt="Image" class="img-fluid rounded-circle">
                </div>
                <div class="mr-auto text-black">
                  <strong class="font-weight-bold mb-0">장진호</strong> <br>
                   	서울시 가산동 28세 여
                </div>
              </div>
              <blockquote>&ldquo;신혼집을 마련하고자 머니트리의 계모임을 통해서 다달이 돈을 모으고 있어요! 같은 목적을 가진 분들과 같이 계모임을 하니 관련 정보도 얻고 돈도 모으고 너무 좋아요!&rdquo;</blockquote>
            </div>
          </div>
        </div>
      </div>
    </div>
	<!-- 이벤트  최신 이벤트 상위 4개만 긁어 오기-->
    <div class="site-section testimonial-wrap bg-light" id="testimonials-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
          	<!-- 이벤트 상위 타이틀 -->
            <h2 class="section-title mb-3">이벤트</h2>
            <h3>머니트리의 다양한 이벤트를 만나보세요</h3>
          </div>
        </div>
      </div>
      <div class="slide-one-item home-slider owl-carousel">
          <div>
            <div class="testimonial">
             <figure class="mb-4 d-block align-items-center justify-content-center">
                <div>
             		<img src="/hexagon/resources/images/이벤트 이미지1.jpg" alt="EventImage">
             	</div>
             	<p>기간 : 2020-02-15 ~ 2020-02-28</p>
             </figure>
            </div>
          </div>
          <div>
            <div class="testimonial">             
              <figure class="mb-4 d-block align-items-center justify-content-center">
                <div>
                	<img src="/hexagon/resources/images/이벤트 이미지2.jpg" alt="Image">
                </div>
                <p>기간 : 2020-02-15 ~ 2020-02-28</p>
              </figure>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4 d-block align-items-center justify-content-center">
                <div><img src="/hexagon/resources/images/이벤트 이미지3.jpg" alt="Image"></div>
              </figure>
              <p>기간 : 2020-02-15 ~ 2020-02-28</p>
            </div>
           
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4 d-block align-items-center justify-content-center">
                <div><img src="/hexagon/resources/images/이벤트 이미지4.jpg" alt="Image"></div>
              </figure>
              <p>기간 : 2020-02-15 ~ 2020-02-28</p>
            </div>
        </div>
    </div>

    <div class="site-section" id="blog-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3">언론보도</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="h-entry">
              <img src="/hexagon/resources/images/main/img_1.jpg" alt="Image" class="img-fluid">
              <h2><a href="#">Make Your Business More Profitable</a></h2>
              <div class="meta mb-4">Ham Brook <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="#">News</a></div>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
              <p><a href="#">Continue Reading...</a></p>
            </div> 
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="h-entry">
              <img src="/hexagon/resources/images/main/img_2.jpg" alt="Image" class="img-fluid">
              <h2><a href="#">Make Your Business More Profitable</a></h2>
              <div class="meta mb-4">James Phelps <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="#">News</a></div>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
              <p><a href="#">Continue Reading...</a></p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="h-entry">
              <img src="/hexagon/resources/images/main/img_3.jpg" alt="Image" class="img-fluid">
              <h2><a href="#">Make Your Business More Profitable</a></h2>
              <div class="meta mb-4">James Phelps <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="#">News</a></div>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
              <p><a href="#">Continue Reading...</a></p>
            </div> 
          </div>
          
        </div>
      </div>
    </div>

    <div class="site-section bg-image2 overlay" id="contact-section" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3 text-white">Contact Us</h2>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-7 mb-5">

            

            <form action="#" class="p-5 bg-white">
              
              <h2 class="h4 text-black mb-5">Contact Form</h2> 

              <div class="row form-group">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="text-black" for="fname">First Name</label>
                  <input type="text" id="fname" class="form-control rounded-0">
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="lname">Last Name</label>
                  <input type="text" id="lname" class="form-control rounded-0">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="email">Email</label> 
                  <input type="email" id="email" class="form-control rounded-0">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Subject</label> 
                  <input type="subject" id="subject" class="form-control rounded-0">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Message</label> 
                  <textarea name="message" id="message" cols="30" rows="7" class="form-control rounded-0" placeholder="Leave your message here..."></textarea>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Send Message" class="btn btn-primary mr-2 mb-2">
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
     <%@ include file = "../include/footer.jsp" %>
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
</body>
</html>