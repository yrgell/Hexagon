<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<style>



</style>
<body>
<%@ include file = "../include/header.jsp" %>
  <!--contents-->
  
<div class="container-hostNotice">
	<div id="container-a" style="  margin: auto;">
	  
	  <div class="button-4">
	    <div class="eff-4"></div>
	    <a href="#"> 1:1 문의 관리 </a>
	  </div>
	  <div class="button-2">
	    <div class="eff-2"></div>
	    <a href="#"> 공지사항 관리</a>
	  </div>
	</div>
</div>
	 <div class="container-hostNotice">
        <div class="featured-content">
            <div class="row-fluid">
                <div class="span5 offset1">
                    <div class="block">
				<table class="table-a" border="1" >
				<tr class="">
					<th width="200px">
						No
					</th>
					<th width="500px">
						Title
					</th>
					<th width="150px">
						Id
					</th>
					<th width="200px">
						Input Date
					</th>
					<th width="300px">
						View Count
					</th>
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
								<a href="contentForm.ge?b_num=${dto.b_num}&pageNum=${pageNum}&number=${number+1}">${dto.b_subject}
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
							문의 글이 없습니다.
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
								<a href="boardList.ge?pageNum=${startPage - pageBlock}">[◀BACK]</a>
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
							<a href="boardList.ge?pageNum=${startPage + pageBlock}">[NEXT▶]</a> <!-- 111111111 -->
							<a href="boardList.ge?pageNum=${pageCount}">[▶▶]</a> <!-- 111111111 -->
						</c:if>
					</c:if>
				</th>
			 </tr>
			 <tr>
			 	<td>
			 	ㅇㅇㅇㅇㅇ
			 	</td>
			 </tr>
			 <tr>
			 		<th colspan="6" align="center" style="height:25px" >
			 		문의 목록(문의 갯수:${cnt}) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 		<a class="importFont" href="writeForm.ge?pageNum=${pageNum}">####</a> <!-- 111111111 -->
			 		</th>
			 	</tr>
           </table>
        		</div>
     		 </div> 
      	  </div>
      </div>
    </div>
   
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>