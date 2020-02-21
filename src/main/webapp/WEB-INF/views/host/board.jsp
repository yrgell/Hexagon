<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="/hexagon/resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/hexagon/resources/assets/img/favicon.png">
  <title>
    게시판 관리
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
      <!-- 관리자 상단 네비게이션 바 -->
      <%@ include file="../include/adminNav.jsp" %>
      <!-- End Navbar -->
      <div class="content">
        <div class="row">
          <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Notification</h4>
              </div>
              
             <c:forEach var="dto" items="${dtos}">
              <div class="card-body">
                <div class="alert alert-info">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span><a href="hostN.ho" style="text-decoration: none;font-size:20px;color:white;">[${dto.nb_type}]${dto.nb_title}</a></span>
                </div>
                <!-- <div class="alert alert-info">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span>[2020.02.15] 공지사항 : 채권재매입 공식 서비스화</span>
                </div>
                <div class="alert alert-info alert-with-icon" data-notify="container">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span data-notify="icon" class="tim-icons icon-bell-55"></span>
                  <span data-notify="message">이벤트 당첨자 발표★유아이벤트 '맘&파파를 위한 대박이벤트</span>
                </div>
                <div class="alert alert-info alert-with-icon" data-notify="container">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span data-notify="icon" class="tim-icons icon-bell-55"></span>
                  <span data-notify="message">이벤트 당첨자 발표★친구초대 SPECIAL EVENT</span>
                </div>
                <div class="alert alert-info alert-with-icon" data-notify="container">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span data-notify="icon" class="tim-icons icon-bell-55"></span>
                  <span data-notify="message">이벤트 당첨자 발표★아임인이 여행지원금 천만원 쏜다</span>
                </div> -->
              </div>
             </c:forEach>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">QnA</h4>
              </div>
            
             <c:forEach var="dto1" items="${dtos1}">
              <div class="card-body">
                <div class="alert alert-primary">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span><a href="hostI.ho" style="text-decoration: none;font-size:20px;color:white;">[${dto1.qna_type}]${dto1.qna_title}</a></span>
                </div>
                <!-- <div class="alert alert-info">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span><b>[서비스관련]</b>아임인 회원 가입에 신용등급제한이 있나요?</span>
                </div>
                <div class="alert alert-success">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span><b>[일반관련]</b>이메일을 틀리게 적어서 가입했는데 어떻게 변경하나요?</span>
                </div>
                <div class="alert alert-warning">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span><b>[일반관련]</b>한도는 언제 복구되나요? 납입 다 하면 스테이지 완료된 것 아닌가요?</span>
                </div>
                <div class="alert alert-danger">
                  <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                  </button>
                  <span><b>[일반관련]</b>비밀번호를 분실하거나 변경하고 싶으면 어떻게 하나요?</span>
                </div> -->
              </div>
             </c:forEach>
            
            </div>
          </div>
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="places-buttons">
                  <div class="row">
                    <div class="col-md-6 ml-auto mr-auto text-center">
                      <h4 class="card-title">
                        Notifications Places
                        <p class="category">Click to view notifications</p>
                      </h4>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-8 ml-auto mr-auto">
                      <div class="row">
                        <div class="col-md-4">
                          <button class="btn btn-primary btn-block" onclick="demo.showNotification('top','left')">Top Left</button>
                        </div>
                        <div class="col-md-4">
                          <button class="btn btn-primary btn-block" onclick="demo.showNotification('top','center')">Top Center</button>
                        </div>
                        <div class="col-md-4">
                          <button class="btn btn-primary btn-block" onclick="demo.showNotification('top','right')">Top Right</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-8 ml-auto mr-auto">
                      <div class="row">
                        <div class="col-md-4">
                          <button class="btn btn-primary btn-block" onclick="demo.showNotification('bottom','left')">Bottom Left</button>
                        </div>
                        <div class="col-md-4">
                          <button class="btn btn-primary btn-block" onclick="demo.showNotification('bottom','center')">Bottom Center</button>
                        </div>
                        <div class="col-md-4">
                          <button class="btn btn-primary btn-block" onclick="demo.showNotification('bottom','right')">Bottom Right</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="places-buttons">
                  <div class="row">
                    <div class="col-md-6 ml-auto mr-auto text-center">
                      <h4 class="card-title">
                        게시글 등록 
                        <p class="category">게시판 선택</p>
                      </h4>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-8 ml-auto mr-auto">
                      <div class="row">
                        <input type="text" placeholder="제목을 입력하세요" >
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <textarea rows="10" cols="90"></textarea>
                  </div>
                  <div class="row">
                    <input type="button" value="작성">
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