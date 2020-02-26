<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../member_setting.jsp" %>
<!DOCTYPE html>
<html>
<body>
<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="${path}.gu" class="scrollto">Money Tree</a></h1>
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="">로그아웃</a></li>
          
           <li class="menu-has-children bigDrop"><a href="">마이페이지</a>
            <ul class="smallDrop">
              <li><a href="#">정보수정</a></li>
              <li><a href="#">투자내역</a></li>
              <li><a href="#">투자스케줄</a></li>
              <li><a href="#">문의내역</a></li>
              <li><a href="#">계모임관리</a></li>
            </ul>
          </li>
          
          
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
           <li class="menu-has-children bigDrop"><a href="">고객센터</a>
            <ul class="smallDrop">
              <li><a href="#">자주 묻는 질문</a></li>
              <li><a href="#">1:1문의</a></li>
              <li><a href="#">공지사항</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </header>
  <!-- #header -->
</body>
</html>