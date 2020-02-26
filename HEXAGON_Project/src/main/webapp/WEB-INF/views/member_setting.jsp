<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix ="security" uri="http://www.springframework.org/security/tags" %>
<!-- 컨텍스트 목록 -->
<c:set var="path" value="${pageContext.request.contextPath}/" />
<c:set var="project" value="${pageContext.request.contextPath}/resources/" />


<!--=============================마이페이지 css 및 헤더/풋터 ==================================================-->	
<link rel="stylesheet" href="/hexagon/resources/css/bootstrap.css">
<link rel="stylesheet" href="/hexagon/resources/css/header.css">
<link rel="stylesheet" href="/hexagon/resources/css/footer.css">
<link rel="stylesheet" type="text/css" href="/hexagon/resources/css/util.css">
<link rel="stylesheet" href="/hexagon/resources/css/member/myPage.css">			<!-- 마이페이지 -->
<link rel="icon" type="image/png" href="${project}images/icons/favicon.ico"/>		<!-- 아이콘 -->
<script src="${project}js/mypage.js"></script>
<script src="${project}js/mypage2.js"></script>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${project}images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${project}vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${project}fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${project}fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${project}vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${project}vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${project}vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${project}vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${project}vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<script src="${project}vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="${project}vendor/daterangepicker/moment.min.js"></script>
	<script src="${project}vendor/daterangepicker/daterangepicker.js"></script>
	<script src="${project}endor/bootstrap/js/popper.js"></script>
	<script src="${project}vendor/countdowntime/countdowntime.js"></script>
	<script src="${project}js/main.js"></script>
<!--===========================================================================================-->