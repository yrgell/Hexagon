<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../settings.jsp" %>
<html lang="ko">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="/hexagon/resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/hexagon/resources/assets/img/favicon.png">
  <title>
    펀드 상품 관리 
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="/hexagon/resources/assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="/hexagon/resources/assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="/hexagon/resources/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="white-content">
  <div class="wrapper">
    <%@ include file="../include/menu.jsp" %>
    <div class="main-panel">
      <!-- Navbar -->
     <!-- 관리자 상단 네비게이션 바 -->
      <%@ include file="../include/adminNav.jsp" %>
      <!-- End Navbar -->
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card  card-plain">
              <div class="card-header">
                <h1 class="card-title">펀드 상품관리</h1>
              </div>
              <div class="col-md-12">
            <div class="card  card-plain">
              <div class="card-header">
                <h2>펀드 상품목록</h2>
                <h3><a href="${path}fund_add.ho?${_csrf.parameterName}=${_csrf.token}" class="">펀드추가</a></h3>
                		<table border = "1" class="table">
                			<tr>
                				<th>펀드이름</th>
                				<th>모집인원 수</th>
                				<th colspan = "2">펀드진행상태</th>
                			</tr>
                			<c:forEach var = "dto" items = "${dtos}">	
	                			<tr>
	                				<td>${dto.fund_name}</td>
	                				<td>${dto.fund_investor_num}</td>
	                				<c:if test="${dto.fund_state.equals('모집대기')}"> 
	                				<td>${dto.fund_state}</td>
	                				<td><a href="${path}fund_modify.ho?${_csrf.parameterName}=${_csrf.token}&fund_name=${dto.fund_name}&fund_item_no=${dto.fund_item_no}">펀드수정</a></td>
	                				</c:if>
	                				<c:if test="${!dto.fund_state.equals('모집대기')}"> 
	                				<td>${dto.fund_state}</td>
	                				<td><a href="${path}fund_delete.ho?${_csrf.parameterName}=${_csrf.token}&fund_name=${dto.fund_name}&fund_detail_state=+등록취소">투자취소</a></td>
	                				</c:if>
	                			</tr>
                			</c:forEach>
                		</table>
              </div>
            </div>
          </div>
            </div>
          </div>
        </div>
      </div>
        <%@ include file="../include/adminfooter.jsp" %>
    </div>
  </div>
 <!-- css및 js -->  
<%@ include file ="../include/adminSetting.jsp" %>

</body>

</html>