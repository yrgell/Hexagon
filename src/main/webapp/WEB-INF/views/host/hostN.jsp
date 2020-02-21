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
								공지사항 번호
								</td>
								<td width="150px" height="50px;">
								공지사항 종류
								</td>
								<td width="300px">
								제목
								</td>
								<td width="200px">
								질문 등록 날짜
								</td>
								<td width="200px">
								게시상태
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
								${dto.nb_type}
							</td>
							<td align="center" >
								<a href="hostNoticeView.ho?nb_num=${dto.nb_num}&pageNum=${pageNum}&number=${number+1}" style="text-decoration: none;">${dto.nb_title}
								</a>
							</td>
							<td>
								${dto.nb_date}
							</td>
							<td>
								${dto.nb_state}
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
								<a href="#=${startPage - pageBlock}">[◀BACK]</a>
							</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage }">
								<a href="#=${i}" style="text-decoration: none;">[${i}]</a> <!-- 111111111 -->
							</c:if>
						</c:forEach>
						<c:if test = "${pageCount > endPage }">
							<a href="#=${startPage + pageBlock}">[NEXT▶]</a> <!-- 111111111 -->
							<a href="#=${pageCount}">[▶▶]</a> <!-- 111111111 -->
						</c:if>
					</c:if>
				</th>
			 </tr>
			
			 <tr style="border: 1">
		 		<th colspan="6" align="center" style="height:25px" >
		 		문의 목록(문의 갯수:${cnt}) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 		<a class="importFont" href="hostNoticeAddForm.ho?pageNum=${pageNum}">등록</a> <!-- 111111111 -->
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