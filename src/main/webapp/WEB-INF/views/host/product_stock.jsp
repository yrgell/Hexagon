<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
=========================================================
* 주식 상품 관리
=========================================================
2020/02/19 1차 완성 (김진주)

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
    주식 상품 관리
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
          <div class="col-md-12">
            <div class="card ">
              <div class="card-header">
                <h4 class="card-title">주식 상품관리</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                        <th>
                          국가명
                        </th>
                        <th>
                          지수명
                        </th>
                        <th>
                          현재가
                        </th>
                        <th class="text-center">
                          전일대비
                        </th>
                        <th>
                          등락률
                        </th>
                        <th>
                          시간
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          미국
                        </td>
                        <td>
                          다우산업
                        </td>
                        <td>
                          29,398.08
                        </td>
                        <td class="text-center">
                          <img src="/hexagon/resources/assets/img/ico_down.gif">25.23
                        </td>
                        <td>
                          -0.09%
                        </td>
                        <td>
                          02.14 17:06
                        </td>
                      </tr>
                      <tr>
                        <td>
                         미국
                        </td>
                        <td>
                          나스닥 종합
                        </td>
                        <td>
                          9,731.18
                        </td>
                        <td class="text-center">
                          <img src="/hexagon/resources/assets/img/ico_up.gif">19.21
                        </td>
                        <td>
                          +0.20%
                        </td>
                        <td>
                          02.14 16:01
                        </td>
                      </tr>
                      <tr>
                        <td>
                         브라질
                        <td>
                          브라질 BOVESPA
                        </td>
                        <td>
                          114,380.71
                        </td>
                        <td class="text-center">
                          <img src="/hexagon/resources/assets/img/ico_down.gif">1,281.69	
                        </td>
                        <td>
                          -1.11%
                        </td>
                        <td>
                          02.14 14:01
                        </td>
                      </tr>
                      <tr>
                        <td>
                          중국
                        <td>
                          상해종합
                        </td>
                        <td>
                          2,917.01	
                        </td>
                        <td class="text-center">
                          <img src="/hexagon/resources/assets/img/ico_up.gif">10.934	
                        </td>
                        <td>
                          +0.38%
                        </td>
                        <td>
                          02.14 15:01
                        </td>
                      </tr>
                      <tr>
                        <td>
                          일본
                        <td>
                          니케이225
                        </td>
                        <td>
                          23,687.59	
                        </td>
                        <td class="text-center">
                          <img src="/hexagon/resources/assets/img/ico_down.gif">140.14	
                        </td>
                        <td>
                          -0.59%
                        </td>
                        <td>
                          02.14 15:15
                        </td>
                      </tr>
                      <tr>
                        <td>
                          대만
                        </td>
                        <td>
                          대만 가권
                        </td>
                        <td>
                          11,815.70	
                        </td>
                        <td class="text-center">
                          <img src="/hexagon/resources/assets/img/ico_up.gif">23.92	
                        </td>
                        <td>
                          +0.20%	
                        </td>
                        <td>
                          02.14 13:33
                        </td>
                      </tr>
                      <tr>
                        <td>
                          영국
                        </td>
                        <td>
                          영국 FTSE 100
                        </td>
                        <td>
                          7,409.13	
                        </td>
                        <td class="text-center">
                          <img src="/hexagon/resources/assets/img/ico_down.gif">42.90		
                        </td>
                        <td>
                          -0.58%	
                        </td>
                        <td>
                          02.14 16:35
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="card  card-plain">
              <div class="card-header">
                <h4 class="card-title">펀드 상품관리</h4>
                <p class="category">Fund management</p>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                        <td>대유형</td>
                        <td>소유형</td>
                        <td>펀드수</td>
                        <td>설정액</td>
                        <td>1월 증감액</td>
                        <td>연간 수익률(%)</td>
                      <tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>해외주식형</td>
                        <td>정보기술섹터</td>
                        <td>34</td>
                        <td>5,828</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">544</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">26.32</td>
                      </tr>
                      <tr>
                        <td>해외주식형</td>
                        <td>헬스케어섹터</td>
                        <td>14</td>
                        <td>1,799</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">78</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">16.98</td>
                      </tr>
                      <tr>
                        <td>해외주식형</td>
                        <td>멀티섹터</td>
                        <td>5</td>
                        <td>513</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">13</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">25.39</td>
                      </tr>
                      <tr>
                        <td>해외주식형</td>
                        <td>북미주식</td>
                        <td>38</td>
                        <td>5,605</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">444</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">23.72</td>
                      </tr>
                      <tr>
                        <td>해외주식형</td>
                        <td>중국주식</td>
                        <td>151</td>
                        <td>46,081</td>
                        <td><img src="/hexagon/resources/assets/img/ico_down.gif">-556</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">16.60</td>
                      </tr>
                      <tr>
                        <td>해외주식형</td>
                        <td>유럽신흥국주식</td>
                        <td>8</td>
                        <td>795</td>
                        <td><img src="/hexagon/resources/assets/img/ico_down.gif">-37</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">18.02</td>
                      </tr>
                      <tr>
                        <td>해외주식형</td>
                        <td>에너지섹터</td>
                        <td>8</td>
                        <td>508</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">8</td>
                        <td><img src="/hexagon/resources/assets/img/ico_up.gif">3.60</td>
                      </tr>
                      <tr>
                        <td>해외주식형</td>
                        <td>베트남주식</td>
                        <td>20</td>
                        <td>7,596</td>
                        <td><img src="/hexagon/resources/assets/img/ico_down.gif">-96</td>
                        <td><img src="/hexagon/resources/assets/img/ico_down.gif">-2.41</td>
                      </tr>
                    </tbody>
                  </table>
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