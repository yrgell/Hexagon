<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
=========================================================
* 회원관리2 - Ajax
=========================================================

=========================================================
-->
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="/hexagon/resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/hexagon/resources/assets/img/favicon.png">
  <title>
       회원관리
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="/hexagon/resources/assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="/hexagon/resources/assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  

<script src="/hexagon/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		$('#search-bar').keyup(function(){	//keyup : 데이터 입력이 끝난 경우 
			var result = $('#search-bar').val();	//입력한 키워드 값
			
			if(search-bar.length == 0){ //입력한 글자가 없을 때 
				$('#display').css("visibility","hidden");	//숨김
				
			}else {	
					$('#display').css("visibility","visible");	//표시
				
				// * result > 컨트롤러/search_next > data> 콜백함수 > display
			$.ajax({
				url:'${pageContext.request.contextPath}/user_search.gu',
				type:'POST',
				data:'keyword=' + result,
				success:function(data){
					$('#display').html(data);	
				},
				error:function(){
					alert("검색 결과가 없습니다.");
				}
			});
		}
	});
	});
</script>
</head>

<body class="white-content">
 <form name="searchForm" method="post" action="">
   <input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
  <div class="wrapper">
   <%@ include file="../include/menu.jsp" %>
    <div class="main-panel">
      <!-- 관리자 상단 네비게이션 바 -->
      <%@ include file="../include/adminNav.jsp" %>
 
      <!-- db에서 회원 정보 연동 -->
      <div class="content" style="margin-left:150px;">
      <!-- 회원 검색창 시작--> 
       <div class="row">
        <div class="col-md-8">
    	<div class="row">
           <div class="col-md-10 pr-md-1">
             <div>
               <input type="text" id="search-bar" placeholder="입력하세요">
               <button class="close" id="close-button" data-dismiss="modal" aria-label="Close">
               <i class="tim-icons icon-simple-remove"></i>
               </button>
             </div>
            </div>
         	<div class="col-md-2 pr-md-1">
             <div class="form-group">
             <!-- Ajax 요청 버튼 -->
               <button class="tim-icons icon-zoom-split" id="search-button">
               <span class="d-lg-none d-md-block"></span>
             </button>
             </div>
           </div>
         </div>
        </div>
       </div>
       <!-- 회원 검색창 끝 -->  
       <!-- 회원 검색 결과 상세 화면 -->
       <%-- <c:if test="${cnt != 0}"> --%>
        <div id="display">
          
        </div>
     </div>
     <!-- 회원 목록 (기본으로 뜨는 공간) -->
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card ">
              <div class="card-header">
                <h4 class="card-title"> 회원 관리</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                        <th>
                          회원번호
                        </th>
                        <th>
                          아이디
                        </th>
                        <th>
                          나이
                        </th>
                        <th>
                          성별
                        </th>
                        <th>
                          회원등급
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>123360</th>
                        <th>jue777</th>
                        <th>24</th>
                        <th>여</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>115002</th>
                        <th>forest</th>
                        <th>44</th>
                        <th>여</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>565623</th>
                        <th>min1234</th>
                        <th>31</th>
                        <th>남</th>
                        <th>SILVER</th>
                      </tr>
                      <tr>
                        <th>453212</th>
                        <th>yang8857</th>
                        <th>29</th>
                        <th>남</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>126542</th>
                        <th>blue0817</th>
                        <th>55</th>
                        <th>여</th>
                        <th>DIAMOND</th>
                      </tr> 
                      <tr>
                        <th>123360</th>
                        <th>jue777</th>
                        <th>24</th>
                        <th>여</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>115002</th>
                        <th>forest</th>
                        <th>44</th>
                        <th>여</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>565623</th>
                        <th>min1234</th>
                        <th>31</th>
                        <th>남</th>
                        <th>SILVER</th>
                      </tr>
                      <tr>
                        <th>453212</th>
                        <th>yang8857</th>
                        <th>29</th>
                        <th>남</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>126542</th>
                        <th>blue0817</th>
                        <th>55</th>
                        <th>여</th>
                        <th>DIAMOND</th>
                      </tr>
                      <tr>
                        <th>115002</th>
                        <th>forest</th>
                        <th>44</th>
                        <th>여</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>565623</th>
                        <th>min1234</th>
                        <th>31</th>
                        <th>남</th>
                        <th>SILVER</th>
                      </tr>
                      <tr>
                        <th>453212</th>
                        <th>yang8857</th>
                        <th>29</th>
                        <th>남</th>
                        <th>GOLD</th>
                      </tr>
                      <tr>
                        <th>126542</th>
                        <th>blue0817</th>
                        <th>55</th>
                        <th>여</th>
                        <th>DIAMOND</th>
                      </tr>                                            
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
   </form>
     <!-- footer -->
      <%@ include file="../include/adminfooter.jsp" %>
   
</body>

</html>