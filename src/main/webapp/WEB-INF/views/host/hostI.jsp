<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/ajax/resources/js/request.js"></script>
<script type="text/javascript">

	function load(url){
		//서버로 요청해서 통신한 후 응답을 callback 함수로 받겠다. 
		//sendRequest(callback, url, method,params)
		//new1.jsp, new2.jsp, new3.jsp -> 콜백함수로 리턴 
		sendRequest(loadNews_callback,url,"post");
	}

	//콜백함수
	function loadNews_callback(){
		var result = document.getElementById("result");
		
		if(httpRequest.readyState == 4){	//4:completed => 전체 데이터가 취득완료된 상태
			if(httpRequest.status == 200){	//200 : 정상종료
				//result.innerHTML ="정상종료";   <<--테스트용
				
				//응답결과가 html이면 responseText로 받고, XML이면 responserXML로 받는다.
				result.innerHTML = httpRequest.responseText;	
			}else{
				result.innerHTML="에러발생";
			}
		}else{
			result.innerHTML = "상태 : " + httpRequest.readyState;
		}
	}
</script>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
  
<div class="container-hostNotice">
	<div id="container-a" style="  margin: auto;">
	  <div class="button-4">
	    <div class="eff-4"></div>
	    <a href="hostI.ho"> 1:1 문의 관리 </a>
	  </div>
	  <div class="button-2">
	    <div class="eff-2"></div>
	    <a href="hostN.ho"> 공지사항 관리</a>
	  </div>
	</div>
</div>
	
	  <div class="container-hostNotice">
        <div class="featured-content">
            <div class="row-fluid">
                <div class="span5 offset1">
                    <div class="block">
                   
				<table class="table-a" >
				
				<tr class="host-type"  >
					<td width="150px" height="50px;">
					문의 번호
					</td>
					<td width="150px" height="50px;">
					문의 종류
					</td>
					<td width="150px">
					제목
					</td>
					
					<td>
					고객
					</td>
					<td width="200px">
					문의 등록 날짜
					</td>
					
				</tr>           		
				<c:if test="${cnt >= 0}">

					<c:forEach var="dto" items="${dtos1}">
						<tr>
							<td align="center">
								${number}
								<c:set var="number" value="${number-1}"/>
							
							</td>
							<td>
								${dto.qna_type}
							</td>
							<td width="300px;">
								<a href="hostQnAView.ho?qna_no=${dto.qna_no}&pageNum=${pageNum}&number=${number+1}">${dto.qna_title} </a>
							</td>
						<%-- 	<td>
								<a href="" onclick="load('hostq')">${dto.qna_content}</a>
								<a href="#?pageNum=${pageNum}&number=${number+1}">${dto.qna_content} </a>
								<div id="result">
									결과 출력 위치 : 여기
								</div>
							</td> --%>
								
							<td align="center" width="150px;">
								${dto.guestid}
							</td>
							<td>
							${dto.qna_date}
							</td>	
						</tr>
					</c:forEach>		
				</c:if>
				<c:if test="${cnt == 0}">
					<tr>
						<td colspan="6" align="center">
							문의 글이 없습니다.
						</td>
					</tr>	
				</c:if>
      						</table>
           <table class="table-b" style="margin: auto;">
			 <tr >
				<th align="center">
				<!-- 게시글 있으면 -->			 
					<c:if test="${cnt>0}">
						<!-- 처음[◀◀] / 이전블록 [◀]  특수문자 :ㅁ한자키 -->
							<c:if test="${startPage > pageBlock}">
								<!-- <a href="boardList.ge">[◀◀]</a>  -->
								<a href="#=${startPage - pageBlock}">[◀BACK]</a>
							</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage }">
								<a href=#=${i}">[${i}]</a> <!-- 111111111 -->
							</c:if>
						</c:forEach>
						<c:if test = "${pageCount > endPage }">
							<a href="#=${startPage + pageBlock}">[NEXT▶]</a> <!-- 111111111 -->
							<a href="#=${pageCount}">[▶▶]</a> <!-- 111111111 -->
						</c:if>
					</c:if>
				</th>
			 </tr>
			
			 <tr>
		 		<th colspan="6" style="height:25px; padding-bottom:100px; " >
			 		문의 목록(문의 갯수:${cnt}) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 		</th>
			 </tr>
           </table>
        		</div>
     		 </div> 
      	  </div>
      </div>
    </div>
<div class="host-sub-qna1">
	<form name="form1" method="post" action="hostI.ho">
	<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
		<select name="searchOption" style="text-align: center">
			<option value="all"<c:out value="${map.searchOption =='all'?'selected':'' }"/>>제목+아이디</option>
			<option value="guestid"<c:out value="${map.searchOption =='guestid'?'selected':'' }"/>>아이디</option>
			<option value="qna_title"<c:out value="${map.searchOption =='qna_title'?'selected':'' }"/>>제목</option>
		</select>
		<input name="keyword" value="${map.keyword}">
				<input type="submit" value="검색" >
	</form>
	<div style="text-align: center;"><h4>검색기능 아직 하는중(테스트용)</h4></div>
	 <table class="hostI-table" >
		<tr>
			<th width="50px;" align="center">번호</th>
			<th width="100px;">종류</th>
			<th width="300px;">제목</th>
			<th width="100px;">아이디</th>
			<th>작성일</th>
		</tr>
		<c:if test="${cnt >= 0}">
			<c:forEach var="dto1" items="${dtos1}">
			 <tr>
			 	<td>${dto1.qna_no}</td>
			 	<td>${dto1.qna_type}</td>
			 	<td>${dto1.qna_content}</td>
			 	<td>${dto1.guestid}</td>
			 	<td>${dto1.qna_date}</td>
			 </tr>
			</c:forEach>
		</c:if>
	</table>	
</div>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>