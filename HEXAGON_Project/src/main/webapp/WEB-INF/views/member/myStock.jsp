<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../member_setting.jsp" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
<meta name="viewport" content="width=device-width ,initial-scale=1">
</head>
<body>
<%@ include file="../include/mypageHeader.jsp" %>
  <!-- #header -->
  
  <!--contents-->
<div id="content">
    <div class="mypage_wrap">
        <div class="myinfo_card_wrap">
            <div class="myinfo_profile_wrap">
                <figure><img alt="" src="/images/84361088-%EC%95%84%EB%B0%94%ED%83%80-%ED%94%84%EB%A1%9C%ED%95%84-%EC%95%84%EC%9D%B4%EC%BD%98.jpg" id = "mypageProfileImg" style="height: 100px; width: 100px;"></figure>
                <strong id = "mypageNicknameArea">
                  	  굿즈님
                </strong>
                <p id = "secretCodeText">
                   	 추천인 코드 LWN4CP8D
                </p>
                <input id = "secretCode" value = "" type="hidden">
                <ul class="my_sns_btns">
			        <li><a class="fb" href="javascript:;" data-type = '2'>페이스북</a></li>
			        <li><a class="kt ivt_kakao" href="javascript:;" data-type = '1'>카카오톡</a></li>
			        <li><a class="link" href="javascript:;" data-type = '0'>링크드인</a></li>
		        </ul>
                   <a class="btn_myinfo_mng" href="/mypage/info-basic">내 정보 관리</a>
                   <a class="btn_ipro" href="/mypage/ipro" style = "display: none" id = "iproMenu">I-PRO 서비스</a>
            </div>
            <div class="myinfo_menu_wrap">
                <ul>
                    <li class="basicMenu"><a class="myinfo_menu01" href="">내 기본 정보</a></li>
                    <li class="basicMenu"><a class="myinfo_menu02" href="">나의 혜택</a></li>
                    <li><a class="myinfo_menu03" href="/hexagon/mygathering.me">계모임 관리</a></li>
                    <li><a class="myinfo_menu03" href="/hexagon/myFund.me">펀드 관리</a></li>
                     <li><a class="myinfo_menu03" href="/hexagon/myStock.me">주식 관리</a></li>
                    <li><a class="myinfo_menu04" href="">입금/지급 스케줄</a></li>
                    <li><a class="myinfo_menu05" href="">알림 관리</a></li>
                    <li><a class="myinfo_menu06" href="">1:1 문의</a></li>
                </ul>
            </div>
        </div>
        <div class="left_quick"></div>
<!-- <script>
    $(document).on("click",".left_quick", function(e){
        $(".myinfo_card_wrap").addClass("left");
    });
    $(document).on("click",".left_menu_close", function(e){
        $(".myinfo_card_wrap").removeClass("left");
    });
</script>
<script type="text/javascript">
    $(".my_sns_btns").find("a").click(function(){
        var type = $(this).attr("data-type");
        linkShare(type, $("#secretCode").val());
    })
    $(function(){
        new Client().url("/security/login/check").callback(function(session){
            if (session.responseMessage == "SESSION_ON") {
                $("#secretCode").val(session.responseBody.secretCode);
                $("#secretCodeText").text("추천인 코드 " + session.responseBody.secretCode);
            $("#mypageNicknameArea").text(session.responseBody.nickname + "님");
            $('#mypageProfileImg').attr('src', IMG.MEMBER + session.responseBody.img);
    if (session.responseBody.iproCheck == "true")                           $("#iproMenu").show();
}
}).get();

var winLocation = window.location.href;
var aList = $("div.myinfo_menu_wrap").find("a");
        aList.each(function(idx, item) {
            var itemHref = $(item).attr("href");
            if (winLocation.indexOf(itemHref) != -1)        $(item).addClass("on");
            else $(item).removeClass("on");
        })
    })
</script>
<script src="js/kakao.min.js"></script>
<script>
    Kakao.init('15ae2a89257771b0eeb2c595bfbbd727');
    var _title = "[친구의 초대 메시지] 함께해요 아임인!";
    var _description = "지금 회원가입만 해도 현금처럼 쓸 수 있는 포인트 3,000P를 드려요♥";
var _imgUrl = "https://img.iminfintech.co.kr/commonImage/friend_share.jpg";
var _button = "회원가입하고 포인트 받기";

    Kakao.Link.createDefaultButton({
        container: '.ivt_kakao',
        objectType: 'feed',
        content: {
            title: _title,
            description : _description,
            imageUrl : _imgUrl,
            link: {
                mobileWebUrl: "https://m.iminfintech.co.kr/member/membershipType?code=" + $("#secretCode").val(),
                webUrl: "https://www.iminfintech.co.kr/member/membershipType?code=" +$("#secretCode").val()
            }
        },
buttons: [
{
    title: _button,
    link: {
        mobileWebUrl: "https://m.iminfintech.co.kr/member/membershipType?code=" + $("#secretCode").val(),
        webUrl: "https://www.iminfintech.co.kr/member/membershipType?code=" + $("#secretCode").val()
        }
    }
]
});
</script> -->
</div>
<div class="mypage_cont_wrap p-t-50">
	<div class="mypage_cont_inner p-t-40">
		<!-- MY 즐겨찾기 메뉴 -->
		<div class="mypage_menu_each">
			<div class="mypage_menu_each_ttl">
				<strong>MY 즐겨찾기 메뉴</strong>
			</div>
			<div class="my_fav_menu" id = "fmAreaEmpty">
				<div class="no_fav">
					<p>현재 설정된 MY 즐겨찾기 메뉴가 없습니다.</p>
					<a class="btn_fav_set" href="javascript:;">설정하기</a>
				</div>
			</div>
			<div class="my_fav_menu" id = "fmArea" style = "display: none;">
				<ul id = "fmUl">
				</ul>
				<div class="my_fav_menu_btns">
					<a class="reset" href="javascript:;" id = "resetBtn">초기화</a>
					<a class="btn_fav_set" href="javascript:;">설정하기</a>
				</div>
			</div>
		</div>
		<!-- MY 즐겨찾기 메뉴 end -->
		<div class="mypage_menu_each">
			<!-- MY I-CSS 등급 -->
			<div class="rate">
				<div class="mypage_menu_each_ttl">
					<strong>MY I-CSS 등급<a class="rate" href="javascript:;">자세히 보기</a></strong>
				</div>
				<div class="rate_cont">
					<p id = "grade">I-3 등급</p>
					<a href="/mypage/info-i-css">I-CSS 등급 변동내역</a>
				</div>
			</div>
			<!-- MY I-CSS 등급 end -->
			<!-- 스테이지 이용한도 -->
			<div class="limit m-l-20">
				<div class="mypage_menu_each_ttl">
					<strong>스테이지 이용한도<a class="limit" href="javascript:;">자세히 보기</a></strong>
				</div>
				<div class="limit_cont">
					<dl>
						<dt>이용 중 한도</dt>
						<dd><strong id = "usable">1000</strong> 만 원</dd>
					</dl>
					<dl>
						<dt>이용 가능 한도</dt>
						<dd><strong id = "usableLimit">2000</strong> 만 원</dd>
					</dl>
				</div>
			</div>
			<!-- 스테이지 이용한도 end -->
			<!-- 신용등급 -->
			<div class="rate m-l-20">
                <div class="mypage_menu_each_ttl">
				    <strong>신용등급</strong>
				</div>
				<div class="rate_cont">
					<p id = "niceGrade">- 등급</p>
					<a class="btn_rate_lookup" href="javascript:;">신용등급 재조회</a>
				</div>
			</div>
			<!-- 신용등급 end -->
        </div>
        <!-- 나의 혜택 -->
        <div class="mypage_menu_each">
            <div class="mypage_menu_each_ttl">
            <strong>나의 혜택</strong>
                <a class="btn_plus" href="#">더하기</a>
            </div>
            <div class="my_adv_wrap">
                <p class="my_adv_txt">회원님이 지금까지 받은 총 혜택은 <strong id = "totalBenefit"></strong>3000 원 입니다.</p>
                <a class="chk_my_adv" href="javascript:;">누적 혜택 내  역 자세히 보기 &gt;</a>
            <ul class="my_adv_list">
                <li>
                	<a href = "#">
                    <p class="icon icon01">쿠폰</p>
                    <p class="stat" id = "totalCoupon">0장</p>
                    </a>
                </li>
                <li>
                	<a href = "#">
                    <p class="icon icon02">I-POINT</p>
                    <p class="stat" id = "ipoint">1000</p>
                    </a>
                </li>
                <li>
                	<a href = "#">
                    <p class="icon icon03">I-PAY</p>
                    <p class="stat" id = "ipay">2000</p>
                    </a>
                </li>
                <li>
                	<a href = "#">
                    <p class="icon icon04">스탬프</p>
                    <p class="stat" id = "stamp">스탬프</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
<!-- 나의 혜택 end -->
		<!-- 1:1 문의 내역 -->
		<div class="mypage_menu_each">
			<div class="mypage_menu_each_ttl">
				<strong>1:1 문의 내역</strong>
				<a class="btn_plus" href="/mypage/oneToOne">더하기</a>
			</div>
			<div class="mypage_inquiry_wrap">
				<ul id = "qnaArea">
				</ul>
			</div>
			<div class="friends_list_pager" id = "paging">
			</div>
		</div>
		<!-- 1:1 문의 내역 end -->
	</div>
</div>
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1;width:20px;height:20px;" onclick="closeDaumPostcode()" alt="닫기 버튼"></div>
<form name="form_chk" method="post" autocomplete="off">
    <input type="hidden" name="m" value="safekeyService" />						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
    <input type="hidden" name="EncodeData" id="EncodeData" />					<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
    <input type="hidden" id="param_r1" name="param_r1" value="">
    <input type="hidden" id="param_r2" name="param_r2" value="">
    <input type="hidden" id="param_r3" name="param_r3" value="">
</form>
<style>
    #nice_layer_group .mask {position: absolute; left:0; top:0; z-index: 1000;width:100%; height: 100%;background-color:#000;opacity:0.3;}
    #nice_layer_group .nice_layer{width: 100%;height:100%; z-index: 1001; background: #fff;position: absolute;}
    #nice_layer_group .nice_layer iframe {width:100%;height:100%;}
    #nice_layer_group .nice_layer .nice_close {width: 25px;height: 25px;font-size: 30px;position: absolute;right: 10px;top: 10px;cursor: pointer;}
</style>
<div id="nice_layer_group" style="display: none;">
    <div class="mask"> <!-- style="" -->
    </div>
    <div class="nice_layer"> <!-- style=""-->
        <div class="nice_close"><img src="/images/close.png"></div>
        <iframe id="ifr_safeKey" name="ifr_safeKey" src="about:blank"></iframe>
    </div>
</div>

<!-- <script type="text/javascript">
var MENU = [
	{title : "나의 혜택", subMenu : [
		{title : "쿠폰", data : "/mypage/benefits"},
		{title : "I-POINT", data : "/mypage/benefits/i-point"},
		{title : "I-PAY", data : "/mypage/benefits/i-pay"} ,
		{title : "스탬프", data : "/mypage/benefits/stamp"} 
	]},
	{title : "스테이지 관리", subMenu : [
		{title : "추천", data : "/mypage/stage"},
		{title : "대기", data : "/mypage/stage/participation"},
		{title : "진행", data : "/mypage/stage/staging"} ,
		{title : "완료", data : "/mypage/stage/end"} 
	]},
	{title : "입금/지급 스케쥴", subMenu : [
		{title : "입금 스케쥴", data : "/mypage/deposit"},
		{title : "지급 스케쥴", data : "/mypage/deposit"}
	]},
	{title : "알람 관리", subMenu : [
		{title : "전체", data : "/mypage/alarm"},
		{title : "스테이지", data : "/mypage/alarm/stage"},
		{title : "일반", data : "/mypage/alarm/gift"}
	]},
	{title : "1:1 문의", subMenu : [
		{title : "답변 대기", data : "/mypage/oneToOne"},
		{title : "답변 완료", data : "/mypage/oneToOne/complete"}
	]},
	{title : "마이샵 관리", subMenu : [
		{title : "주문/배송 현황", data : "/mypage/shop"},
		{title : "장바구니", data : "/mypage/shop/myCart"},
		{title : "반품/교환/환불", data : "/mypage/shop/myRefund"},
		{title : "상품 문의", data : "/mypage/shop/requestGoods"},
		{title : "상품 후기", data : "/mypage/shop/goodsReview"}
	]}
];

function drawMenu() {
	var html = '';
	MENU.forEach(function(m){
		html += '<li><p>' + m.title + '<a href="javascript:;">더보기</a></p><div class="basic_submenu"><ul>';
		m.subMenu.forEach(function(sm){
			html += '<li><p>' + sm.title + '<a href="javascript:;" data = "' + m.title + ' - ' + sm.title + '||' + sm.data + '">추가</a></p></li>'; 
		})
		html += '</ul></div></li>';
	})
						
	$("#menuArea").empty().append(html);
	$('.basic_menu .inner > ul > li > p > a').on('click', function(){
		$('.basic_submenu').stop().slideUp();
		$(this).parent().next('.basic_submenu').stop().slideToggle();
	});
	$("#addFMBtn").click(function(){
		var fmLi = $("#fmAppendArea").find("li");
		var fmList = [];
		fmLi.each(function(idx, item){
			fmList.push($(item).attr("data"));
		})
		updateFavoritesMenu(fmList)
	})
	$("#resetFMBtn").click(function(){
		$("#fmAppendArea").empty();
	})
	$("div.basic_menu").find("div.basic_submenu").find("a").click(function(){
		var fmLi = $("#fmAppendArea").find("li");
		if (fmLi.length < 9) {
			var menuStr = $(this).attr("data");
			var menuCheck = true;
			fmLi.each(function(idx, item){
				if (menuStr == $(item).attr("data")) {
					menuCheck = false;
				}
			})
			if (menuCheck) {
				var menuSplit = menuStr.split("||");
				var menuText = menuSplit[0];
				$("#fmAppendArea").append("<li data = '" + menuStr + "'><p>" + menuText + "<a href='javascript:void(0);' onclick='deleteFm(this)' >지우기</a></p></li>");
			} else {
				alert("중복된 메뉴가 있습니다.");
			}
		} else {
			alert("즐겨찾기 메뉴는 최대 9개까지 가능합니다.");
		}
	});

	$("#resetBtn").click(function(){
		$("#fmUl").empty();
		var fmLi = $("#fmUl").find("li");
		var fmList = [];
		fmLi.each(function(idx, item){
			fmList.push($(item).attr("data"));
		})
		updateFavoritesMenu(fmList)
	})
}
// my favo menu
function updateFavoritesMenu(fmList) {
	var param = {
		favoritesMenu : JSON.stringify(fmList)
	}
	new Client().url("/api/mypage/favorites-menu").callback(function(data){
		if(data.responseBody.result == 1) {
			location.href = "/mypage/mypage"; 
		}
	}).data(JSON.stringify(param)).post();
}
function deleteFm(_this) {
	$(_this).parents("li").remove();
}

function deleteFmCall(_this) {
	$(_this).parents("li").remove();
	var fmLi = $("#fmUl").find("li");
	var fmList = [];
	fmLi.each(function(idx, item){
		fmList.push($(item).attr("data"));
	})
	updateFavoritesMenu(fmList)
}
function makeFavoritesMenu(favoritesMenu) {
	var fm = '';
	favoritesMenu.forEach(function(item){
		var menuSplit = item.split("||");
		fm += '<li data = "' + item + '"><p OnClick="location.href =\'' + menuSplit[1] + '\'" style="cursor:pointer;">' + menuSplit[0] + '</p><a  href="javascript:void(0);" onclick="deleteFmCall(this)"><img alt="" src="/images/btn_del_fav.png"></a></li>';
		$("#fmAppendArea").append("<li data = '" + item + "'><p>" + menuSplit[0] + "<a href='javascript:void(0);' onclick='deleteFm(this)' >지우기</a></p></li>")
	})
	$("#fmUl").empty().append(fm);
}
function drawFavoritesMenu(data) {
	if (typeof data.favoritesMenu != "undefined" && data.favoritesMenu != "[]") {
		makeFavoritesMenu(JSON.parse(data.favoritesMenu));
		$("#fmArea").show();
		$("#fmAreaEmpty").hide();
	}
}
function getFavoritesMenu() {
	new Client().url("/api/mypage/favorites-menu").callback(function(data){
		drawFavoritesMenu(data);
	}).get();	
}


function getStamp(){
	new Client().url("/api/count/stamp").callback(function(data){
		if (typeof data.total != "undefined")
			$("#stamp").text(numberWithCommas(data.total) + "개");
	}).get();	
}
function getIpay() {
	new Client().url("/api/count/ipay").callback(function(data){
		if (typeof data.total != "undefined")
			$("#ipay").text(numberWithCommas(parseInt(data.total/10000)) + "만원");
	}).get();	
}
function getIpoint() {
	new Client().url("/api/count/ipoint").callback(function(data){
		if (typeof data.total != "undefined")
			$("#ipoint").text(numberWithCommas(data.total) + "P");
		else $("#ipoint").text("0P");
	}).get();	
}
function getTotalCoupon(){
	new Client().url("/api/mypage/coupon").callback(function(data){
		$("#totalCoupon").text(data.length + "장");
	}).get();	
}

function getTotalBenefit(){
	new Client().url("/api/count/total/benefit").callback(function(data){
		if (typeof data.total != "undefined") {
			$("#totalBenefit").append(numberWithCommas(data.total));
			$("#totalBenefitSub").append(numberWithCommas(data.total)+"<span></span>");
		}
	}).get();	
	var totalLimit = new Client().url("/api/count/total/limit").asyncFalse().get();
    if (typeof totalLimit.data.total == "undefined") totalLimit.data.total = 0;	
	var usageLimit = new Client().url("/api/count/usage/limit").asyncFalse().get();
    if (typeof usageLimit.data.total == "undefined") usageLimit.data.total = 0;
	$("#usable").text(numberWithCommas((usageLimit.data.total)/10000));
	let myLimit = totalLimit.data.total - usageLimit.data.total<0?0:totalLimit.data.total - usageLimit.data.total;
	$("#usableLimit").text(numberWithCommas((myLimit)/10000));
}
function getGrade(){
	new Client().url("/api/mypage/grade").callback(function(data){
		if (typeof data.total != "undefined")
			$("#grade").text(data.totalStr + " 등급");
	}).get();	
}

function getNiceGrade(){
	new Client().url("/api/mypage/nice").callback(function(data){
		$("#reviewCount").text(data.review)
		if (typeof data.grade != "undefined")
			$("#niceGrade").empty().append('<img alt="" src="/resources/img/mypage/icon_nice.jpg">' + data.grade + '등급');
	}).get();	
}
function makeQna(item) {
	var state = '';
	if (item.state == "N") state = '<span>[답변 대기] </span>';
	else state = '<span class = "blue">[답변 완료] </span>';
	var reply = '아직 답변이 도착하지 않았습니다.';
	if (typeof item.reply != "undefined") reply = item.reply;
	return '<li>' + 
				'<a class="mypage_inquiry_ttl" href="javascript:;">' + 
					'<div class="cate">' + 
						'<span class="blue">' + item.type + '</span>' + 
					'</div>' + 
					'<div class="ttl">' + 
						'<p>' + state + item.title + '</p>' + 
					'</div>' + 
				'</a>' + 
				'<div class="qna">' + 
					'<p class="ques">' + item.contents +
					'</p>' + 
					'<p class="answ">' + reply + 
					'</p>' + 
				'</div>' + 
			'</li>';
}
function getQna(){
	new Client().url("/api/servicecenter/onetoone").callback(function(data){
		var make = function (d, p, c){
			var html = '';
			var start = p * c - p;
			var end = start + p;
			d.forEach(function(item, idx){
				if (idx >= start && end > idx)
					html += makeQna(item);
			})
			$("#qnaArea").empty().append(html);
			$('.mypage_inquiry_wrap a.mypage_inquiry_ttl').on('click', function(){
				if ($(this).hasClass('close')) {
					$(this).removeClass('close');
					$(this).next('.mypage_inquiry_wrap div.qna').stop().slideUp();
				} else {
					$('.mypage_inquiry_wrap a.mypage_inquiry_ttl').removeClass('close');
					$(this).addClass('close');
					$('.mypage_inquiry_wrap div.qna').stop().slideUp();
					$(this).next('.mypage_inquiry_wrap div.qna').stop().slideDown();
				}
			});
		}
		new Pagination().init(data.length,4,4).area("paging")
		.data(data).make(make)
		.randing(1);
	}).get();	
}
$(".nice_close").click(function(){
	$("#ifr_safeKey").attr("src","about:blank");
	$("#nice_layer_group").hide();	
	$('.layer_dimm, .credit_rate_pop').fadeIn();
})
function fnNiceReturn(safekey, niceGrade, niceMoney, userTel, nice){
	var oldGrade = $("#reviewGrade").text();
	$("#reviewGrade").text(niceGrade);
	var reviewCount = Number($("#reviewCount").text()) - 1;
	$("#reviewCount").text(reviewCount);
	$("#niceGrade").empty().append('<img alt="" src="/images/icon_nice.jpg">' + niceGrade + '등급');
	$("#nice_layer_group").hide();
	$('.layer_dimm, .credit_rate_pop').fadeIn();
	var nice = {
		safekey: safekey,
		grade: niceGrade,
		money: niceMoney,
		review : reviewCount
	}
	new Client().url("/api/mypage/nice").callback(function(data){}).data(JSON.stringify(nice)).post();
}
function safekeyResult(data, userInfo) {
	var dataObj =JSON.parse(data);
	if (dataObj.err_code == "1") {
		$('#EncodeData').val(dataObj.enc_data);
		$("#param_r1").val(dataObj.param_r1);
		//$("#param_r2").val(data.param_r1);
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafekeyModel/checkplus.cb";
		document.form_chk.target = "ifr_safeKey";
		document.form_chk.submit();
		$("#nice_layer_group").show();
		$(".nice_layer").center();
		$("#nice_layer_group>.mask").height($(document).height());
		$('.layer_dimm, .credit_rate_pop').fadeOut();
	}
}

function getBenefit(){
	new Client().url("/api/mypage/benefit").callback(function(data){
		var make = function (d, p, c){
			var html = '';
			var start = p * c - p;
			var end = start + p;
			d.forEach(function(item, idx){
				if (idx >= start && end > idx)
					html += '<tr><td>'+item.regDate+'</td><td>'+item.history+'</td><td>'+numberWithCommas(item.money)+'원</td></tr>';
			})
			$("#benefitArea").empty().append(html);
		}
		new Pagination().init(data.length,4,4).area("benefitPaging")
		.data(data).make(make)
		.randing(1);
	}).get();	
}
function drawStageBenefit(data) {
	var html = '';
	data.forEach(function(item, idx){
		if (idx < 6) html += '<li><a target="_blank" href = "' + item.bannerLink + '"><img alt="" src="' + IMG.EVENT + item.contentPath2 + '"><p>' + item.title + '</p></a></li>';
	})
	return html;
}

function drawBenefitCard(categoryIdx, flag){
	var category = {
		4 : { "name" : "목돈·재테크", "cls" : "money"},
		5 : { "name" : "여행", "cls" : "trip"},
		8 : { "name" : "뷰티·병원", "cls" : "beauty"},
		11 : { "name" : "유아", "cls" : "baby"},
		19 : { "name" : "라이프", "cls" : "life"}
	}
	var enable = {
		"true" : { "cls" : " on", "link" : "/stage/benefit?category=", "text" : "혜택"},
		"false" : { "cls" : "", "link" : "/stage/list?category=", "text" : "스테이지"}
	}
	return '<div class="my_stage_adv_card ' + category[categoryIdx].cls + '' + enable[flag].cls + '">' + 
				'<div class="top"></div>' + 
				'<div class="mid"><ul id = "benefit_category_' + categoryIdx + '"></ul></div>' + 
				'<div class="btm"><a href="' + enable[flag].link + categoryIdx +'">' + category[categoryIdx].name +' <span>' + enable[flag].text +' 보러 가기</span></a></div>' + 
			'</div>';
}
function getStageBenefit() {
	var category = { 
		4 : {"flag" : "false", "html" : ""}, 
		5 : {"flag" : "false", "html" : ""}, 
		8 : {"flag" : "false", "html" : ""}, 
		11 : {"flag" : "false", "html" : ""},
		19 : {"flag" : "false", "html" : ""}
	}
	
	new Client().url("/api/mypage/stage/participation").asyncFalse().get()
	.data.stageList.forEach(function(item, idx){
		if (item.categoryIdx == 4 || item.categoryIdx == 5 || item.categoryIdx == 8 || item.categoryIdx == 11 || item.categoryIdx == 10) 
			category[item.categoryIdx].flag = "true";
	})
	
	new Client().url("/api/mypage/stage/staging").asyncFalse().get()
	.data.stageList.forEach(function(item, idx){
		if (item.categoryIdx == 4 || item.categoryIdx == 5 || item.categoryIdx == 8 || item.categoryIdx == 11 || item.categoryIdx == 10) 
			category[item.categoryIdx].flag = "true";
	})
	
	Object.keys(category).forEach(function(key){
		category[key].html += drawBenefitCard(key, category[key].flag);
	})
	var html = {"true" : "", "false" : ""}
	Object.keys(category).forEach(function(key){
		html[category[key].flag] += drawBenefitCard(key, category[key].flag);
	})

	$("#stageBenefitArea").empty().append(html["true"]).append(html["false"]);
	new Client().url("/api/stage/stageBenefit").callback(function(data){
		$("#benefit_category_5").empty().append(drawStageBenefit(data));
	}).param({"categoryIdx":5}).get();
	new Client().url("/api/stage/stageBenefit").callback(function(data){
		$("#benefit_category_11").empty().append(drawStageBenefit(data));
	}).param({"categoryIdx":11}).get();
	new Client().url("/api/stage/stageBenefit").callback(function(data){
		$("#benefit_category_8").empty().append(drawStageBenefit(data));
	}).param({"categoryIdx":8}).get();
	new Client().url("/api/stage/stageBenefit").callback(function(data){
		$("#benefit_category_19").empty().append(drawStageBenefit(data));
	}).param({"categoryIdx":19}).get();
	new Client().url("/api/stage/stageBenefit").callback(function(data){
		$("#benefit_category_4").empty().append(drawStageBenefit(data));
	}).param({"categoryIdx":4}).get();
}
$(function(){
	getQna();
	getTotalBenefit();
	getStamp();
	getIpay();
	getIpoint();
	getTotalCoupon();
	getFavoritesMenu();
	getGrade();
	getNiceGrade();
	getBenefit();
	getStageBenefit();
	drawMenu();

	$("#safekeyBtn").click(function(){
		var reviewCount = Number($("#reviewCount").text());
		if (reviewCount < 1) {
			alert("조회 가능 횟수가 0회입니다.");
		} else {
			new Client().url("/api/mypage/nice").callback(function(data){
				new Client().url("/security/safekey?name="+data.name+"&PSNNo="+data.PSNNo).callback(safekeyResult).get();	
			}).get();
		}
		
	})
})
</script> -->
</div>
<!-- <!-- 		
<div class="layer_dimm"></div>
스테이지 초대장 보내기 팝업
<div class="send_invit_pop">
	<a class="send_invit_pop_close" href="javascript:;">닫기</a>
	<strong class="send_invit_pop_ttl">스테이지 초대장 보내기</strong>
	<p class="send_invit_pop_subttl">나의 아임인 친구들에게 1:1 채팅으로 내용이 전달됩니다.</p>
	<div class="stage_buddy_sel">
		<div class="stage_buddy_inner">
			<strong>스테이지 선택</strong>
			<p>스테이지는 하나만 선택 가능합니다.</p>
			<div class="stage_buddy_list_wrap">
				<div class="stage_buddy_list_top"></div>
				<div class="stage_buddy_list">
					<ul id = "invitationStageArea">
					</ul>
				</div>
			</div>
		</div>
		<div class="stage_buddy_inner m-l-20">
			<strong>친구 선택</strong>
			<p>친구는 다중 선택 가능합니다.</p>
			<div class="stage_buddy_list_wrap">
				<div class="stage_buddy_list_top">
					<p class="buddy_chk_all">
						<input id="ChkAll" name="" type="checkbox">
						<label for="ChkAll">전체 선택</label>
					</p>
					<a href="javascript:;" id="allCancel">전체 선택 취소</a>
				</div>
				<div class="stage_buddy_list">
					<ul id = "invitationFriendArea">
					</ul>
				</div>
			</div>
		</div>
	</div>
	초대장
	<div class="invit_card_wrap">
		<div class="invit_card_inner">
			<div class="invit_card_cont">
				<p><span>[스테이지 초대장]</span><strong id = "nickname"></strong>님께서 <br>스테이지로 초대합니다.</p>
				<img alt="" src="/resources/img/stage/sample_card.jpg">
			</div>
			<div class="invit_card_txtarea">
				<textarea placeholder="초대장 문구를 작성해 주세요." id = "chatMsg"></textarea>
				<span>(0/300)</span>
			</div>
		</div>
		<a class="btn_invit_card" href="javascript:;" id = 'sendChatBtn'>1:1 채팅 보내기</a>
	</div>
	초대장
</div>
스테이지 초대장 보내기 팝업 end

I-PAY란? 팝업
<div class="about_ipay_pop">
	<a class="about_ipay_pop_close" href="javascript:;">닫기</a>
	<strong class="about_ipay_pop_ttl">I-PAY란?</strong>
	<ol>
		<li>
			1. I-PAY란?
			<p>I-PAY는 주문한 상품 먼저 받고, 결제는 나중에 할 수 있는 아임인의 간편결제 입니다.</p>
		</li>
		<li>
			2. 사용방법
			<ul>
				<li>아임인샵에서 상품 주문 시 ‘I-PAY구매하기’를 선택해주세요.</li>
				<li>I-PAY 금액을 보유하신 회원만 사용 가능합니다.</li>
				<li>I-PAY 금액 = 원리금 수취권 금액</li>
			</ul>
			<div class="my_receive_right">
				<p>
					원리금 수취권이란 스테이지 참여 후 회원님이 납입한 <br>금액에 대한 받을 권리입니다.<br>
					<a href="/mypage/info-principal">나의 원리금수취권 보기 &gt;</a>
				</p>
			</div>
		</li>
		<li>
			2. 상품금액 지불
			<ul>
				<li>I-PAY 사용 시 실 결제금액은 0원이며, 상품금액은 약정금 <br>지급일에 지불됩니다.</li>
				<li>복수 스테이지 이용 중일 경우 상품금액 지불은 약정금 <br>지급일이 빠른 스테이지부터 순차적으로 적용됩니다.</li>
			</ul>
		</li>
	</ol>
</div>

<div class="stamp_use_pop">
	<a class="stamp_use_pop_close" href="javascript:;">닫기</a>
	<strong class="stamp_use_pop_ttl">스탬프 이용방법</strong>
	<p class="stamp_use_pop_subttl">※스탬프는 구매확정 후 60일 이내 사용가능 (이후 소멸)</p>
	<div class="stamp_use_steps">
		<ul>
			<li><strong>하나!</strong> 아임인샵에서 상품 구매</li>
			<li><strong>두울!</strong> 상품 수령 후 ‘구매확정’ 버튼 클릭</li>
			<li><strong>세엣!</strong> 스탬프 적립 (아이콘 삽입)</li>
			<li><strong>네엣!</strong> 스탬프를 사용할 스테이지 선택 시 포인트 지급</li>
		</ul>
	</div>
	<dl class="m-t-20">
		<dt>·포인트 지급 시점</dt>
		<dd>스테이지 효력 개시 후 첫 입금 완료 시 멤버 전원에게 분배되어<br>지급됩니다.</dd>
	</dl>
	<dl class="m-t-30">
		<dt>·스탬프 개수에 따라 아래 기준으로 스테이지에 포인트가 적립되고, <br>적립된 포인트는 인원수로 나눠 서 지급됩니다.</dt>
		<dd>Ex) 13명 스테이지, 총 적립 포인트  52,000P인 경우 : 4,000P씩 지급</dd>
	</dl>
	<table>
		<colgroup>
			<col width="20%">
			<col width="20%">
			<col width="20%">
			<col width="20%">
			<col width="20%">
		</colgroup>
		<thead>
			<tr>
				<th>구분</th>
				<th>5명 스테이지</th>
				<th>7명 스테이지</th>
				<th>9명 스테이지</th>
				<th>13명 스테이지</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>스탬프 1개</td>
				<td>5,000</td>
				<td>7,000</td>
				<td>9,000</td>
				<td>13,000</td>
			</tr>
			<tr>
				<td>스탬프 2개</td>
				<td>5,000</td>
				<td>7,000</td>
				<td>9,000</td>
				<td>13,000</td>
			</tr>
			<tr>
				<td>스탬프 3개</td>
				<td>10,000</td>
				<td>14,000</td>
				<td>18,000</td>
				<td>26,000</td>
			</tr>
			<tr>
				<td>스탬프 4개</td>
				<td>10,000</td>
				<td>14,000</td>
				<td>18,000</td>
				<td>26,000</td>
			</tr>
			<tr>
				<td>스탬프 5개</td>
				<td>25,000</td>
				<td>21,000</td>
				<td>27,000</td>
				<td>39,000</td>
			</tr>
			<tr>
				<td>스탬프 6개</td>
				<td></td>
				<td>21,000</td>
				<td>27,000</td>
				<td>39,000</td>
			</tr>
			<tr>
				<td>스탬프 7개</td>
				<td></td>
				<td>49,000</td>
				<td>36,000</td>
				<td>52,000</td>
			</tr>
			<tr>
				<td>스탬프 8개</td>
				<td></td>
				<td></td>
				<td>36,000</td>
				<td>52,000</td>
			</tr>
			<tr>
				<td>스탬프 9개</td>
				<td></td>
				<td></td>
				<td>81,000</td>
				<td>65,000</td>
			</tr>
			<tr>
				<td>스탬프 10개</td>
				<td></td>
				<td></td>
				<td></td>
				<td>65,000</td>
			</tr>
			<tr>
				<td>스탬프 11개</td>
				<td></td>
				<td></td>
				<td></td>
				<td>78,000</td>
			</tr>
			<tr>
				<td>스탬프 12개</td>
				<td></td>
				<td></td>
				<td></td>
				<td>78,000</td>
			</tr>
			<tr>
				<td>스탬프 13개</td>
				<td></td>
				<td></td>
				<td></td>
				<td>169,000</td>
			</tr>
			<tr class="last">
				<td>총누적 포인트</td>
				<td>55,000</td>
				<td>133,000</td>
				<td>261,000</td>
				<td>715,000</td>
			</tr>
		</tbody>
	</table>
</div>
 </div>
<div class="chg_pw_pop">
    <a class="chg_pw_pop_close" href="javascript:;">닫기</a>
    <strong class="chg_pw_pop_ttl">비밀번호 변경</strong>
    <p class="chg_pw_pop_subttl">안전한 정보관리를 위해 주기적으로 비밀번호를 변경해 주시기 바랍니다.</p>
    <fieldset>
        <dl>
            <dt>기존 비밀번호</dt>
            <dd><input id="oldPw" name="oldPw" placeholder="기존 비밀번호를 입력해 주세요." type="password"></dd>
        </dl>
        <dl>
            <dt>새 비밀번호</dt>
                <dd><input id="newPw" name="newPw" placeholder="영문과 숫자를 조합하여 8자리 이상 입력해주세요." type="password"></dd>
        </dl>
        <dl>
            <dt>새 비밀번호 확인</dt>
            <dd><input id="newPw2" name="newPw2" placeholder="새 비밀번호와 동일하게 입력해 주세요." type="password"></dd>
        </dl>
    </fieldset>
    <p class="pop_btm_btn m-t-40">
        <a class="blue w110" href="javascript:;" id = "changeBtn">변경</a>
    </p>
</div>
비밀번호 변경 팝업 end
    나의 계좌 관련 유의사항 팝업
    <div class="account_noti_pop">
    <a class="account_noti_pop_close" href="javascript:;">닫기</a>
    <strong class="account_noti_pop_ttl">나의 계좌 관련 유의사항</strong>
    <ul>
        <li>- <span class="blue">나의 계좌</span>는 약정금을 지급 받는 회원님의 계좌로 본인 명의만 등록 가능합니다.</li>
        <li>- <span class="blue">타인 명의 등록 시 </span>지급 보류되며, 가족관계증명서 등의 서류 제출이 필요합니다.</li>
        <li>- <span class="blue">계좌변경</span>은 지급일 2일전까지 가능하며, 변경 시 모든 스테이지에 동일 적용됩니다.</li>
<li>- 지급일 1일전부터 <span class="blue">계좌 변경은 고객센터로 문의 부탁드립니다.</span></li>
</ul>
</div>
나의 계좌 관련 유의사항 팝업 end
신용등급 팝업
<div class="credit_rate_pop">
<a class="credit_rate_pop_close" href="javascript:;">닫기</a>
<strong class="credit_rate_pop_ttl">신용등급</strong>
<ul>
<li>회원님의 NICE신용등급이 상승하신 경우 재 조회를 통해 <span class="blue">상승한 <br>신용등급을 반영, 이용한도를 증액할 수 있습니다.</span></li>
<li>재 조회가 완료되면 즉시 I-CSS 등급과 이용한도에 반영됩니다. <br>단, 회원님의 기존 I-CSS 등급 구간에 따라 변동이 없을 수도 있습니다.</li>
<li><span class="blue">회원님의 재 조회 가능 횟수는 1년에 3회입니다.</span> <br>가능 횟수 소진 시 추가로 재 조회를 할 수 없으므로 가능한 4개월<br>단위로 이용 부탁 드립니다.</li>
<li>신용등급 조회 시 개인신용정보에는 영향을 주지 않습니다.</li>
</ul>
<div class="credit_rate_cont">
<strong class="credit_rate_cont_ttl">NICE 신용등급 재조회</strong>
<div class="lookup_chk">
<p><strong id = "reviewCount"></strong> 회</p>
<span>2020년 조회 가능 횟수</span>
<a class="btn_lookup" href="javascript:;" id = "safekeyBtn">조회하기</a>
</div>
<div class="lookup_chk_result">
<p class="lookup_chk_result_txt">신용등급 재조회 결과</p>
<p class="lookup_chk_result_rate"><strong id = "reviewGrade">-</strong> 등급</p>
</div>
<p class="lookup_chk_guide">조회하기 후 결과를 확인하실 수 있습니다.</p>
</div>
</div>
신용등급 팝업 end
I-CSS 등급 팝업
<div class="icss_rate_pop">
<a class="icss_rate_pop_close" href="javascript:;">닫기</a>
<strong class="icss_rate_pop_ttl">I-CSS 등급</strong>
<p class="icss_rate_pop_subttl">IMIN-CREDIT SCORING SYSTEM</p>
<ul>
<li>I-CSS는 회원님의 <span class="blue">소중한 자산을 보호하기 위해</span> 아임인에서 자체 개발, <br>특허 등록된 관리프로그램입니다.</li>
<li>초기 회원가입 시 회원님의 NICE신용정보와 아임인 이용패턴 등 9가지의 항목이 종합 평가되어 <span class="blue">이용한도가 설정됩니다.</span></li>
<li>표기된 등급은 회원님이 가입 시 초기 부여받은 등급으로 이용 중  상승, 하락할 수 있지만 <span class="blue">회원님의 NICE 신용등급에 영향을 주지 않습니다.</span></li>
</ul>
</div>
I-CSS 등급 팝업 end
스테이지 이용한도 팝업
<div class="stage_limit_pop">
<a class="stage_limit_pop_close" href="javascript:;">닫기</a>
<strong class="stage_limit_pop_ttl">스테이지 이용한도</strong>
<p class="stage_limit_pop_subttl">이용가능 한도는 스테이지 참여 또는 개설 시 <br>매 회차 납입이 가능한 금액의 한도입니다.</p>
<ol>
<li>
1. 한도 예시
<ul>
<li>
<span class="blue">이용가능 한도 100만원 보유 시</span>
<ol>
<li>① 13명 약정금 1,300만원 스테이지 참여 가능</li>
<li>② 9명 약정금 900만원 스테이지 참여 가능</li>
</ol>
</li>
</ul>
</li>
<li>
2. 유의사항
<ul>
<li>복수스테이지에 동시 참여 시 한도는 나눠서 사용 가능합니다.</li>
<li>이용가능 한도는 회원님의 스테이지 참여 순번, 약정금에 따라 차감되며, <span class="blue">해당 스테이지가 종료 시 원상 복구됩니다.</span></li>
<li><span class="blue">이용가능 한도가 남아 있더라도 앞 순번 참여는 이용 패턴에 따라 제한될 수 있습니다.</span></li>
</ul>
</li>
</ol>
</div>
스테이지 이용한도 팝업 end
총 누적혜택 팝업
<div class="final_accum_pop">
<a class="final_accum_pop_close" href="javascript:;">닫기</a>
<strong class="final_accum_pop_ttl">총 누적혜택</strong>
<div class="final_accum_board">
<p class="sum"><strong id = "totalBenefitSub"></strong> 원</p>
<p class="subtxt">회원님이 지금까지 받은 총 혜택입니다.</p>
</div>
<div class="final_accum_tbl">
<table>
<colgroup>
<col width="145">
<col width="*">
<col width="145">
</colgroup>
<thead>
<tr>
<th>일자</th>
<th>내역</th>
<th>금액</th>
</tr>
</thead>
<tbody id = "benefitArea">
</tbody>
</table>
<div class="friends_list_pager mt40" id = "benefitPaging">
</div>
</div>
</div>
총 누적혜택 팝업 end
<div class="my_fav_set_pop">
<a class="my_fav_set_pop_close" href="javascript:;">닫기</a>
<strong class="my_fav_set_pop_ttl">MY 즐겨찾기 메뉴</strong>
<p class="my_fav_set_pop_subttl">즐겨찾기 메뉴는 최대 9개까지 가능합니다.</p>
<div class="my_fav_setmenu">
<div class="basic_menu">
<strong class="setmenu_ttl">기본메뉴</strong>
<div class="inner">
<ul id = "menuArea">
</ul>
</div>
</div>
<div class="mysel_menu">
<strong class="setmenu_ttl">내가 선택한 메뉴</strong>
<div class="inner">
<ul id = "fmAppendArea">
</ul>
</div>
</div>
</div>
<div class="my_fav_menu_btns m-t-40">
<a class="grey" href="javascript:;" id = "resetFMBtn">초기화</a>
<a class="blue" href="javascript:;" id = "addFMBtn">완료</a>
</div>
</div>
<div class="sche_detail_pop pop_recv" style="display:none;">
<a class="sche_detail_pop_close" href="javascript:;">닫기</a>
<strong class="sche_detail_pop_ttl">지급 스케줄 상세 내역</strong>
<p class="sche_detail_pop_subttl popup_today">2019년 11월 23일</p>
<table class="sche_detail_tbl mt40">
<colgroup>
<col width="*">
<col width="130">
<col width="130">
<col width="130">
<col width="100">
<col width="100">
<col width="100">
</colgroup>
<thead>
<tr>
<th>스테이지</th>
<th>지급 예정일</th>
<th>지급 예정액</th>
<th>실 지급금액</th>
<th>순번</th>
<th>처리</th>
<th>안심프라임</th>
</tr>
</thead>
<tbody id="popupRecTbody">
</tbody>
</table>
</div>
<div class="sche_detail_pop pop_dep" style="display:none;">
<a class="sche_detail_pop_close" href="javascript:;">닫기</a>
<strong class="sche_detail_pop_ttl">입금 스케줄 상세 내역</strong>
<p class="sche_detail_pop_subttl popup_today"></p>
<table class="sche_detail_tbl mt40">
<colgroup>
<col width="*">
<col width="130">
<col width="130">
<col width="180">
<col width="100">
<col width="100">
</colgroup>
<thead>
<tr>
<th>스테이지</th>
<th>입금 예정일</th>
<th>입금 예정액</th>
<th>해당 회차/약정 회차</th>
<th>순번</th>
<th>상태</th>
</tr>
</thead>
<tbody id="popupDepTbody">
</tbody>
</table>
</div> --> 
  <!--contents-->
  <!--footer-->
  <%@ include file="../include/footer.jsp" %>
  
</body>
</html>
