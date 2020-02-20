<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../settings.jsp"%>
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
	<%@ include file="../include/header.jsp"%>
	
	<!--contents-->
	<div id="content"> <!--css 못찾음-->
		<div class="common_inner sub"> <!--css 못찾음-->
			<div class="evt_ttl_wrap">
				<h2>이벤트</h2>
				<p>
					머니트리에서 진행하는<br>다양한 이벤트에 참여하고, 풍성한 혜택을 받아 가세요.
				</p>
			</div>
			<div class="evt_list_wrap">
				<!-- 이벤트 탭 -->
				<div class="evt_list_tabs">
					<ul>
						<li><a onclick="load('eventProgress.gu');">진행중인 이벤트</a></li>
						<li><a onclick="load('eventEnd.gu');">종료된 이벤트</a></li>
						<li><a onclick="load('winner.gu');">당첨자 발표</a></li>
					</ul>
				</div>
		
				<!-- 진행중인 이벤트  -->
				<div class="evt_list_top" id="firstEventArea">
		
					<figure>
						<!-- 이벤트 페이지 연결하기  (url 변경하기)-->
						<a href="https://www.iminfintech.co.kr/event/detail/invite"
							target="_blank"> <img alt="머니트리  이벤트 1"
							src="${project}images/eventPage/2020128272291.jpg">
						</a>
						<!-- 플래그(이벤트 분류) -->
						<span class="evt_flag all">전체</span>
					</figure>
		
					<!-- 이벤트 남은기간(상시/기간설정) -->
					<div class="evt_list_txt_wrap">
						<p class="d_day">[Daily]</p>
						<a href="javascript:;"></a> <span class="date">상시</span>
					</div>
				</div>
		
				<!-- 이벤트 목록 정렬   -->
				<div class="evt_bnr_list">
		
					<div class="evt_bnr_list_sort">
						<select>
							<option>최신 등록 순</option>
							<option>제목 순</option>
						</select>
					</div>
		
					<!-- 이벤트 목록   -->
					<div class="evt_bnr_list_inner">
						<ul id="eventArea">
							<li>
								<figure>
									<a href="https://www.iminfintech.co.kr/event/detail/openevent"
										target="_blank"> <img alt=""
										src="${project}images/eventPage/20202132441211.jpg">
									</a>
									<span class="evt_flag all">전체</span>
								</figure>
								<div class="evt_list_txt_wrap">
									<p class="d_day">[D-10]</p>
									<a href="https://www.iminfintech.co.kr/event/detail/openevent"
										target="_blank"></a> <span class="date">2020-02-14 ~
										2020-02-29</span>
								</div>
							</li>
		
							<li>
								<figure>
									<a href="https://www.iminfintech.co.kr/event/detail/firstStage"
										target="_blank"> <img alt=""
										src="${project}images/eventPage/202012844309.jpg">
									</a>
									<span class="evt_flag all">전체</span>
								</figure>
		
								<div class="evt_list_txt_wrap">
									<p class="d_day">[Daily]</p>
									<a href="https://www.iminfintech.co.kr/event/detail/firstStage"
										target="_blank"> </a> <span class="date">상시</span>
								</div>
							</li>
		
							<li>
								<figure>
									<a href="https://cafe.naver.com/iminfntech/1347" target="_blank">
										<img alt="" src="${project}images/eventPage/202012938289.jpg">
									</a>
									<span class="evt_flag all">전체</span>
								</figure>
								<div class="evt_list_txt_wrap">
									<p class="d_day">[Daily]</p>
									<a href="https://cafe.naver.com/iminfntech/1347" target="_blank"></a>
									<span class="date">상시</span>
								</div>
							</li>
		
							<li>
								<figure>
									<a href="https://www.iminfintech.co.kr/event/detail/tmon"
										target="_blank"> <img alt=""
										src="${project}images/eventPage/2020128485218.jpg">
									</a>
									<span class="evt_flag all">전체</span>
								</figure>
								<div class="evt_list_txt_wrap">
									<p class="d_day">[D-9]</p>
									<a href="https://www.iminfintech.co.kr/event/detail/tmon"
										target="_blank"></a> <span class="date">2019-11-14 ~
										2020-02-28</span>
								</div>
							</li>
		
							<li>
								<figure>
									<a href="https://www.iminshop.com/main/kebhanabank_partnership"
										target="_blank"> <img alt=""
										src="${project}images/eventPage/2020128372991.jpg">
									</a>
									<span class="evt_flag money">목돈/재테크</span>
								</figure>
								<div class="evt_list_txt_wrap">
									<p class="d_day">[Daily]</p>
									<a href="https://www.iminshop.com/main/kebhanabank_partnership"
										target="_blank"></a> <span class="date">상시</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="btn_more_evt" id="plusArea" style="display: none;">
						<a href="javascript:;" id="plusBtn">더 보기<br> <span></span></a>
					</div>
				</div>
			</div>
			
			<!-- 페이지 이동 버튼  -->
			<div class="evt_prev_next_btns">
				<a class="prev" href="https://www.iminfintech.co.kr/event/end">종료 이벤트</a> 
				<a class="next" href="https://www.iminfintech.co.kr/event/winner">당첨자 발표</a>
			</div>
		</div>
	</div>
	
	<!-- <table style="width:1180px; border:1px; margin-top:120px">
	<tr>
		<td><h2 style="font-weight:bold;">이벤트</h2></td>
	</tr>
	<tr>
		<td><h4>머니트리에서 진행하는 <br>
			다양한 이벤트에 참여하고, 풍성한 혜택을 받아 가세요.</h4></td>
	</tr>
  	<tr>
  		<td>
  			<a onclick="load('eventProgress.gu');">진행중인 이벤트</a>
  			<a onclick="load('eventEnd.gu');" >종료된 이벤트</a>
  			<a onclick="load('winner.gu');">당첨자 조회</a>
  		</td>
  	</tr>
  </table>
  <div id="result">	
  </div> -->
	<!--contents-->
	<%@ include file="../include/footer.jsp"%>
</body>
</html>