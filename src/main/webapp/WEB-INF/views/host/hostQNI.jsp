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
				<table class="table-a" border="0" >
				<tr class="host-type" >
					<td width="150px" height="50px;">
					질문 종류
					</td>
					<td width="300px">
					제목
					</td>
					<td width="550px">
					질문 내용
					</td>
					<td width="200px">
					질문 등록 날짜
					</td>
					
				</tr>           		
				<c:if test="${cnt >= 0}">

					<c:forEach var="dto" items="${dtos}">
						<tr>
							<td align="center">
								${number}
								<c:set var="number" value="${number-1}"/>
							
							</td>
							<td>
								<!-- 답글인 경우 : 들여쓰기 > 1 -->
								<c:if test="${dto.ref_level>0}">
									<c:set var="wid" value="${(dto.ref_level -1)* 10}"/>
									<img src="${project}img/level.gif" border="0" width="20" height="15">
								</c:if>
								<!-- 답글인 경우 : 들여쓰기 > 0 -->
								<c:if test="${dto.ref_level>0}">
									<img src="${project}img/re.gif" border="0" width="20" height="15">			
								</c:if>
								<!-- hot 이미지 -->
								<c:if test="${dto.readCnt>10}">
									<img src="${project}img/hot.gif" border="0" width="20" height="15">
								</c:if>
								<!-- 글번호o 제목o 작성자 작성일 조회수-->
								<a href="#?b_num=${dto.b_num}&pageNum=${pageNum}&number=${number+1}">${dto.b_subject}
								</a>
							</td>
							<td align="center">
								${dto.c_id}
							</td>
							<td>
								<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reg_date}"/>
							</td>
							<td align="center">
								${dto.readCnt}
							</td>
						</tr>
					</c:forEach>		
				</c:if>
				<c:if test="${cnt == 0}">
					<tr>
						<td colspan="6" align="center">
							질문 테마 미등록
						</td>
					</tr>	
				</c:if>
      						</table>
           <table class="table-b" align="center">
			 <tr>
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
								<a href="boardList.ge?pageNum=${i}">[${i}]</a> <!-- 111111111 -->
							</c:if>
						</c:forEach>
						<c:if test = "${pageCount > endPage }">
							<a href="#?pageNum=${startPage + pageBlock}">[NEXT▶]</a> <!-- 111111111 -->
							<a href="#?pageNum=${pageCount}">[▶▶]</a> <!-- 111111111 -->
						</c:if>
					</c:if>
				</th>
			 </tr>
			 
			
			 <tr>
		 		<th colspan="6" align="center" style="height:25px; padding-bottom:100px;" >
			 		질문 테마 list&nbsp;[질문 테마 갯수:${cnt}] &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 		<a class="importFont" href="writeForm.ge?pageNum=${pageNum}">####</a> <!-- 111111111 -->
		 		</th>
			 </tr>
			  <tr>
			 	<td>
				 	<div>
						<a href="hostQuestionForm.ho"><img alt="" style="width: 1100px; margin-left:-100px;" src="/hexagon/resources/images/hostQuestion.png"></a>
					</div>
			 	</td>
			 </tr>
           </table>
        		</div>
     		 </div> 
      	  </div>
      </div>
    </div> 
    <h3>오늘의 뉴스ddd</h3>
	<a onclick="load('news1')">호르무즈 해협 독자 파병 결정…청해부대 파견지역 확대</a><br>
	<a onclick="load('news2')">‘특집 슈가맨, 양준일 91.19’, 23일 눈물·웃음 다 있는 팬미팅 실황 단독 공개[공식]</a><br>
	<a onclick="load('news3')">‘자연스럽게’ 전인화X소유진X한지혜, 경단녀 경험담→출연료 팩폭까지 ‘수다 폭발’</a>
	
	<br><br>
	<hr>
	
	<div id="result">
		결과 출력 위치
	</div>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>