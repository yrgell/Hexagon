<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<html>
<script type="text/javascript">
function load(url) {
	sendRequest(loadBoard_callback, url, "post");
}

//콜백함수
function loadBoard_callback() {
	var result = document.getElementById("result");

	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			result.innerHTML = httpRequest.responseText;
		} else {
			result.innerHTML = "에러 발생";
		}
		//정상종료가아닌경우
	} else {
		result.innerHTML = "상태 : " + httpRequest.readyState;
	}
}
</script>
<body>
<%@ include file = "../include/header2.jsp" %>
  <!--contents-->
  <form>
  	<table>
  		<tr>
  			<td>
  				이벤트
  			</td>
  		</tr>
  		<tr>
	  		<td>
	  			머니트리에서 진행하는 \n 다양한 이벤트에 참여하고, 풍성한 혜택을 받아 가세요.
	  		</td>
  		</tr>
  		<tr>
  			<td>
  				<ul>
					<li><a onclick="load('eventProgress.gu');">진행중인 이벤트</a></li>
					<li><a onclick="load('eventEnd.gu');">종료된 이벤트</a></li>
					<li><a onclick="load('winner.gu');">당첨자 발표</a></li>
				</ul>
  			</td>
  		</tr>
  	</table>
  </form>
  <!--contents-->
<%@ include file = "../include/footer.jsp" %>
</body>
</html>