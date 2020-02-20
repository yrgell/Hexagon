//마이페이지 펑션들
var MENU = [ {
				title : "나의 혜택",
				subMenu : [ {
					title : "쿠폰",
					data : "/mypage/benefits"
				}, {
					title : "I-POINT",
					data : "/mypage/benefits/i-point"
				}, {
					title : "I-PAY",
					data : "/mypage/benefits/i-pay"
				}, {
					title : "스탬프",
					data : "/mypage/benefits/stamp"
				} ]
			}, {
				title : "스테이지 관리",
				subMenu : [ {
					title : "추천",
					data : "/mypage/stage"
				}, {
					title : "대기",
					data : "/mypage/stage/participation"
				}, {
					title : "진행",
					data : "/mypage/stage/staging"
				}, {
					title : "완료",
					data : "/mypage/stage/end"
				} ]
			}, {
				title : "입금/지급 스케쥴",
				subMenu : [ {
					title : "입금 스케쥴",
					data : "/mypage/deposit"
				}, {
					title : "지급 스케쥴",
					data : "/mypage/deposit"
				} ]
			}, {
				title : "알람 관리",
				subMenu : [ {
					title : "전체",
					data : "/mypage/alarm"
				}, {
					title : "스테이지",
					data : "/mypage/alarm/stage"
				}, {
					title : "일반",
					data : "/mypage/alarm/gift"
				} ]
			}, {
				title : "1:1 문의",
				subMenu : [ {
					title : "답변 대기",
					data : "/mypage/oneToOne"
				}, {
					title : "답변 완료",
					data : "/mypage/oneToOne/complete"
				} ]
			}, {
				title : "마이샵 관리",
				subMenu : [ {
					title : "주문/배송 현황",
					data : "/mypage/shop"
				}, {
					title : "장바구니",
					data : "/mypage/shop/myCart"
				}, {
					title : "반품/교환/환불",
					data : "/mypage/shop/myRefund"
				}, {
					title : "상품 문의",
					data : "/mypage/shop/requestGoods"
				}, {
					title : "상품 후기",
					data : "/mypage/shop/goodsReview"
				} ]
			} ];

			function drawMenu() {
				var html = '';
				MENU
						.forEach(function(m) {
							html += '<li><p>'
									+ m.title
									+ '<a href="javascript:;">더보기</a></p><div class="basic_submenu"><ul>';
							m.subMenu
									.forEach(function(sm) {
										html += '<li><p>'
												+ sm.title
												+ '<a href="javascript:;" data = "' + m.title + ' - ' + sm.title + '||' + sm.data + '">추가</a></p></li>';
									})
							html += '</ul></div></li>';
						})

				$("#menuArea").empty().append(html);
				$('.basic_menu .inner > ul > li > p > a').on(
						'click',
						function() {
							$('.basic_submenu').stop().slideUp();
							$(this).parent().next('.basic_submenu').stop()
									.slideToggle();
						});
				$("#addFMBtn").click(function() {
					var fmLi = $("#fmAppendArea").find("li");
					var fmList = [];
					fmLi.each(function(idx, item) {
						fmList.push($(item).attr("data"));
					})
					updateFavoritesMenu(fmList)
				})
				$("#resetFMBtn").click(function() {
					$("#fmAppendArea").empty();
				})
				$("div.basic_menu")
						.find("div.basic_submenu")
						.find("a")
						.click(
								function() {
									var fmLi = $("#fmAppendArea").find("li");
									if (fmLi.length < 9) {
										var menuStr = $(this).attr("data");
										var menuCheck = true;
										fmLi
												.each(function(idx, item) {
													if (menuStr == $(item)
															.attr("data")) {
														menuCheck = false;
													}
												})
										if (menuCheck) {
											var menuSplit = menuStr.split("||");
											var menuText = menuSplit[0];
											$("#fmAppendArea")
													.append(
															"<li data = '" + menuStr + "'><p>"
																	+ menuText
																	+ "<a href='javascript:void(0);' onclick='deleteFm(this)' >지우기</a></p></li>");
										} else {
											alert("중복된 메뉴가 있습니다.");
										}
									} else {
										alert("즐겨찾기 메뉴는 최대 9개까지 가능합니다.");
									}
								});

				$("#resetBtn").click(function() {
					$("#fmUl").empty();
					var fmLi = $("#fmUl").find("li");
					var fmList = [];
					fmLi.each(function(idx, item) {
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
				new Client().url("/api/mypage/favorites-menu").callback(
						function(data) {
							if (data.responseBody.result == 1) {
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
				fmLi.each(function(idx, item) {
					fmList.push($(item).attr("data"));
				})
				updateFavoritesMenu(fmList)
			}
			function makeFavoritesMenu(favoritesMenu) {
				var fm = '';
				favoritesMenu
						.forEach(function(item) {
							var menuSplit = item.split("||");
							fm += '<li data = "' + item + '"><p OnClick="location.href =\'' + menuSplit[1] + '\'" style="cursor:pointer;">'
									+ menuSplit[0]
									+ '</p><a  href="javascript:void(0);" onclick="deleteFmCall(this)"><img alt="" src="/images/btn_del_fav.png"></a></li>';
							$("#fmAppendArea")
									.append(
											"<li data = '" + item + "'><p>"
													+ menuSplit[0]
													+ "<a href='javascript:void(0);' onclick='deleteFm(this)' >지우기</a></p></li>")
						})
				$("#fmUl").empty().append(fm);
			}
			function drawFavoritesMenu(data) {
				if (typeof data.favoritesMenu != "undefined"
						&& data.favoritesMenu != "[]") {
					makeFavoritesMenu(JSON.parse(data.favoritesMenu));
					$("#fmArea").show();
					$("#fmAreaEmpty").hide();
				}
			}
			function getFavoritesMenu() {
				new Client().url("/api/mypage/favorites-menu").callback(
						function(data) {
							drawFavoritesMenu(data);
						}).get();
			}

			function getStamp() {
				new Client().url("/api/count/stamp").callback(function(data) {
					if (typeof data.total != "undefined")
						$("#stamp").text(numberWithCommas(data.total) + "개");
				}).get();
			}
			function getIpay() {
				new Client()
						.url("/api/count/ipay")
						.callback(
								function(data) {
									if (typeof data.total != "undefined")
										$("#ipay")
												.text(
														numberWithCommas(parseInt(data.total / 10000))
																+ "만원");
								}).get();
			}
			function getIpoint() {
				new Client().url("/api/count/ipoint").callback(function(data) {
					if (typeof data.total != "undefined")
						$("#ipoint").text(numberWithCommas(data.total) + "P");
					else
						$("#ipoint").text("0P");
				}).get();
			}
			function getTotalCoupon() {
				new Client().url("/api/mypage/coupon").callback(function(data) {
					$("#totalCoupon").text(data.length + "장");
				}).get();
			}

			function getTotalBenefit() {
				new Client().url("/api/count/total/benefit").callback(
						function(data) {
							if (typeof data.total != "undefined") {
								$("#totalBenefit").append(
										numberWithCommas(data.total));
								$("#totalBenefitSub").append(
										numberWithCommas(data.total)
												+ "<span></span>");
							}
						}).get();
				var totalLimit = new Client().url("/api/count/total/limit")
						.asyncFalse().get();
				if (typeof totalLimit.data.total == "undefined")
					totalLimit.data.total = 0;
				var usageLimit = new Client().url("/api/count/usage/limit")
						.asyncFalse().get();
				if (typeof usageLimit.data.total == "undefined")
					usageLimit.data.total = 0;
				$("#usable").text(
						numberWithCommas((usageLimit.data.total) / 10000));
				let myLimit = totalLimit.data.total - usageLimit.data.total < 0 ? 0
						: totalLimit.data.total - usageLimit.data.total;
				$("#usableLimit").text(numberWithCommas((myLimit) / 10000));
			}
			function getGrade() {
				new Client().url("/api/mypage/grade").callback(function(data) {
					if (typeof data.total != "undefined")
						$("#grade").text(data.totalStr + " 등급");
				}).get();
			}

			function getNiceGrade() {
				new Client().url("/api/mypage/nice").callback(
						function(data) {
							$("#reviewCount").text(data.review)
							if (typeof data.grade != "undefined")
								$("#niceGrade").empty().append(
										'<img alt="" src="/resources/img/mypage/icon_nice.jpg">'
												+ data.grade + '등급');
						}).get();
			}
			function makeQna(item) {
				var state = '';
				if (item.state == "N")
					state = '<span>[답변 대기] </span>';
				else
					state = '<span class = "blue">[답변 완료] </span>';
				var reply = '아직 답변이 도착하지 않았습니다.';
				if (typeof item.reply != "undefined")
					reply = item.reply;
				return '<li>'
						+ '<a class="mypage_inquiry_ttl" href="javascript:;">'
						+ '<div class="cate">' + '<span class="blue">'
						+ item.type + '</span>' + '</div>'
						+ '<div class="ttl">' + '<p>' + state + item.title
						+ '</p>' + '</div>' + '</a>' + '<div class="qna">'
						+ '<p class="ques">' + item.contents + '</p>'
						+ '<p class="answ">' + reply + '</p>' + '</div>'
						+ '</li>';
			}
			function getQna() {
				new Client()
						.url("/api/servicecenter/onetoone")
						.callback(
								function(data) {
									var make = function(d, p, c) {
										var html = '';
										var start = p * c - p;
										var end = start + p;
										d.forEach(function(item, idx) {
											if (idx >= start && end > idx)
												html += makeQna(item);
										})
										$("#qnaArea").empty().append(html);
										$(
												'.mypage_inquiry_wrap a.mypage_inquiry_ttl')
												.on(
														'click',
														function() {
															if ($(this)
																	.hasClass(
																			'close')) {
																$(this)
																		.removeClass(
																				'close');
																$(this)
																		.next(
																				'.mypage_inquiry_wrap div.qna')
																		.stop()
																		.slideUp();
															} else {
																$(
																		'.mypage_inquiry_wrap a.mypage_inquiry_ttl')
																		.removeClass(
																				'close');
																$(this)
																		.addClass(
																				'close');
																$(
																		'.mypage_inquiry_wrap div.qna')
																		.stop()
																		.slideUp();
																$(this)
																		.next(
																				'.mypage_inquiry_wrap div.qna')
																		.stop()
																		.slideDown();
															}
														});
									}
									new Pagination().init(data.length, 4, 4)
											.area("paging").data(data).make(
													make).randing(1);
								}).get();
			}
			$(".nice_close").click(function() {
				$("#ifr_safeKey").attr("src", "about:blank");
				$("#nice_layer_group").hide();
				$('.layer_dimm, .credit_rate_pop').fadeIn();
			})
			function fnNiceReturn(safekey, niceGrade, niceMoney, userTel, nice) {
				var oldGrade = $("#reviewGrade").text();
				$("#reviewGrade").text(niceGrade);
				var reviewCount = Number($("#reviewCount").text()) - 1;
				$("#reviewCount").text(reviewCount);
				$("#niceGrade").empty().append(
						'<img alt="" src="/images/icon_nice.jpg">' + niceGrade
								+ '등급');
				$("#nice_layer_group").hide();
				$('.layer_dimm, .credit_rate_pop').fadeIn();
				var nice = {
					safekey : safekey,
					grade : niceGrade,
					money : niceMoney,
					review : reviewCount
				}
				new Client().url("/api/mypage/nice").callback(function(data) {
				}).data(JSON.stringify(nice)).post();
			}
			function safekeyResult(data, userInfo) {
				var dataObj = JSON.parse(data);
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

			function getBenefit() {
				new Client().url("/api/mypage/benefit").callback(
						function(data) {
							var make = function(d, p, c) {
								var html = '';
								var start = p * c - p;
								var end = start + p;
								d.forEach(function(item, idx) {
									if (idx >= start && end > idx)
										html += '<tr><td>' + item.regDate
												+ '</td><td>' + item.history
												+ '</td><td>'
												+ numberWithCommas(item.money)
												+ '원</td></tr>';
								})
								$("#benefitArea").empty().append(html);
							}
							new Pagination().init(data.length, 4, 4).area(
									"benefitPaging").data(data).make(make)
									.randing(1);
						}).get();
			}
			function drawStageBenefit(data) {
				var html = '';
				data
						.forEach(function(item, idx) {
							if (idx < 6)
								html += '<li><a target="_blank" href = "' + item.bannerLink + '"><img alt="" src="' + IMG.EVENT + item.contentPath2 + '"><p>'
										+ item.title + '</p></a></li>';
						})
				return html;
			}

			function drawBenefitCard(categoryIdx, flag) {
				var category = {
					4 : {
						"name" : "목돈·재테크",
						"cls" : "money"
					},
					5 : {
						"name" : "여행",
						"cls" : "trip"
					},
					8 : {
						"name" : "뷰티·병원",
						"cls" : "beauty"
					},
					11 : {
						"name" : "유아",
						"cls" : "baby"
					},
					19 : {
						"name" : "라이프",
						"cls" : "life"
					}
				}
				var enable = {
					"true" : {
						"cls" : " on",
						"link" : "/stage/benefit?category=",
						"text" : "혜택"
					},
					"false" : {
						"cls" : "",
						"link" : "/stage/list?category=",
						"text" : "스테이지"
					}
				}
				return '<div class="my_stage_adv_card ' + category[categoryIdx].cls + '' + enable[flag].cls + '">'
						+ '<div class="top"></div>'
						+ '<div class="mid"><ul id = "benefit_category_' + categoryIdx + '"></ul></div>'
						+ '<div class="btm"><a href="' + enable[flag].link + categoryIdx +'">'
						+ category[categoryIdx].name
						+ ' <span>'
						+ enable[flag].text
						+ ' 보러 가기</span></a></div>'
						+ '</div>';
			}
			function getStageBenefit() {
				var category = {
					4 : {
						"flag" : "false",
						"html" : ""
					},
					5 : {
						"flag" : "false",
						"html" : ""
					},
					8 : {
						"flag" : "false",
						"html" : ""
					},
					11 : {
						"flag" : "false",
						"html" : ""
					},
					19 : {
						"flag" : "false",
						"html" : ""
					}
				}

				new Client().url("/api/mypage/stage/participation")
						.asyncFalse().get().data.stageList.forEach(function(
						item, idx) {
					if (item.categoryIdx == 4 || item.categoryIdx == 5
							|| item.categoryIdx == 8 || item.categoryIdx == 11
							|| item.categoryIdx == 10)
						category[item.categoryIdx].flag = "true";
				})

				new Client().url("/api/mypage/stage/staging").asyncFalse()
						.get().data.stageList.forEach(function(item, idx) {
					if (item.categoryIdx == 4 || item.categoryIdx == 5
							|| item.categoryIdx == 8 || item.categoryIdx == 11
							|| item.categoryIdx == 10)
						category[item.categoryIdx].flag = "true";
				})

				Object.keys(category).forEach(
						function(key) {
							category[key].html += drawBenefitCard(key,
									category[key].flag);
						})
				var html = {
					"true" : "",
					"false" : ""
				}
				Object.keys(category).forEach(
						function(key) {
							html[category[key].flag] += drawBenefitCard(key,
									category[key].flag);
						})

				$("#stageBenefitArea").empty().append(html["true"]).append(
						html["false"]);
				new Client().url("/api/stage/stageBenefit").callback(
						function(data) {
							$("#benefit_category_5").empty().append(
									drawStageBenefit(data));
						}).param({
					"categoryIdx" : 5
				}).get();
				new Client().url("/api/stage/stageBenefit").callback(
						function(data) {
							$("#benefit_category_11").empty().append(
									drawStageBenefit(data));
						}).param({
					"categoryIdx" : 11
				}).get();
				new Client().url("/api/stage/stageBenefit").callback(
						function(data) {
							$("#benefit_category_8").empty().append(
									drawStageBenefit(data));
						}).param({
					"categoryIdx" : 8
				}).get();
				new Client().url("/api/stage/stageBenefit").callback(
						function(data) {
							$("#benefit_category_19").empty().append(
									drawStageBenefit(data));
						}).param({
					"categoryIdx" : 19
				}).get();
				new Client().url("/api/stage/stageBenefit").callback(
						function(data) {
							$("#benefit_category_4").empty().append(
									drawStageBenefit(data));
						}).param({
					"categoryIdx" : 4
				}).get();
			}
			$(function() {
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

				$("#safekeyBtn").click(
						function() {
							var reviewCount = Number($("#reviewCount").text());
							if (reviewCount < 1) {
								alert("조회 가능 횟수가 0회입니다.");
							} else {
								new Client().url("/api/mypage/nice").callback(
										function(data) {
											new Client().url(
													"/security/safekey?name="
															+ data.name
															+ "&PSNNo="
															+ data.PSNNo)
													.callback(safekeyResult)
													.get();
										}).get();
							}

						})
			})
Kakao.init('15ae2a89257771b0eeb2c595bfbbd727');
				var _title = "[친구의 초대 메시지] 함께해요 아임인!";
				var _description = "지금 회원가입만 해도 현금처럼 쓸 수 있는 포인트 3,000P를 드려요♥";
				var _imgUrl = "https://img.iminfintech.co.kr/commonImage/friend_share.jpg";
				var _button = "회원가입하고 포인트 받기";

				Kakao.Link
						.createDefaultButton({
							container : '.ivt_kakao',
							objectType : 'feed',
							content : {
								title : _title,
								description : _description,
								imageUrl : _imgUrl,
								link : {
									mobileWebUrl : "https://m.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val(),
									webUrl : "https://www.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val()
								}
							},
							buttons : [ {
								title : _button,
								link : {
									mobileWebUrl : "https://m.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val(),
									webUrl : "https://www.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val()
								}
							} ]
						});
				Kakao.init('15ae2a89257771b0eeb2c595bfbbd727');
				var _title = "[친구의 초대 메시지] 함께해요 아임인!";
				var _description = "지금 회원가입만 해도 현금처럼 쓸 수 있는 포인트 3,000P를 드려요♥";
				var _imgUrl = "https://img.iminfintech.co.kr/commonImage/friend_share.jpg";
				var _button = "회원가입하고 포인트 받기";

				Kakao.Link
						.createDefaultButton({
							container : '.ivt_kakao',
							objectType : 'feed',
							content : {
								title : _title,
								description : _description,
								imageUrl : _imgUrl,
								link : {
									mobileWebUrl : "https://m.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val(),
									webUrl : "https://www.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val()
								}
							},
							buttons : [ {
								title : _button,
								link : {
									mobileWebUrl : "https://m.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val(),
									webUrl : "https://www.iminfintech.co.kr/member/membershipType?code="
											+ $("#secretCode").val()
								}
							} ]
						});
//마이페이지 펑션
(function ($) {
    "use strict";

    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })

    /*==================================================================
    [ Validate ]*/
    
    /*버튼 없는 input태그 알림창*/
    var input = $('.validate-input .input100');
    
    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
    var input = $('.validate-input .input100');
    
    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });

})(jQuery);

(function ($) {
    "use strict";

    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })

    /*==================================================================
    [ Validate2 ]*/
    
    /*버튼 있는 input태그 알림창*/
    var input2 = $('.validate-input-btn .input100');
    
    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input2.length; i++) {
            if(validate(input2[i]) == false){
                showValidate(input2[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input2) {
        if($(input2).attr('type') == 'email' || $(input2).attr('name') == 'email') {
            if($(input2).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input2).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input2) {
        var thisAlert = $(input2).parent();

        $(thisAlert).addClass('alert-validate-btn');
    }

    function hideValidate(input2) {
        var thisAlert = $(input2).parent();

        $(thisAlert).removeClass('alert-validate-btn');
    }
    
    var input2 = $('.validate-input-btn .input100');
    
    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input2.length; i++) {
            if(validate(input2[i]) == false){
                showValidate(input2[i]);
                check=false;
            }
        }

        return check;
    });
})(jQuery);


$(function() {
    // 유효성 검사 지원
    $("#joinForm").validate({
        rules: {
            join_user_agree: { required:true },
            join_priv_agree: { required:true }
        },
        messages: {
            join_user_agree: { required:'회원가입 약관에 동의하셔야 회원가입 하실 수 있습니다.' },
            join_priv_agree: { required:'개인정보 처리방침에 동의하셔야 회원가입 하실 수 있습니다.' }
        },
        errorPlacement: function(error, element) {
            element.parent("label").parent(".checkbox").parent("div").after(error);
            error.addClass("col-xs-12");
        },
        errorClass: "error",
        errorElement: "p"
    });

    // 네이버 로그인 버튼 추가
    $("button.nlogin-btn").click(function(){
        apiURL = $("[name=apiURL]").val();

        if ($("#joinForm").valid() && apiURL.length > 0) {
            window.open(apiURL, 'mywin','left=20,top=20,width=500,height=500,toolbar=1,resizable=0');
            return true;
        }
        return false;
    });
});
