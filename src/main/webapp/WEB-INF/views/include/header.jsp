<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="${path}.gu" class="scrollto">Money Tree</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="${path}login.gu">로그인</a></li>
          <li><a href="${path}join.gu">회원가입</a></li>
          
          
          <li class="menu-has-children bigDrop"><a href="">상품조회</a>
            <ul class="smallDrop">
              <li><a href="${path}fundList.gu">펀드상품조회</a></li>
              <li><a href="${path}stockList.gu">주식상품조회</a></li>
              <li><a href="${path}gatheringList.gu">계모임상품조회</a></li>
            </ul>
          </li>
          
          <li class="menu-has-children bigDrop"><a href="">이용방법</a>
            <ul class="smallDrop">
              <li><a href="${path}getInterest.gu">계모임 이율표 계산기</a></li>
              <li><a href="${path}howtoFund.gu">투자상품 안내</a></li>
              <li><a href="${path}howtoGath.gu">기능사용 안내</a></li> <!-- 여기 어떤 내용을 넣을지에 따라 네이밍 다시!! -->
            </ul>
          </li>
           <li class="menu-has-children bigDrop"><a href="">게시판</a>
            <ul class="smallDrop">
              <li><a href="${path}event.gu">이벤트</a></li>
              <li><a href="${path}reviews.gu">이용후기</a></li>
            </ul>
          </li>
           <li cl
           ass="menu-has-children bigDrop"><a href="">고객센터</a>
            <ul class="smallDrop">
              <li><a href="${path}faq.gu">자주 묻는 질문</a></li>
              <li><a href="${path}personalQ.gu">1:1문의</a></li>
              <li><a href="${path}notice.gu">공지사항</a></li>
            </ul>
          </li>
          <!-- <li><a href="">Contact</a></li> -->
        </ul>
      </nav><!-- #nav-menu-container -->

    </div>
  </header>
  <!-- #header -->
</body>
</html>