<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="sidebar">
      <div class="sidebar-wrapper">
        <div class="logo">
          <a href="javascript:void(0)" class="simple-text logo-mini">
            HEXAGON
          </a>
          <a href="javascript:void(0)" class="simple-text logo-normal">
            : ADMIN 
          </a>
        </div>
        <ul class="nav">
          <li class="active ">
            <a href="/hexagon/dashboard.ho">
              <i class="tim-icons icon-chart-pie-36"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li>
            <a href="/hexagon/statistic.ho">
              <i class="tim-icons icon-chart-bar-32"></i>
              <p>통계분석</p>
            </a>
          </li>
          <li>
            <a href="/hexagon/board.ho">
              <i class="tim-icons icon-bell-55"></i>
              <p>게시판관리</p>
            </a>
          </li>
          <li>
            <a href="/hexagon/user.ho">
              <i class="tim-icons icon-single-02"></i>
              <p>회원관리</p>
            </a>
          </li>
          <li>
          	<ul class="dropdown nav-item"> <!-- 상품관리 드롭다운 테스트 -->
              <li>
              	<a href="/hexagon/product_fund.ho">
             	 <i class="tim-icons icon-puzzle-10"></i>
              		<p>펀드상품관리</p>
              	</a>
              </li>
              <li>
              	<a href="/hexagon/product_stock.ho">
             	 <i class="tim-icons icon-puzzle-10"></i>
              		<p>주식상품관리</p>
              	</a>
              </li>
              <li>
              	<a href="/hexagon/club.ho">
             	 <i class="tim-icons icon-puzzle-10"></i>
              		<p>계모임 관리</p>
              	</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="">
              <i class="tim-icons icon-world"></i>
              <p>마이페이지</p> <!-- 관리자 사내 공지 및 정보 페이지 -->
            </a>
          </li>
           <li>
           <a href="${path}login.gu">
           	로그아웃</a>
           </li>
        </ul>
      </div>
    </div>
</body>
</html>