<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../settings.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title></title>
<meta name="viewport" content="width=device-width ,initial-scale=1">
</head>
<body>
<%@ include file = "../include/header.jsp" %>
   <!--contents--> 
   <div id="content_joinNext">
	<div class="common_inner sub" id = "detailInfo">
		<div class="memjoin_wrap">
			<h2 class="memjoin_ttl">회원가입</h2>
			<div class="memjoin_steps_wrap">
				<ol>
					<li class="memjoin_steps01">
						<i></i>
						STEP 01<br>기본정보
					</li>
					<li class="memjoin_steps02 on">
						<i></i>
						STEP 02<br>세부정보
					</li>
					<li class="memjoin_steps04">
						<i></i>
						STEP 03<br>가입완료
					</li>
				</ol>
			</div>
			<div class="memjoin_tbl_wrap">
				<div class="memjoin_tbl_ttl">
					<strong>세부정보</strong>
					<p>더 나은 서비스 이용을 위해 각 아래 항목을 선택해 주세요.</p>
				</div>

				<!-- 세부정보 -->
				<div class="detail_info_wrap">
					<div class="detail_info_each">
						<dl>
							<dt>관심 카테고리를 선택해 주세요.</dt>
							<dd id="categoryArea">
								<p class="detail_info_radio">
									<input id="5" name="category" type="checkbox" data="5">
									<label for="5">여행</label> 
								</p>
								<p class="detail_info_radio">
									<input id="11" name="category" type="checkbox" data="11">
									<label for="11">유아</label> 
								</p>
								<p class="detail_info_radio">
									<input id="8" name="category" type="checkbox" data="8">
									<label for="8">뷰티/병원</label> 
								</p>
								<p class="detail_info_radio">
									<input id="19" name="category" type="checkbox" data="19">
									<label for="19">라이프</label> 
								</p>
								<p class="detail_info_radio">
									<input id="4" name="category" type="checkbox" data="4">
									<label for="4">목돈/재테크</label> 
								</p>
							</dd>
						</dl>
					</div>
				</div>
				<div class="detail_info_wrap" id="joinRegistArea" style="border-top: unset; margin-top: unset;">
					<div class="detail_info_each">
						<dl class="registItem ">
							<dt>직업(을)를 선택해 주세요.</dt>
								<dd>
									<p class="detail_info_radio registItemValue">
										<input id="직업_공무원" name="직업" type="radio">
										<label for="직업_공무원">공무원</label>
									</p>
									<p class="detail_info_radio registItemValue">
										<input id="직업_직장인" name="직업" type="radio">
										<label for="직업_직장인">직장인</label>
									</p>
									<p class="detail_info_radio registItemValue">
										<input id="직업_자영업" name="직업" type="radio">
										<label for="직업_자영업">자영업</label>
									</p>
									<p class="detail_info_radio registItemValue">
										<input id="직업_프리랜서" name="직업" type="radio">
										<label for="직업_프리랜서">프리랜서</label>
									</p>
									<p class="detail_info_radio registItemValue">
										<input id="직업_주부" name="직업" type="radio">
										<label for="직업_주부">주부</label>
									</p>
									<p class="detail_info_radio registItemValue">
										<input id="직업_학생" name="직업" type="radio">
										<label for="직업_학생">학생</label>
									</p>
									<p class="detail_info_radio registItemValue">
										<input id="직업_무직" name="직업" type="radio">
										<label for="직업_무직">무직</label>
									</p>
								</dd>
							</dl>
						</div>
					<div class="detail_info_each">
						<dl class="registItem ">
							<dt>근속년수(을)를 선택해 주세요.</dt>
							<dd>
								<p class="detail_info_radio registItemValue">
									<input id="근속년수_1년이하" name="근속년수" type="radio">
									<label for="근속년수_1년이하">1년이하</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="근속년수_1 ~ 2년" name="근속년수" type="radio">
									<label for="근속년수_1 ~ 2년">1 ~ 2년</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="근속년수_3 ~ 4년" name="근속년수" type="radio">
									<label for="근속년수_3 ~ 4년">3 ~ 4년</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="근속년수_5 ~ 7년" name="근속년수" type="radio">
									<label for="근속년수_5 ~ 7년">5 ~ 7년</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="근속년수_7년 이상" name="근속년수" type="radio">
									<label for="근속년수_7년 이상">7년 이상</label>
								</p>
							</dd>
						</dl>
					</div>
					<div class="detail_info_each">
						<dl class="registItem left">
							<dt>결혼유무(을)를 선택해 주세요.</dt>
							<dd>
								<p class="detail_info_radio registItemValue">
									<input id="결혼유무_기혼" name="결혼유무" type="radio">
									<label for="결혼유무_기혼">기혼</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="결혼유무_미혼" name="결혼유무" type="radio">
									<label for="결혼유무_미혼">미혼</label>
								</p>
							</dd>
						</dl>
						<dl class="registItem right">
							<dt>자녀유무(을)를 선택해 주세요.</dt>
							<dd>
								<p class="detail_info_radio registItemValue">
									<input id="자녀유무_자녀있음" name="자녀유무" type="radio">
									<label for="자녀유무_자녀있음">자녀있음</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="자녀유무_자녀없음" name="자녀유무" type="radio">
									<label for="자녀유무_자녀없음">자녀없음</label>
								</p>
							</dd>
						</dl>
					</div>
					<div class="detail_info_each">
						<dl class="registItem left">
							<dt>주택 보유(을)를 선택해 주세요.</dt>
							<dd>
								<p class="detail_info_radio registItemValue">
									<input id="주택 보유_보유" name="주택 보유" type="radio">
									<label for="주택 보유_보유">보유</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="주택 보유_미보유" name="주택 보유" type="radio">
									<label for="주택 보유_미보유">미보유</label>
								</p>
							</dd>
						</dl>
						<dl class="registItem right">
							<dt>자동차 보유(을)를 선택해 주세요.</dt>
							<dd>
								<p class="detail_info_radio registItemValue">
									<input id="자동차 보유_보유" name="자동차 보유" type="radio">
									<label for="자동차 보유_보유">보유</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="자동차 보유_미보유" name="자동차 보유" type="radio">
									<label for="자동차 보유_미보유">미보유</label>
								</p>
							</dd>
						</dl>
					</div>
					<div class="detail_info_each">
						<dl class="registItem ">
							<dt>주택형태(을)를 선택해 주세요.</dt>
							<dd>
								<p class="detail_info_radio registItemValue">
									<input id="주택형태_자가아파트" name="주택형태" type="radio">
									<label for="주택형태_자가아파트">자가아파트</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="주택형태_자가주택" name="주택형태" type="radio">
									<label for="주택형태_자가주택">자가주택</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="주택형태_전세아파트" name="주택형태" type="radio">
									<label for="주택형태_전세아파트">전세아파트</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="주택형태_전세주택" name="주택형태" type="radio">
									<label for="주택형태_전세주택">전세주택</label>
								</p>
								<p class="detail_info_radio registItemValue">
									<input id="주택형태_월세" name="주택형태" type="radio">
									<label for="주택형태_월세">월세</label>
								</p>
							</dd>
						</dl>
					</div>
				</div>
				<!-- 세부정보 end -->
			</div>
		</div>
		
		<div class="container_join">
			<button type="button" class="login100-form-btn" onclick="window.location = '${path}join.gu'">
				Before
			</button>
			<button type="button" class="login100-form-btn" onclick="window.location = '${path}joinPro.gu'">
				Next
			</button>
		</div>
	</div>
</div>
<!--contents-->
<%-- <%@ include file = "../include/footer.jsp" %> --%>
</body>
</html>