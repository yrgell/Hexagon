<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title> 검색 결과 </title>
</head>
<body>
	
	<hr>
	
	<form action="" method="post">
		<c:forEach var="dto" items="${list}">
			
		<div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h5 class="title">프로필 수정</h5> 
              </div>
              <div class="card-body">
                 <div class="row">
                  <div class="col-md-10">
		            <div class="card card-user">
		              <div class="card-body">
		                <p class="card-text">
		                  <div class="author">
		                    <div class="block block-one"></div>
		                    <div class="block block-two"></div>
		                    <div class="block block-three"></div>
		                    <div class="block block-four"></div>
		                    <a href="javascript:void(0)">
		                      <img class="avatar" src="/hexagon/resources/images/icons/성민.png" alt="...">
		                      	<h5 class="title"> ${dto.name}</h5>
		                    </a>
		                     <p class="description">
		                      	${dto.job}(${dto.age})
		                    </p>
		                  </div>
		                <div class="card-description">
		                  	목적 : 자금 마련 <!-- 가입시 선택한 목적  -->
		                </div>
		              </div>
		              <div class="card-footer">
		                <div class="button-container">
		                  <button href="javascript:void(0)" class="btn btn-icon btn-round btn-facebook">
		                    <i class="fab fa-facebook"></i>
		                  </button>
		                  <button href="javascript:void(0)" class="btn btn-icon btn-round btn-twitter">
		                    <i class="fab fa-twitter"></i>
		                  </button>
		                  <button href="javascript:void(0)" class="btn btn-icon btn-round btn-google">
		                    <i class="fab fa-google-plus"></i>
		                  </button>
		                </div>
		              </div>
		            </div>
		          </div>
                    <div class="col-md-12 pr-md-1">
                      <div class="form-group">
                        <label>ID</label>
                        <input type="text" class="form-control" disabled="" placeholder="Company" value="${dto.userId}">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                  <div class="col-md-6 px-md-1">
                      <div class="form-group">
                        <label>이름</label>
                        <input type="text" class="form-control" placeholder="이름" value="${dto.userName}">
                      </div>
                    </div>
                    <div class="col-md-3 pr-md-1">
                      <div class="form-group">
                        <label>나이</label>
                        <input type="text" class="form-control" placeholder="나이" value="${dto.age}">
                      </div>
                    </div>
                    <div class="col-md-3 pl-md-1">
                      <div class="form-group">
                        <label>성별</label>
                        <input type="text" class="form-control" placeholder="성별" value="${dto.sex}">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Address</label>
                        <input type="text" class="form-control" placeholder="Home Address" value="${dto.address}">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4 px-md-1">
                      <div class="form-group">
                        <label>주소2</label>
                        <input type="text" class="form-control" placeholder="주소2" value="주소2">
                      </div>
                    </div>
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>우편번호</label>
                        <input type="number" class="form-control" placeholder="우편번호">
                      </div>
                    </div>
                     <div class="col-md-4 pr-md-1">
                      <div class="form-group">
                        <label>상세 주소</label>
                        <input type="text" class="form-control" placeholder="상세주소" value="">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>가입 목적</label>
                         <input type="text" class="form-control" disabled="" placeholder="가입 목적" value="자금 마련">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-8">
                      <div class="form-group">
                      <!-- 관심 분야 선택 따라서 c태그로 나눠서 수정 예정 -->
                        <label>관심 분야</label>
                        <textarea rows="4" cols="80" class="form-control" placeholder="관심 분야" value="관심 분야">
                        	육아/여행/부동산 (샘플)
                        </textarea>
                      </div>
                    </div>
                  </div>
              </div>
              <div class="card-footer">
                <button type="submit" class="btn btn-fill btn-primary">Save</button>
              </div>
              </div>
            </div>
        </c:forEach>
	</form>
</body>
</html>