<%@page import="oracle.net.aso.s"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="ranking.GoodsDao"%>
<%@ page import="ranking.GoodsDto"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인</title>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
	<script src="JS/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script>
		$(function(){
			$(".btn-menu-all").mouseenter(function() {
				$(this).addClass("on");
				$("#all-category").css('display','block');
			});
			
			$(".category-menu").mouseleave(function() {
				$(".btn-menu-all").removeClass("on");
				$("#all-category").css('display','none');	
			});

			$(".cate-depth1 > li > a").mouseenter(function() {
				var idx = $(this).parent().index();
				if(idx==1) {
					// 0 : '선물하기'
					$(".cate-depth2").css('display','none');
					$(".cate-depth2").eq(0).css('display','block');
				} else if(idx>=3){
					$(".cate-depth2").css('display','none');
					// idx-2
					$(".cate-depth2").eq(idx-2).css('display','block');
				} else {
					$(".cate-depth2").css('display','none');
				}
			});
			$(".cate-depth2 li a").mouseenter(function(){
				$(this).css('color','#ff6001');
				$(this).css('text-decoration','underline');
				$(this).css('text-decoration-color','#ff6001');
			});
			$(".cate-depth2 li a").mouseleave(function(){
				$(this).css('color','#333');
				$(this).css('text-decoration','none');
			});
		});
		
			
		$(function(){
			$(".btn-bottom-area-to-hide").click(function() {
				$(".MdPick-area > div").eq(1).css('display','none');
				$(".btn-bottom-area-to-show").css('display','block')
			});
			$(".btn-bottom-area-to-show").click(function() {
				$(this).css('display','none');
				$(".MdPick-area > div").eq(1).css('display','block');
			});
		});
		
		$(function() {
			var tD = 7;
	 		var tH = 0;
	 		var tM = 0;
	 		var tS = 7;
	 		var timerId1;
			
			function setTimeDesc(d,h,m,s) {
				$(".num-box.day").text(d);
				$(".num-box.hour").text(h);
				$(".num-box.min").text(m);
				$(".num-box.sec").text(s);
			}
			
			function opTimer() {
				tS--;
				if(tS==0 && tM==0 && tH==0 && tD==0) {
					setTimeDesc('-','-','-','-');
					clearTimeout(timerId);
					alert("타임 끝");
					return;
				}
				if(tS<=0) {
					tM--;
					tS+=60;
					if(tM<=0) {
						tH--;
						tM+=60;
						if(tH<=0) {
							tD--;
							tH+=24;
							if(tD<=0) {
								clearTimeout(timerId);
								alert("타임 끝");
							}
						}
					}
				}
				setTimeDesc(tD,tH,tM,tS);
				timerId = setTimeout(opTimer, 1000);
			}
			setTimeDesc(tD,tH,tM,tS);
			timerId = setTimeout(opTimer, 1000);
			var swiper = new Swiper(".second",  {
		        slidesPerView: 2,
		        spaceBetween: 45,
		        slidesPerGroup: 2,
		 		 autoplay: {
		 		  	delay: 300000,
		 		  },
		        loop: true,
		        loopFillGroupWithBlank: true,
		        navigation: {
		        	nextEl: ".swiper-button-next",
		            prevEl: ".swiper-button-prev",
		        },
		      });
		});	  
			
		$(function(){
			var cate = $(".category-tab").parent().find(".category-tab");
			$(".category-tab").click(function(){
				$(this).addClass("current");
				cate.not($(this)).removeClass("current");
			});
			
			
			$('#b1,#b3, #b4,#b5,#b6,#b7,#b8,#b9,#b10,#b11,#b12, #b13, #b14,#b15,#b16,#b17,#b18,#b19,#b20').click(function(){
				$('.salad').hide();
			});
			
			$('#b1,#b2 ,#b3, #b4,#b5,#b6,#b8,#b9,#b10,#b11,#b12, #b13, #b14,#b15,#b16,#b17,#b18,#b19,#b20').click(function(){
				$('.easy_food').hide();
			});
			
			$('#b1,#b3, #b4,#b5,#b6,#b8,#b9,#b10,#b11,#b12, #b13, #b14,#b15,#b16,#b17,#b18,#b19,#b20').click(function(){
				alert('준비중입니덩')
			});
			
			$('#b2').click(function(){
				$('.easy_food').show();
				$('.salad').hide();
			});//즉석 간편식
			
			$('#b7').click(function(){
				$('.salad').show();
				$('.easy_food').hide();
			});//샐러드
			
		});		
			
		$(function(){
			var swiper = new Swiper(".first", {
			direction: 'horizontal',
			autoplay: {
				delay: 500,
			},
			loop: true, 
			pagination: {
				el: ".swiper-pagination",
				type: "fraction",
			},
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
			})
			var sw=0;
			$(".slide-btns .swiper-button-ctrl").click(function(){
				if(sw==0){
					$(this).addClass("play");		    		
					swiper.autoplay.stop();
					sw=1;
				}else{
					$(this).removeClass("play");
					swiper.autoplay.start();
				    	sw=0;
				}
			});
		});
       
	</script>
		<style>
		
		.salad{
			display : none;
		}
		
		.easy_food{
			display : block;
		}
		
		body {
		    font-family: 'Pretendard', sans-serif;
		}
		img {
			max-width: 100%;
			vertical-align: top;
			border: 0;
		}
		.header-inner {
			position: relative;
			max-width: 1100px;
			min-height: 120px;
			margin: 0 auto; 
		}
		.body-inner{
			width: 1100px;
			margin: 0 auto;
		}
		.logo {
			display: block;
			position: absolute;
			top: 50px;
			left: 0;
			width: 180px;
			height: 46px;
			background: url(../ProjectImages/logo.gif);
		}
		a {
		    background: transparent;
		    text-decoration: none;
		    color: inherit;
		}
		.blind {
			position: absolute;
			width: 1px;
			height: 1px;
			margin: -1px;
			padding: 0;
			overflow: hidden;
			clip: rect(0, 0, 0, 0);
			border: 0;
		}
		.logo > a {
			display: block;
			width: 100%;
			height: 100%;
		}
		.util {
			position: absolute;
			top: 10px;
			right: 0;
		}
		ul, ol {
			list-style: none;
		}
		.util > ul {
			overflow: hidden;
		}
		.util > ul > li {
			float: left;
			position:relative;
			padding: 0 12px 0 0;
			font-size: 13px;
			color: #4D4D4D;
		}
		.util > ul > .list:before {
			display: inline-block;
			content: '';
			width: 1px;
			height: 10px;
			vertical-align: middle;
			background: #E6E6E6;
			margin: -2px 11px 0 0;
		}
		.util > ul > li:last-child {
			padding-right: 0;
		}
		.header-search {
			position: absolute;
			top: 60px;
			left: 370px;
			text-align: center;
			z-index: 100;
		}
		.top-search.on {
			border: 1px solid #666;
		}
		.top-search {
			position: relative;
			display: inline-block;
			width: 380px;
			height: 38px;
			border: 1px solid #ddd;
			border-radius: 21px;
			background: #fafafa;
			padding: 0 45px 0 20px;
		}
		.top-search .input type="button"-search {
			width: 100%;
			height: 36px;
			border: 0;
			padding: 0;
			font-size: 15px;
			color: #555;
			text-align: left;
			background: transparent;
			outline: none;
		}
		
		button {
			background: none;
			font-family: 'Pretendard', sans-serif;
			cursor: pointer;
			outline: none;
			border: 0;
			margin: 0;
			padding: 0;
		}
		
		 .btn-top-search {
			position: absolute;
			top: 0;
			right: 10px;
			width: 35px;
			height: 35px;
		} 
		
		.btn-top-search:after {
			display: inline-block;
			content: '';
			width: 18px;
			height: 18px;
			background: url(../ProjectImages/Main/ico_btns.png) 0 0;
			vertical-align: top;
		}
		
		.my-menu {
			position: absolute;
			top: 60px;
			right: 0;
		}	
			
		.my-menu > ul {
			font-size: 0;
			padding-left: 0px;
    		width: 195px;
		}
		
		.my-menu > ul > li {
			display: inline-block;
			vertical-align: top;
			margin-left: 38px;
		}
		
		.btn-util-coupon {
			display: inline-block;
			width: 26px;
			height: 38px;
			background: url(../ProjectImages/ico_util.png) left 40px; 
		}
		
		.btn-util-mypage {
			display: inline-block;
			width: 24px;
			height: 38px;
			background: url(../ProjectImages/ico_util.png) left 7px; 
		}
		
		.btn-util-cart {
			display: inline-block;
			margin-left: -6px;
			maegin-right: 11px;
			position: relative;
			width: 26px;
			height: 38px;
			background: url(../ProjectImages/ico_util.png) 27px 8px; 
		}
		
		.count {
			display: block;
			position: absolute;
			top: 0;
			right: -11px;
			width: 18px;
			height: 18px;
			color: #fff;
			font-size: 11px;
			font-weight: bold;
			font-family: "Malgun Gothic";
			text-align: center;
			line-height: 1.6;
			background: #FF542A;
			border-radius: 50%;
		}
		
		.gnb-wrap {
			width: 100%;
		    height: 58px;
			border-bottom: 1px solid #eee;
			background: #fff;
			z-index: 101;
		}
		
		.inner {
			position: relative;
			width: 1100px;
			height: 100%;
			margin: 0 auto;
			padding-left: 145px;
		}
		
		.category-wrap {
			position: absolute;
			width: 186px;
			bottom: 0px;
			left: 53px;
		}
		
		.category-wrap .category-menu {
			display: none;
			position: absolute;
			top: 58px;
			left: 0;
			z-index: 25;
		}
		
		.category-menu {
			position: absolute;
			top: 58px;
			left: 0;
			z-index: 1;
			width: 100%;
		}
		
		.category-menu .cate-depth1 {
			overflow-x: hidden;
			overflow-y: auto;
			background: #fff;
			border: 1px solid #ccc;
			border-top: 0;
			/* border-right: 0; */
			padding: 6px;
			padding-top: 6px;
			margin-block-start: 0;
		}
		
		.cate-depth1 > li {
			margin: 0;
			padding: 0;
			border: 0;
			vertical-align: baseline;
		}
		
		.cate-depth1 > li > a {
			display: block;
			padding: 4px 10px 4px;
		}
		
		.cate-depth1 > li > a:hover {
			background-color:#f4f4f4;		
		}
		
		.cate-depth1 > li .ico-cate-gnb {
			vertical-align: middle;
			display: inline-block;
			width: 30px;
			text-align: center;
		}
		
		i > img {
			max-width: 100%;
			vertical-align: top;
		}
		
		.cate-depth1 > li .menu {
			display: inline-block;
			vertical-align: middle;
			line-height: 2.1;
			margin-left: 4px;
			font-size: 14px;
		}
		
		.category-menu .cate-depth2 {
		    display: none;
		    overflow-y: auto;
		    overflow-x: hidden;
		    position: absolute;
		    top: 0;
		    left: 185px;
		    z-index: 2;
		    width: 180px;
		    height: 881px;;
		    background: #f4f4f4;
		    border: 1px solid #ccc;
		    border-top: 0;
		    border-left: 0;
		    padding-top: 5px;
		    padding-left: 1px;
		}
		
		.category-menu .cate-depth2 > li > a {
		    display: block;
		    padding: 8px 18px;
		    font-size: 14px;
		}
		
		.btn-menu-all {
			position: relative;
			display: block;
			width: 186px;
			color: #333;
			font-size: 17px;
			font-weight: 700;
			-webkik-transition: .1s;
			padding: 19px 0;
			line-height: 20px;
		}
		
		.btn-menu-all.on {
			color: #fff;
    		background-color: #333;
		}
		
		.btn-menu-all:before {
			display: inline-block;
			width: 14px;
			height: 12px;
			content: '';
			vertical-align: middle;
			background: url(../ProjectImages/ico_gnb_all.png) 0 0;
			margin: -3px 10px 0 20px; 
		}
		
		.btn-menu-all.on:before {
			background: url(../ProjectImages/ico_gnb_all.png) right top;
		}
		
		.btn-menu-all:not(.on):after {
			display: block;
			content: '';
			position: absolute;
			top: 21px;
			right: 0;
			width: 1px;
			height: 16px;
			background: #ccc;
		}
		
		.ico-cate-gnb{
			vertical-align: middle;
			display: inline-block;
			width: 30px;
			text-align: center;
		}
		
		.gnb-wrap .gnb {
			/* width: 100%; */
			padding-left: 95px; 
		}
		
		.gnb-wrap .gnb > ul {
			display: table;
			table-layout: auto;
			max-width: 100%;
			margin-bottom: 0;
		}
		
		.gnb-wrap .gnb > ul > li {
			display: table-cell;
			padding: 0 36px;
			word-break: keep-all;
		}
		
		.gnb > ul > li > a {
			display: block;
			color: #333;
			font-size: 17px;
			font-weight: 700;
			text-align: center;
			padding: 18px 0 18px;
			height: 100%;
			white-space: nowrap;
			line-height: 20px;
		}
		
		 .ico-txt-gnb {
			display: inline-block;
			width: 90px;
			height: 17px;
			overflow: hidden;
			background: url(../ProjectImages/exe_delivery.png) center right no-repeat;
			background-size: cover;
			position: relative;
			top: 3px;
		}
		
		.cate_li{
			margin-top: 36px;
			display : inline-block;
			padding : 0 11px;
		}
		
		.cate_item{
			width : 256px;
			position: relative;
		}
		
		.cate_img{
		 	idth: 256px !important;
	  		height: 256px;
		}
		
		.cate_bottom{
			margin-top: 10px;
			position: relative;
		}
		
	</style>
</head>

<body>
	<div class="header-inner">
		<h1 class="logo"><a href="#"></a></h1>
		<div class="util">
			<ul>
				<li><a href="#">로그인</a></li>
				<li class="list"><a href="#">회원가입</a></li>
				<li class="list"><a href="#">주문조회</a></li>
				<li class="list"><a href="#">고객센터</a></li>
			</ul>		
		</div>
		<div class="header-search">
			<div class="top-search on">
				<input type="button" type="search" class="input type="button"-search" id="rankKeyword" name="rankKeyword" maxlength="100" placeholder="완성하시오."/>
				<button type="button" class="btn-top-search"><span class="blind">검색</span></button>
			</div>
		</div>
		<div class="my-menu">
			<ul>
				<li><a href="#" class="btn-util-coupon"><span class="blind">쿠폰</span></a></li>
				<li><a href="#" class="btn-util-mypage"><span class="blind">마이페이지</span></a></li>
				<li><a href="#" class="btn-util-cart"><span class="blind">장바구니</span><em class="count">0</em></a></li>
			</ul>
		</div>
	</div>
	<div class="gnb-wrap">
		<div class="inner">
			<div class="category-wrap">
				<a href="#all-category" class="btn-menu-all"><span>전체 카테고리</span></a>
				<nav id="all-category" class="category-menu">
					<ul class="cate-depth1" style=" max-height: 1140px;">
						<li>
							<a href="#"><i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_1.png"/></i>
							<span class="menu">신상품</span></a>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_2.png"></i>
								<span class="menu">선물하기</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>테마별</span></a></li>
								<li><a href="#"><span>가격대별</span></a></li>
								<li><a href="#"><span>카테고리</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_3.png"></i>
								<span class="menu">1팩담기</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_4.png"></i>
								<span class="menu">닭가슴살</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>스테이크</span></a></li>
								<li><a href="#"><span>스팀·소프트</span></a></li>
								<li><a href="#"><span>볼·큐브</span></a></li>
								<li><a href="#"><span>슬라이스</span></a></li>
								<li><a href="#"><span>훈제</span></a></li>
								<li><a href="#"><span>프로틴</span></a></li>
								<li><a href="#"><span>냉장·실온보관</span></a></li>
								<li><a href="#"><span>저염·염분무첨가</span></a></li>
								<li><a href="#"><span>소시지·햄</span></a></li>
								<li><a href="#"><span>소스닭가슴살</span></a></li>
								<li><a href="#"><span>생 닭가슴살</span></a></li>
								<li><a href="#"><span>육포</span></a></li>
								<li><a href="#"><span>핫바·어묵바</span></a></li>
								<li><a href="#"><span>스낵·칩</span></a></li>
								<li><a href="#"><span>삼계탕</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_5.png"></i>
								<span class="menu">즉석간편식</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>브리또</span></a></li>
								<li><a href="#"><span>핫도그</span></a></li>
								<li><a href="#"><span>만두·딤섬</span></a></li>
								<li><a href="#"><span>떡볶이·튀김·순대</span></a></li>
								<li><a href="#"><span>치킨</span></a></li>
								<li><a href="#"><span>피자·탕수육</span></a></li>
								<li><a href="#"><span>라면·쌀국수</span></a></li>
								<li><a href="#"><span>곤약면·파스타</span></a></li>
								<li><a href="#"><span>즉석밥·곤약밥</span></a></li>
								<li><a href="#"><span>삼계탕</span></a></li>
								<li><a href="#"><span>간편 죽</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_6.png"></i>
								<span class="menu">도시락·볶음밥</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>다이어트 도시락</span></a></li>
								<li><a href="#"><span>더남은 도시락</span></a></li>
								<li><a href="#"><span>간편 도시락</span></a></li>
								<li><a href="#"><span>비건 도시락</span></a></li>
								<li><a href="#"><span>볶음밥</span></a></li>
								<li><a href="#"><span>덮밥·컵밥</span></a></li>
								<li><a href="#"><span>주먹밥</span></a></li>
								<li><a href="#"><span>즉석밥·곤약밥</span></a></li>
								<li><a href="#"><span>간편 죽</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_7.png"></i>
								<span class="menu">소고기</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>설도·홍두깨살</span></a></li>
								<li><a href="#"><span>스테이크·볼</span></a></li>
								<li><a href="#"><span>국거리·조리용</span></a></li>
								<li><a href="#"><span>육포</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_8.png"></i>
								<span class="menu">돼지·오리고기</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>돼지고기</span></a></li>
								<li><a href="#"><span>오리고기</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_9.png"></i>
								<span class="menu">닭안심살</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>소프트</span></a></li>
								<li><a href="#"><span>생 안심</span></a></li>
								<li><a href="#"><span>스테이크</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_10.png"></i>
								<span class="menu">샐러드·과일</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>알뜰샐러드</span></a></li>
								<li><a href="#"><span>토핑샐러드</span></a></li>
								<li><a href="#"><span>과일</span></a></li>
								<li><a href="#"><span>샐러드소스</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_11.png"></i>
								<span class="menu">베이커리·치즈</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>베이커리</span></a></li>
								<li><a href="#"><span>햄버거</span></a></li>
								<li><a href="#"><span>치즈</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_12.png"></i>
								<span class="menu">과자·간식·떡</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>과자·쿠키</span></a></li>
								<li><a href="#"><span>프로틴 스낵</span></a></li>
								<li><a href="#"><span>시리얼·바</span></a></li>
								<li><a href="#"><span>초콜릿</span></a></li>
								<li><a href="#"><span>젤리</span></a></li>
								<li><a href="#"><span>아이스크림</span></a></li>
								<li><a href="#"><span>떡</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_13.png"></i>
								<span class="menu">음료·차·프로틴</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>우유·두유·요거트</span></a></li>
								<li><a href="#"><span>물·탄산수</span></a></li>
								<li><a href="#"><span>프로틴 쉐이크</span></a></li>
								<li><a href="#"><span>프로틴 음료</span></a></li>
								<li><a href="#"><span>보충제·부스터</span></a></li>
								<li><a href="#"><span>커피·차</span></a></li>
								<li><a href="#"><span>클렌즈·주스</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_14.png"></i>
								<span class="menu">비건식품</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>도시락</span></a></li>
								<li><a href="#"><span>콩고기</span></a></li>
								<li><a href="#"><span>콩·두부</span></a></li>
								<li><a href="#"><span>빵·스낵</span></a></li>
								<li><a href="#"><span>샐러드</span></a></li>
								<li><a href="#"><span>과일</span></a></li>
								<li><a href="#"><span>음료·두유</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_15.png"></i>
								<span class="menu">계란·난백·콩</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>구운·훈제란</span></a></li>
								<li><a href="#"><span>반숙란</span></a></li>
								<li><a href="#"><span>난백·흰자</span></a></li>
								<li><a href="#"><span>콩 두부</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_16.png"></i>
								<span class="menu">견과·고구마·감자</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>견과</span></a></li>
								<li><a href="#"><span>고구마</span></a></li>
								<li><a href="#"><span>감자</span></a></li>
								<li><a href="#"><span>호박</span></a></li>
								<li><a href="#"><span>밤</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_17.png"></i>
								<span class="menu">반찬·밀키트·안주</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>밀키트</span></a></li>
								<li><a href="#"><span>햄·소시지</span></a></li>
								<li><a href="#"><span>잡채·동그랑땡</span></a></li>
								<li><a href="#"><span>카레·짜장·짬뽕</span></a></li>
								<li><a href="#"><span>건강반찬</span></a></li>
								<li><a href="#"><span>국·탕·찌개</span></a></li>
								<li><a href="#"><span>참치</span></a></li>
								<li><a href="#"><span>건강 안주</span></a></li>
								<li><a href="#"><span>곱창·껍데기</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_18.png"></i>
								<span class="menu">건강식품</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>영양제·비타민</span></a></li>
								<li><a href="#"><span>흑마늘 꿀 홍삼</span></a></li>
								<li><a href="#"><span>다이어트 보조제</span></a></li>
								<li><a href="#"><span>콜라겐</span></a></li>
								<li><a href="#"><span>과일·건강즙</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_19.png"></i>
								<span class="menu">수산·해산</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>생선구이</span></a></li>
								<li><a href="#"><span>연어·참치</span></a></li>
								<li><a href="#"><span>오징어</span></a></li>
								<li><a href="#"><span>어묵·맛살</span></a></li>
								<li><a href="#"><span>스테이크</span></a></li>
								<li><a href="#"><span>다시마·해조류</span></a></li>
								<li><a href="#"><span>황태포·쥐포</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_20.png"></i>
								<span class="menu">소스·오일</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>소스·드레싱</span></a></li>
								<li><a href="#"><span>과일청</span></a></li>
								<li><a href="#"><span>잼·스프레드</span></a></li>
								<li><a href="#"><span>오일</span></a></li>
								<li><a href="#"><span>분말·시즈닝</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_21.png"></i>
								<span class="menu">식단·패키지</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>식단</span></a></li>
								<li><a href="#"><span>맛보기·패키지</span></a></li>
								<li><a href="#"><span>선물세트</span></a></li>
								<li><a href="#"><span>골라담기</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_22.png"></i>
								<span class="menu">운동·생활용품</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>스트랩·장갑</span></a></li>
								<li><a href="#"><span>보호대·밴드</span></a></li>
								<li><a href="#"><span>보틀·쉐이커</span></a></li>
								<li><a href="#"><span>홈트레이닝</span></a></li>
								<li><a href="#"><span>스포츠웨어</span></a></li>
								<li><a href="#"><span>굿즈</span></a></li>
								<li><a href="#"><span>홈·리빙용품</span></a></li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="../ProjectImages/Category/cate_23.png"></i>
								<span class="menu">베이비·키즈</span>
							</a>
							<ul class="cate-depth2" style="max-height: 930px; display:block;">
								<li><a href="#"><span>전체</span></a></li>
								<li><a href="#"><span>간식</span></a></li>
								<li><a href="#"><span>한끼 밥·반찬</span></a></li>
								<li><a href="#"><span>음료·유제품</span></a></li>
								<li><a href="#"><span>닭고기</span></a></li>
								<li><a href="#"><span>정육·가공육</span></a></li>
								<li><a href="#"><span>간편식</span></a></li>
								<li><a href="#"><span>신선식품</span></a></li>
								<li><a href="#"><span>건강식품</span></a></li>
								<li><a href="#"><span>생활용품</span></a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
			<nav id="gnb" class="gnb">
				<ul>
					<li><a href="/display/rank/sale"><span>랭킹</span></a></li>
					<li><a href="../special.jsp"><span>이달의 특가</span></a></li>
					<li><a href="/display/benefits/view"><span>혜택정리</span></a></li>
					<li><a href="../one_pack.jsp"><span>1팩 담기</span></a></li>
					<li><a href="/display/brand/list"><span>브랜드관</span></a></li>
					<li><a href="/promotion/event/list"><span>이벤트</span></a></li>
					<li><a href="/display/expressDelivery/list"><em class="ico-txt-gnb"><span class="blind">특급배송</span></em></a></li>
				</ul>
			</nav>
		</div>
	</div>
	<style>
.middle-inner {
	padding-bottom: 100px;
	position: relative;
	min-height: 700px;
}

.swiper {
	width: 1920px;
	height: 500px;
}

.swiper-wraper .swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.swiper-slide img {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.slide-bottom {
	position: absolute;
	width: 100%;
	bottom: 20px;
	z-index: 4;
}

.slide-bottom  .slide-inner {
	position: relative;
	width: 1100px;
	margin: 0 auto;
	text-align: right;
}

.slide-bottom .slide-btns {
	position: relative;
	display: inline-block;
	padding: 0 57px 0 32px;
	height: 38px;
	background: rgba(0, 0, 0, .3);
	border-radius: 60px;
}

.slide-btns .swiper-pagination {
	position: relative;
	width: auto;
	color: #fff;
	font-weight: 400;
	bottom: auto;
	left: auto;
	line-height: 38px;
}
/* .slide-btns .swiper-pagination-current {
			font-weight: 700;
			display: inline-block;
			min-width: 17px;
		}
		.slide-btns .swiper-pagination-total {
			display: inline-block;
			min-width: 17px;
		}  */
button, [type="button"] {
	appearance: none;
	cursor: pointer;
	border: 0;
	padding: 0;
}

button:focus, button:active {
	padding: 0;
}

.slide-btns [class^="swiper-button-"] {
	width: 19px;
	height: 38px;
	background: url(../ProjectImages/Category/ico_slide_ctrl.png);
}

.swiper-button-next {
	position: absolute;
	right: 10px;
	left: auto;
	cursor: pointer;
	z-index: 10;
}

.swiper-button-prev {
	position: absolute;
	right: auto;
	left: 10px;
	cursor: pointer;
	z-index: 10;
}

.slide-btns .swiper-button-next {
	top: 0;
	right: 34px;
	margin: 0;
	background-position: -30px 0;
}

.slide-btns .swiper-button-prev {
	top: 0;
	right: 10px;
	margin: 0;
	background-position: 0 0;
}

.slide-btns .swiper-button-ctrl {
	position: absolute;
	top: 0;
	right: 11px;
	background-position: -60px 0;
}

.slide-btns .swiper-button-ctrl.play {
	background-position: -90px 0;
}

.swiper-button-next::after, .swiper-button-prev::after {
	display: none;
}

.MdPick-area {
	position: relative;
	width: 1100px;
	/* height: 1140px; */
	min-height: 550px;
	margin: 0 auto;
	margin-top: 80px
}

.MdPick-area>h2 {
	text-align: center;
	margin-bottom: 30px;
	font-size: 28px;
	font-weight: 700;
}

.column-list {
	width: 330px;
	height: 228px;
	float: left;
	margin-right: 55px;
	margin-bottom: 30px;
}

.MdPick-area>div  .column-list:nth-child(3n+0) {
	margin-right: 0;
}

.column-list>img {
	display: block;
}

.column-list>div.desc {
	font-size: 15px;
	font-weight: 400;
	color: #808080;
	margin-top: 5px;
}

.btn-bottom-area-to-show {
	margin-top: -35px;
	position: relative;
	text-align: center;
}

.btn-bottom-area-to-hide {
	margin-top: -35px;
	position: relative;
	text-align: center;
}

.btn-article-md {
	border: 1px solid #ccc;
	width: 300px;
	padding: 12px 0;
	background : #fff;
}

.cloumn-list>img {
	max-width: 330px;
}

.column-list .tit {
	display: block;
	font-size: 17px;
	font-weight: 700;
	margin-top: 12px;
}

.time-area {
	padding: 0 0 10px 0;
	margin-top: 110px;
	height: 320px;
}

.timesale-frame {
	padding: 0 0 10px 0;
	margin-top: 110px;
}

.time-area {
	/* padding: 0 0 10px 0;
			margin-top: 110px; */
	position: relative;
	max-width: 1100px;
}

.time-tit {
	padding-top: 64px;
	float: left;
}

.time-tit>h2 {
	text-align: left;
	font-size: 28px;
	font-weight: 700;
	margin-bottom: 30px;
}

h2>span {
	display: block;
}

h2>span:first-child {
	padding-left: 34px;
	background: url(../ProjectImages/ico_timesale.png) no-repeat 0 0/30px;
}

p {
	font-size: 16px;
	color: #666;
}

.time-area .time-sales-title-area {
	padding-top: 64px;
	float: left;
}

.time-sales-title-area>h2 {
	text-align: left;
}

.time-main-tit {
	margin-bottom: 30px;
}

.time-sales-title-area>h2>span:first-child {
	padding-left: 34px;
	background: url(../ProjectImages/ico_timesale.png) no-repeat 0 0/30px;
}

.time-sales-title-area>h2>span {
	display: block;
	font-weight: 700;
}

.time-sales-title-area>p {
	font-size: 16px;
	color: #666;
}

.time-sales-content-area {
	width: 720px;
	float: right;
	position: relative;
	top: -30px;
	/* left: -33px; */
}

.swiper-container {
	margin: 0 auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}

.sales-slide .swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	box-sizing: content-box;
	transition-property: transform, -webkit-transform;
	transform: translate3d(-1187px, 0px, 0px) !important;
}

.prd-item, .prd-item .desc-bottom {
	position: relative;
}

.time-sales-content-area .img {
	width: 340px;
	height: 178px;
	border-radius: 4px 4px 0 0;
}

[class*="slide-set-cloum"] .prd-item .img>img {
	width: 100%;
}

.time-sales-content-area .timer {
	height: 36px;
	line-height: 36px;
	border-radius: 0 0 4px 4px;
	margin: 0;
	background: #f79960;
	text-align: center;
	color: #fff;
}

.timer {
	position: relative;
}

.slide-set-colum2 .timer>span {
	display: inline-block;
	vertical-align: top;
}

.timer .num-box {
	min-width: 23px;
	height: auto;
	padding: 0;
	border: 0;
	font-size: 17px;
	color: #fff;
}

.timer .num-box.day {
	padding-left: 26px;
	margin-right: -2px;
	background: url(../ProjectImages/ico_timesale_1.png) no-repeat 0 50%;
}

.timer .day-txt {
	font-size: 16px;
}

.timer .txt {
	font-size: 17px;
	font-weight: 700;
	line-height: 39px;
	color: #fff;
}

.timer .num-box.hour {
	margin-left: 4px;
}

.timer .num-box {
	min-width: 23px;
	height: auto;
	padding: 0;
	border: 0;
	font-size: 17px;
	color: #fff;
}

.timer .t-expiry {
	font-weight: 500;
	font-size: 15px;
}

.hide {
	display: none !important;
}

.timer ~ .desc-bottom {
	margin-top: 10px;
}

.prd-item .top {
	display: table;
	width: 100%;
	min-height: 20px;
	border-collapse: collapse;
}

.imgbadge-dlv-exp {
	display: inline-block;
	width: 64px;
	height: 20px;
	background: url(../ProjectImages/Popular/txt_badge_dlv.png) no-repeat 0
		0;
	float: left;
}

.prd-item .rating-simply {
	display: table-cell;
	vertical-align: middle;
	text-align: right;
}

.rating-simply {
	font-size: 0;
	position: relative;
}

.rating-simply:before {
	content: "";
	display: inline-block;
	width: 12px;
	height: 12px;
	background: url(../ProjectImages/Popular/ico_bullet.png) no-repeat -90px
		-160px;
	position: relative;
	margin: 1px 2px 0 0;
	vertical-align: top;
}

.rating-simply .score {
	font-size: 13px;
	font-weight: 500;
}

.rating-simply .total-num {
	font-size: 13px;
	color: #999;
	padding-left: 2px;
}

.time-sales-content-area .desc-bottom .tit {
	margin: 6px 0 8px;
}

[class*="slide-set-colum"] .prd-item .tit {
	font-size: 16px;
	/* margin: 2px 0 0 0; */
}

.prd-item .tit {
	display: block;
	font-size: 15px;
	line-height: 22px;
	margin: 8px 0 6px;
}

.desc-bottom .tit a {
	height: 44px;
	line-height: 22px;
	min-height: auto;
}

.prd-item .tit a {
	word-break: break-all;
	margin: 6px 0 8px;
}

.prd-item .sale {
	font-size: 13px;
	color: #FF3600;
	padding: 0 4px 0 0;
}

strong {
	font-style: normal;
}

[class*="slide-set-colum"] .prd-item .sale strong {
	font-size: 20px;
}

.prd-item .sale strong {
	font-size: 18px;
	font-weight: bold;
}

.prd-item .price {
	font-size: 13px;
	line-height: 1.2;
	vertical-align: top;
}

[class*="slide-set-colum"] .prd-item .price>.num {
	font-size: 20px;
}

.prd-item .price>.num {
	font-size: 18px;
	font-weight: 700;
}

.prd-item .origin {
	font-size: 13px;
	color: #999;
	text-decoration: line-through;
	padding: 2px 0 0 0;
}

[class*="slide-set-colum"] .prd-item .origin span {
	font-size: 15px;
	padding: 6px 0 0 4px;
	color: #bbb;
}

.desc-bottom .remains-num {
	margin-top: 6px;
	float: right;
	font-size: 13px;
}

.time-sales-content-area .swiper-button-prev, .time-sales-content-area .swiper-button-next
	{
	width: 40px;
	height: 40px;
	border: 1px solid #ccc;
	border-radius: 50%;
	margin-top: -89px;
	top: 50%;
	background: rgba(255, 255, 255, 0.7);
	position: absolute;
	z-index: 5;
	cursor: pointer;
}

.time-sales-content-area .swiper-button-prev {
	left: -20px;
}

.time-sales-content-area .swiper-button-next {
	right: -20px;
}

.time-sales-content-area .swiper-button-prev>.ico-arr-left,
	.swiper-button-next>.ico-arr-right {
	width: 15px;
	height: 15px;
	margin-top: 2px;
}

.time-sales-content-area .swiper-button-prev>i {
	margin-left: 0;
	/* transform: translate(68%, 68%); */
}

[class*="ico-arr-"] {
	position: relative;
	display: inline-block;
	-webkit-transition: .2s;
}

[class*="ico-arr-"]:after, [class*="ico-arr-"]:before {
	position: absolute;
	display: block;
	content: '';
	background: #000;
	box-shadow: insert 0 0 0 32px
}

.ico-arr-left:before {
	top: 0;
	left: 50%;
	width: 1px;
	height: 59.45%;
	transform: rotate(-135deg);
}

.ico-arr-left:after {
	bottom: 0;
	left: 50%;
	width: 1px;
	height: 59.45%;
	transform: rotate(135deg);
}

.ico-arr-right:before {
	top: 0;
	left: 50%;
	width: 1px;
	height: 59.45%;
	transform: rotate(135deg);
}

.ico-arr-right:after {
	bottom: 0;
	left: 50%;
	width: 1px;
	height: 59.45%;
	transform: rotate(-135deg);
}

.time-sales-content-area .swiper-button-next.swiper-button-disabled,
	.time-sales-content-area .swiper-button-prev.swiper-button-disabled {
	opacity: .35;
	cursor: auto;
}

time-sales-wrap:after {
	display: block;
	clear: both;
	content: '';
}

.theme_frame {
	position: relative;
	width: 1100px;
	margin: 0 auto;
}

.theme_frame>.theme_title {
	text-align: center;
	margin-bottom: 30px;
}

.theme_title {
	font-size: 28px;
	font-weight: 700;
}

.div_recomm {
	width: 100%; /* 1100px; */
	height: 436px;
	border-radius: 8px;
}

.div_recomm_left {
	position: relative;
	width: 670px;
	height: 100%;
}

.div_recomm_right {
	border-top: 1px solid #e6e6e6;
	border-top-right-radius: 8px;
	border-right: 1px solid #e6e6e6;
	position: relative;
	width: 430px;
	height: 100%;
	box-sizing: border-box;
	padding-top: 5px;
}

.div_recomm_left>img {
	width: 670px;
	height: 420px;
}

.recomm_mix {
	height: 72px;
	width: 1042px;
	margin: 0 auto;
}

.recomm_mix>.btn_recomm_cat {
	display: inline-block;
	height: 42px;
	line-height: 40px;
	border: 1px solid #e6e6e6;
	border-radius: 21px;
	padding: 0 22px;
	/* white-space: nowrap; */
	color: #666;
	font-size: 15px;
	margin-bottom: 10px;
	background: white;
}

.recomm_mix>.btn_recomm_cat:not(:nth-child(5)) {
	margin-right: 25px;
}

.recomm_mix>.btn_recomm_cat.on {
	background: #ff6001;
	color: #fff;
}

.div_recomm_left>img {
	border-top-left-radius: 8px;
	border-bottom-left-radius: 8px;
}

.div_recomm_left>div {
	padding: 22px 20px 20px;
	background: rgba(255, 255, 255, .8);
	border-radius: 5px;
	position: absolute;
	right: 18px;
	bottom: 35px;
	width: 368px;
}

.div_recomm_left>div>span.title {
	font-size: 19px;
	font-weight: bold;
	display: block;
	letter-spacing: -0.2px;
}

.div_recomm_left>div>p {
	margin-top: 6px;
	color: #666;
	line-height: 20px;
	letter-spacing: -0.2px;
	font-size: 14px;
}

.div_recomm_right .prod_name {
	display: block;
	width: 232px;
	padding-bottom: 10px;
	font-size: 14px;
	font-weight: normal;
	font-style: normal;
	line-height: 20px;
	color: #222;
	max-height: 40px;
	word-break: keep-all;
}

.div_recomm_right .prod_price {
	font-size: 15px;
	font-style: normal;
	font-weight: bold;
}

.div_recomm_right label>img {
	width: 80px;
	height: 80px;
	margin-left: 10px;
	margin-right: 15px;
	border-radius: 3px;
}

.div_recomm_right input[type='checkbox'] {
	vertical-align: top;
	margin-top: 35px;
	accent-color: #ff6001;
	width: 18px;
	height: 18px;
}
.div_recomm_right>.goods_item {
	width: 100%;
	padding: 7px 20px 0 24px;
}

.div_recomm_right>.goods_item:first-child {
	margin-top: 13px;
	padding-top: 0;
}

.div_recomm_right>.goods_item:nth-child(4) {
	margin-bottom: 16px;
}

.div_basket {
	width: 100%;
	height: 44px;
}

.btn_basket {
	width: 100%;
	height: 100%;
	background: #333;
	color: #fff;
	border: 1px solid #333;
	border-bottom-right-radius: 8px;
}

.fl {
	float: left;
}

.fr {
	float: right;
}

.delivery_special {
	background: url(../Images/delivery.png) 0 0;
	width: 64px;
	height: 20px;
	position: relative;
	display: inline-block;
}

.rating_simple {
	display: inline-block;
	vertical-align: middle;
	text-align: right;
	float: right;
}

.rating_simple:before {
	content: "";
	display: inline-block;
	width: 12px;
	height: 12px;
	background: url(../Images/ico_bullet.png) no-repeat -90px -160px;
	position: relative;
	margin: 1px 2px 0 0;
	vertical-align: top;
}

.score {
	font-size: 13px;
	font-weight: 500;
}

.total_num {
	font-size: 13px;
	color: #999;
	padding-left: 2px;
}

.cate_text {
	height: 44px;
	max-height: 44px;
}

.cate_price {
	font-size: 13px;
	line-height: 1.2;
	vertical-align: top;
}

.cate_price2 {
	font-size: 13px;
	line-height: 1.2;
	vertical-align: top;
}
</style>
		<div class="swiper-container first" id="mySwiper1">
			<div class="swiper-wrapper">
        		<div class="swiper-slide"><img src="../ProjectImages/swiper_1.png"/></div>
			    <div class="swiper-slide"><img src="../ProjectImages/swiper_2.png"/></div>
			    <div class="swiper-slide"><img src="../ProjectImages/swiper_3.png"/></div>
			    <div class="swiper-slide"><img src="../ProjectImages/swiper_4.png"/></div>
			    <div class="swiper-slide"><img src="../ProjectImages/swiper_5.png"/></div>
			    <div class="swiper-slide"><img src="../ProjectImages/swiper_6.png"/></div>
			    <div class="swiper-slide"><img src="../ProjectImages/swiper_7.png"/></div>
			    <div class="swiper-slide"><img src="../ProjectImages/swiper_8.png"/></div>
			</div>
      <!-- <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div> -->
			<div class="slide-bottom">
				<div class="slide-inner">
					<div class="slide-btns">
						<div class="swiper-pagination"></div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<button type="button" class="swiper-button-ctrl pause"></button>
					</div>
				</div>
			</div>
		</div>
		
		
	<div class="body-inner">
		<div class="MdPick-area">
			<h2 class="main-title" style="font-size:28px; font-weight: 700; text-align: center; margin-bottom: 30px;">MD`s 추천 상품</h2>
			<div>
				<div class="column-list">
					<img src="../ProjectImages/md1.png"/>
					<strong class="tit">깊은 풍미의 소스로 더 맛있는</strong>
					<div class="desc">소스 닭가슴살</div>
					<a href="https://www.rankingdak.com/product/view?productCd=28459"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md2.png" />
					<strong class="tit">균형잡힌 영양소로 든든한식단</strong> 
					<div class="desc">새로워진 다이어트 도시락</div>
					<a href="https://www.rankingdak.com/product/view?productCd=23815"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md3.png" />
					<strong class="tit">식단 고민을 해결해줄 솔루션</strong>
					<div class="desc">6월 한정 MD 패키지</div>
					<a href="https://www.rankingdak.com/product/view?productCd=F000000345"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md4.png" />
					<strong class="tit">구매 후기로 증명하는 믿먹템</strong>
					<div class="desc">닭가슴살 소시지</div>
					<a href="https://www.rankingdak.com/product/view?productCd=11879"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md5.png" />
					<strong class="tit">산지의 신선함을 그대로!</strong>
					<div class="desc">간편한 이지 샐러드</div>
					<a href="https://www.rankingdak.com/product/view?productCd=18602"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md6.png" />
					<strong class="tit">완벽한 칼로리 조절 플랜</strong>
					<div class="desc">2주 식단 패키지</div>
					<a href="https://www.rankingdak.com/product/view?productCd=11924"></a>
				</div>
			</div>			
			<div style="display:none;">
				<div class="column-list">
					<img src="../ProjectImages/md7.png" />
					<strong class="tit">나트륨은 줄이고 단백질은 가~득</strong>
					<div class="desc">저염 스팀 닭가슴살</div>
					<a href="https://www.rankingdak.com/product/view?productCd=25414"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md8.png" />
					<strong class="tit">저당으로 부담없이 즐기는</strong>
					<div class="desc">현미 톡톡 볶음밥</div>
					<a href="https://www.rankingdak.com/product/view?productCd=F000000134"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md9.png" />
					<strong class="tit">타우린+아르기닌+BCAA를 한 번에!</strong>
					<div class="desc">에너지 드링크</div>
					<a href="https://www.rankingdak.com/product/view?productCd=24920"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md10.png" />
					<strong class="tit">쫄깃한 연육과 부드러운 두부의 조화</strong>
					<div class="desc">고단백 어부닭바</div>
					<a href="https://www.rankingdak.com/product/view?productCd=F000000244"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md11.png" />
					<strong class="tit">1포로 완성하는 편안한 하루</strong>
					<div class="desc">편안한 효소</div>
					<a href="https://www.rankingdak.com/product/view?productCd=25310"></a>
				</div>
				<div class="column-list">
					<img src="../ProjectImages/md12.png" />
					<strong class="tit">언제 어디서나 간편하게</strong>
					<div class="desc">4242 프로틴 쉐이크</div>
					<a href="https://www.rankingdak.com/product/view?productCd=17656"></a>
				</div>
				<div class="btn-bottom-area-to-hide"><input type="button" class="btn-article-md ui-more-btn on" value ="닫기"/></div>
			</div>
				<div class="btn-bottom-area-to-show"><input type="button" class="btn-article-md ui-more-btn on" value = "더보기"/></div>
		</div>
		
		<div class="time-area">
			<div class="time-sales-title-area">
				<h2 class="time-main-tit">
					<span>지금 이순간</span>
					<span>깜짝 타임세일!</span>
				</h2><p>오늘이 가면 없을 기회, 놓치지마세요.</p>
			</div>
			<div class="time-sales-content-area">
				<div class="sales-slide slide-set-colum2  swiper-container second">
					<ul class="swiper-wrapper prd-item-list slide-set-colum2">	
						<li class="swiper-slide swiper-slide-active" style="width: 340px; margin-right: 40px;">
							<div class="prd-item">
								<div class="img"><img src="../ProjectImages/Time/time_1.png"/></div>
								<div class="timer time-desc"  data-v-timesale-nm="☎TIME SALE☎  맛있닭 소스 닭가슴살 스테이크 10+2">
									<span class="num-box day"><!-- 0 --></span>
									<span class="txt day-txt">일</span>
									<span class="num-box hour"><!-- 11 --></span>
									<span class="txt">:</span>
									<span class="num-box min"><!-- 27 --></span>
									<span class="txt">:</span>
									<span class="num-box sec"><!-- 05 --></span>
									<span class="t-expiry hide">타임세일 기간 만료</span>
								</div>
								<!-- <script>timeSaleTimerTimer();</script> -->
								<div class="desc-bottom">
									<div class="top">
										<em class="imgbadge-dlv-exp"></em>
										<div class="rating-simply">
											<span class="star"></span>
											<span class="score">4.9</span>
											<span class="total-num">(437)</span>
										</div>									
									</div>
									<p class="tit"><a href="" class="text-elps2">☎TIME SALE☎  1am 알뜰 누들 컵 6+6</a></p>
								<span class="sale"><strong>65</strong>%</span>
								<span class="price"><strong class="num">9,000</strong>원</span>
								<span class="origin"><span>25,320</span>원</span>
								<span class="remains-num"></span>
								</div>
							</div>
							<div></div>
							<div></div>
						</li>
						<li class="swiper-slide swiper-slide-active" style="width: 340px; margin-right: 40px;">
							<div class="prd-item">
								<div class="img"><img src="../ProjectImages/Time/time_2.png"/></div>
								<div class="timer time-desc"  data-v-timesale-nm="☎TIME SALE☎  맛있닭 소스 닭가슴살 스테이크 10+2">
									<span class="num-box day"><!-- 0 --></span>
									<span class="txt day-txt">일</span>
									<span class="num-box hour"><!-- 11 --></span>
									<span class="txt">:</span>
									<span class="num-box min"><!-- 27 --></span>
									<span class="txt">:</span>
									<span class="num-box sec"><!-- 05 --></span>
									<span class="t-expiry hide">타임세일 기간 만료</span>
								</div>
								<!-- <script>timeSaleTimerTimer();</script> -->
								<div class="desc-bottom">
									<div class="top">
										<em class="imgbadge-dlv-exp"></em>
										<div class="rating-simply">
											<span class="star"></span>
											<span class="score">4.9</span>
											<span class="total-num">(437)</span>
										</div>									
									</div>
									<p class="tit"><a href="" class="text-elps2">☎TIME SALE☎  1am 알뜰 누들 컵 6+6</a></p>
								<span class="sale"><strong>65</strong>%</span>
								<span class="price"><strong class="num">9,000</strong>원</span>
								<span class="origin"><span>25,320</span>원</span>
								<span class="remains-num"></span>
								</div>
							</div>
						</li>
						<li class="swiper-slide swiper-slide-active" style="width: 340px; margin-right: 40px;">
							<div class="prd-item">
								<div class="img"><img src="../ProjectImages/Time/time_3.png"/></div>
								<div class="timer time-desc"  data-v-timesale-nm="☎TIME SALE☎  맛있닭 소스 닭가슴살 스테이크 10+2">
									<span class="num-box day"><!-- 0 --></span>
									<span class="txt day-txt">일</span>
									<span class="num-box hour"><!-- 11 --></span>
									<span class="txt">:</span>
									<span class="num-box min"><!-- 27 --></span>
									<span class="txt">:</span>
									<span class="num-box sec"><!-- 05 --></span>
									<span class="t-expiry hide">타임세일 기간 만료</span>
								</div>
								<!-- <script>timeSaleTimerTimer();</script> -->
								<div class="desc-bottom">
									<div class="top">
										<em class="imgbadge-dlv-exp"></em>
										<div class="rating-simply">
											<span class="star"></span>
											<span class="score">4.9</span>
											<span class="total-num">(437)</span>
										</div>									
									</div>
									<p class="tit"><a href="" class="text-elps2">☎TIME SALE☎  1am 알뜰 누들 컵 6+6</a></p>
								<span class="sale"><strong>65</strong>%</span>
								<span class="price"><strong class="num">9,000</strong>원</span>
								<span class="origin"><span>25,320</span>원</span>
								<span class="remains-num"></span>
								</div>
							</div>
						</li>
						<li class="swiper-slide swiper-slide-active" style="width: 340px; margin-right: 40px;">
							<div class="prd-item">
								<div class="img"><img src="../ProjectImages/Time/time_4.png"/></div>
								<div class="timer time-desc"  data-v-timesale-nm="☎TIME SALE☎  맛있닭 소스 닭가슴살 스테이크 10+2">
									<span class="num-box day"><!-- 0 --></span>
									<span class="txt day-txt">일</span>
									<span class="num-box hour"><!-- 11 --></span>
									<span class="txt">:</span>
									<span class="num-box min"><!-- 27 --></span>
									<span class="txt">:</span>
									<span class="num-box sec"><!-- 05 --></span>
									<span class="t-expiry hide">타임세일 기간 만료</span>
								</div>
								<!-- <script>timeSaleTimerTimer();</script> -->
								<div class="desc-bottom">
									<div class="top">
										<em class="imgbadge-dlv-exp"></em>
										<div class="rating-simply">
											<span class="star"></span>
											<span class="score">4.9</span>
											<span class="total-num">(437)</span>
										</div>									
									</div>
									<p class="tit"><a href="" class="text-elps2">☎TIME SALE☎  1am 알뜰 누들 컵 6+6</a></p>
								<span class="sale"><strong>65</strong>%</span>
								<span class="price"><strong class="num">9,000</strong>원</span>
								<span class="origin"><span>25,320</span>원</span>
								<span class="remains-num"></span>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false true">
					<i class="ico-arr-left"></i>
				</div>
				<div class="swiper-button-next swiper-button-disabled" tabindex="0" role="button"  aria-label="Next slide" aria-disabled="false true">
					<i class="ico-arr-right"></i>
				</div>
			</div>
		</div>
		<script>
			$(this).ready(function(){
				$("#recomm1").css("display","block");
				$("#recomm2").css("display","none");
				$("#recomm3").css("display","none");
				$("#recomm4").css("display","none");
				$("#recomm5").css("display","none");
			});
			$(function(){
				$("#btn1").click(function(){
					$(this).addClass("on");
					$("#btn2").removeClass("on");
					$("#btn3").removeClass("on");
					$("#btn4").removeClass("on");
					$("#btn5").removeClass("on");
					
					$("#recomm1").show();
					$("#recomm2").hide();
					$("#recomm3").hide();
					$("#recomm4").hide();
					$("#recomm5").hide();
				});
				$("#btn2").click(function(){
					$(this).addClass("on");
					$("#btn1").removeClass("on");
					$("#btn3").removeClass("on");
					$("#btn4").removeClass("on");
					$("#btn5").removeClass("on");
					
					$("#recomm2").show();
					$("#recomm1").hide();
					$("#recomm3").hide();
					$("#recomm4").hide();
					$("#recomm5").hide();
				});
				$("#btn3").click(function(){
					$(this).addClass("on");
					$("#btn1").removeClass("on");
					$("#btn2").removeClass("on");
					$("#btn4").removeClass("on");
					$("#btn5").removeClass("on");
					
					$("#recomm3").show();
					$("#recomm1").hide();
					$("#recomm2").hide();
					$("#recomm4").hide();
					$("#recomm5").hide();
				});
				$("#btn4").click(function(){
					$(this).addClass("on");
					$("#btn1").removeClass("on");
					$("#btn2").removeClass("on");
					$("#btn3").removeClass("on");
					$("#btn5").removeClass("on");
					
					$("#recomm4").show();
					$("#recomm1").hide();
					$("#recomm2").hide();
					$("#recomm3").hide();
					$("#recomm5").hide();
				});
				$("#btn5").click(function(){
					$(this).addClass("on");
					$("#btn1").removeClass("on");
					$("#btn2").removeClass("on");
					$("#btn3").removeClass("on");
					$("#btn4").removeClass("on");
					
					$("#recomm5").show();
					$("#recomm1").hide();
					$("#recomm2").hide();
					$("#recomm3").hide();
					$("#recomm4").hide();
				});
				
			});
		</script>
		<div class="theme_frame">
			<h2 class="theme_title">테마별 추천 상품</h2>
			<div class="recomm_mix">
				<button class="btn_recomm_cat on" id="btn1">고단백 집중관리 시작</button>	
				<button class="btn_recomm_cat" id="btn2">신선함 가득 하루♧</button>
				<button class="btn_recomm_cat" id="btn3">균형잡힌 다이어트 식단</button>
				<button class="btn_recomm_cat" id="btn4">피크닉 메뉴로 안성맞춤</button>
				<button class="btn_recomm_cat" id="btn5">수분 충전이 필요한 순간!</button>
			</div>
			<div class="div_recomm" id="recomm1">
				<div class="div_recomm_left fl">
						<img src="../ProjectImages/Recomm/rec_1.png"/>
						<div>
							<span class="title">단백질 25g 보장!</span>
							<p>
								집중 관리가 필요할 때<br/>
								든든하게 챙겨요.
							</p>
						</div>
				</div>
				<div class="div_recomm_right fr">
					<div class="goods_item">
						<div class="fl">
							<input type="checkbox" id="prod_1_1" />
							<label for="prod_1_1">
								<img src="../ProjectImages/Recomm/rec_1_1.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 오븐 구이 갈릭 150g X 10팩</span>
							<strong class="prod_price">24,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type="checkbox" id="prod_1_2" />
							<label for="prod_1_2">
								<img src="../ProjectImages/Recomm/rec_1_2.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">잇메이트 저염 훈제 닭가슴살 100g X 15팩</span>
							<strong class="prod_price">19,800</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_3" />
							<label for="prod_1_3">
								<img src="../ProjectImages/Recomm/rec_1_3.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 큐브 마늘맛 100g X 10팩</span>
							<strong class="prod_price">17,400</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_4" />
							<label for="prod_1_4">
								<img src="../ProjectImages/Recomm/rec_1_4.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 스팀 닭가슴살 고추맛 100g X 10팩</span>
							<strong class="prod_price">16,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_basket">
						<button class="btn_basket">장바구니 담기</button>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="div_recomm" id="recomm2">
				<div class="div_recomm_left fl">
						<img src="../ProjectImages/Recomm/rec_2.png"/>
						<div>
							<span class="title">이경민 25g 보장!</span>
							<p>
								집중 관리가 필요할 때<br/>
								든든하게 챙겨요.
							</p>
						</div>
				</div>
				<div class="div_recomm_right fr">
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_1" />
							<label for="prod_1_1">
								<img src="../ProjectImages/Recomm/rec_2_1.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 오븐 구이 갈릭 150g X 10팩</span>
							<strong class="prod_price">24,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_2" />
							<label for="prod_1_2">
								<img src="../ProjectImages/Recomm/rec_2_2.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">잇메이트 저염 훈제 닭가슴살 100g X 15팩</span>
							<strong class="prod_price">19,800</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_3" />
							<label for="prod_1_3">
								<img src="../ProjectImages/Recomm/rec_2_3.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 큐브 마늘맛 100g X 10팩</span>
							<strong class="prod_price">17,400</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_4" />
							<label for="prod_1_4">
								<img src="../ProjectImages/Recomm/rec_2_4.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 스팀 닭가슴살 고추맛 100g X 10팩</span>
							<strong class="prod_price">16,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_basket">
						<button class="btn_basket">장바구니 담기</button>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="div_recomm" id="recomm3">
				<div class="div_recomm_left fl">
						<img src="../ProjectImages/Recomm/rec_3.png"/>
						<div>
							<span class="title">정성진 25g 보장!</span>
							<p>
								집중 관리가 필요할 때<br/>
								든든하게 챙겨요.
							</p>
						</div>
				</div>
				<div class="div_recomm_right fr">
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_1" />
							<label for="prod_1_1">
								<img src="../ProjectImages/Recomm/rec_3_1.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 오븐 구이 갈릭 150g X 10팩</span>
							<strong class="prod_price">24,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_2" />
							<label for="prod_1_2">
								<img src="../ProjectImages/Recomm/rec_3_2.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">잇메이트 저염 훈제 닭가슴살 100g X 15팩</span>
							<strong class="prod_price">19,800</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_3" />
							<label for="prod_1_3">
								<img src="../ProjectImages/Recomm/rec_3_3.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 큐브 마늘맛 100g X 10팩</span>
							<strong class="prod_price">17,400</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_4" />
							<label for="prod_1_4">
								<img src="../ProjectImages/Recomm/rec_3_4.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 스팀 닭가슴살 고추맛 100g X 10팩</span>
							<strong class="prod_price">16,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_basket">
						<button class="btn_basket">장바구니 담기</button>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="div_recomm" id="recomm4">
				<div class="div_recomm_left fl">
						<img src="../ProjectImages/Recomm/rec_4.png"/>
						<div>
							<span class="title">단백질 25g 보장!</span>
							<p>
								집중 관리가 필요할 때<br/>
								든든하게 챙겨요.
							</p>
						</div>
				</div>
				<div class="div_recomm_right fr">
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_1" />
							<label for="prod_1_1">
								<img src="../ProjectImages/Recomm/rec_4_1.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 오븐 구이 갈릭 150g X 10팩</span>
							<strong class="prod_price">24,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_2" />
							<label for="prod_1_2">
								<img src="../ProjectImages/Recomm/rec_4_2.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">잇메이트 저염 훈제 닭가슴살 100g X 15팩</span>
							<strong class="prod_price">19,800</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_3" />
							<label for="prod_1_3">
								<img src="../ProjectImages/Recomm/rec_4_3.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 큐브 마늘맛 100g X 10팩</span>
							<strong class="prod_price">17,400</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_4" />
							<label for="prod_1_4">
								<img src="../ProjectImages/Recomm/rec_4_4.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 스팀 닭가슴살 고추맛 100g X 10팩</span>
							<strong class="prod_price">16,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_basket">
						<button class="btn_basket">장바구니 담기</button>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="div_recomm" id="recomm5">
				<div class="div_recomm_left fl">
						<img src="../ProjectImages/Recomm/rec_5.png"/>
						<div>
							<span class="title">단백질 25g 보장!</span>
							<p>
								집중 관리가 필요할 때<br/>
								든든하게 챙겨요.
							</p>
						</div>
				</div>
				<div class="div_recomm_right fr">
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_1" />
							<label for="prod_1_1">
								<img src="../ProjectImages/Recomm/rec_5_1.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 오븐 구이 갈릭 150g X 10팩</span>
							<strong class="prod_price">24,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_2" />
							<label for="prod_1_2">
								<img src="../ProjectImages/Recomm/rec_5_2.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">잇메이트 저염 훈제 닭가슴살 100g X 15팩</span>
							<strong class="prod_price">19,800</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_3" />
							<label for="prod_1_3">
								<img src="../ProjectImages/Recomm/rec_5_3.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 닭가슴살 큐브 마늘맛 100g X 10팩</span>
							<strong class="prod_price">17,400</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="goods_item">
						<div class="fl">
							<input type = "checkbox" id="prod_1_4" />
							<label for="prod_1_4">
								<img src="../ProjectImages/Recomm/rec_5_4.png" />
							</label>
						</div>
						<div class="fl">
							<span class="prod_name">맛있닭 스팀 닭가슴살 고추맛 100g X 10팩</span>
							<strong class="prod_price">16,900</strong>원
						</div>
						<div style="clear:both;"></div>
					</div>
					<div class="div_basket">
						<button class="btn_basket">장바구니 담기</button>
					</div>
				</div>
			</div>
			<!--  -->
		</div>
		
		<style>
			.main_mid_bnr {
				margin-top: 80px;
				margin-bottom: 80px;
				position: relative;
				max-width: 1100px;
				margin-right: auto;
				margin-left: auto;		
			}
		</style>
		
		<div class="main_mid_bnr">
			<a href="">
				<img src="../ProjectImages/Bnr/mid-bnr.png" />
			</a>
		</div>
		<style>
.category-product {
	position: relative;
	max-width: 1100px;
	margin: 0 auto;
}

.category-tit {
	text-align: center;
	margin-bottom: 20px;
	font-size: 28px;
	font-weight: 700;
}

.category-mix {
	text-align: center;
	margin: 0 auto;
}

.category-tab.current {
	background-color: #374457;
	border: 0;
	font-weight: 700;
	color: #ffffff;
	border: 1px solid #374457;
}

.category-tab {
	display: inline-block;
	padding: 8px 18px;
	border: 1px solid #E6E6E6;
	border-radius: 100px;
	margin: 5px;
	font-weight: 400;
	color: #666666;
	font-size: 15px;
	line-height: 20px;
}

.tab-category-slide .tab-category-area {
	position: relative;
	width: 1100px;
	overflow: hidden;
	margin-top: 22px;
}

.div-cate.on {
	display: block;
}

.div-cate {
	display: none
}

.each_price {
	color: #7389AA;
	margin-top: 6px;
	font-weight: normal;
	font-size: 12px;
}

.bline_text {
	display : none;
}
</style>
		<div class="category-product">
			<h2 class="category-tit">카테고리 인기상품</h2>
			<div class="category-mix">
				<input type="button" type="button" class="category-tab current" id="b2" value ="즉석 간편식"/>
				<input type="button"  type="button" class="category-tab" id="b1" value ="닭가슴살"/>
				<input type="button" type="button" class="category-tab" id="b3" value ="도시락·볶음밥"/>
				<input type="button" class="category-tab" id="b4" value ="소고기"/>
				<input type="button" class="category-tab" id="b5" value="돼지·오리고기"/>
				<input type="button" class="category-tab" id="b6" value="닭안심살"/>
				<input type="button" class="category-tab" id="b7" value="샐러드·과일"/>
				<input type="button" class="category-tab" id="b8" value="베이커리·치즈"/>
				<input type="button" class="category-tab" id="b9" value ="과자·간식·떡"/>
				<input type="button" class="category-tab" id="b10" value = "음료·차·프로틴"/>
				<input type="button" class="category-tab" id="b11" value="비건식품"/>
				<input type="button" class="category-tab" id="b12"value="계란·난백·콩" />
				<input type="button" class="category-tab" id="b13"value="견과·고구마·감자" />
				<input type="button" class="category-tab" id="b14"value="반찬·밀키트·안주" />
				<input type="button" class="category-tab" id="b15"value="건강식품"/>
				<input type="button" class="category-tab" id="b16"value="수산·해산"/>
				<input type="button" class="category-tab" id="b17"value="소스·오일"/>
				<input type="button" class="category-tab" id="b18"value="식단·패키지"/>
				<input type="button" class="category-tab" id="b19"value="운동·생활용품" />
				<input type="button" class="category-tab" id="b20"value="베이비·키즈"/>
			</div>
			
			<%
				GoodsDao dao = new GoodsDao();
				ArrayList<GoodsDto> list = dao.selectGoods_instant();
			%>
			
			<div class='tab-category-slide'>
				<div class='tab-category-area'>
			<%
				out.println("<ul class = 'easy_food' style = 'margin: 0 -13px 0 -12px; padding-left : 0;'>");
			
			for(GoodsDto g : list){
						out.println("<li class = cate_li>");
							out.print("<div class = 'cate_item' >");
								out.print("<div class = 'cate_img'>");
									out.print("<a class ='just'>");
										out.print("<img src='../Images/즉석_간편식/"+ g.getImage()+"' style = 'width : 256px; height : 256px;'>");
										 out.print("<p class = 'bline_text'>"+ g.getIdx()+"</p>"); 
											out.print("<div class = 'justimg' style= 'display : none;'>");
												 out.print(g.getImage()); 
											out.print("</div>");
									out.print("</a>");
								out.print("</div>");
								out.print("<div class = 'cate_bottom'>");
									out.print("<div class = 'top'>");
										out.print("<em class='delivery_special'>");
										
										out.print("</em>");
										out.print("<div class = 'rating_simple'>");
											out.print("<span class = 'score'>");
												out.print( g.getReview());
											out.print("</span>");
											out.print("<span class ='total_num'>");
												out.print("(65,051)");
											out.print("</span>");
										out.print("</div>");
									out.print("</div>");
										out.print("<p class = 'cate_text'>");
											out.print(g.getName());
										out.print("</p>");
									out.print("<span class = 'cate_price'>");
										out.print("<em style ='font-style:normal; font-size : 18px; font-weight :700;'>"+ g.getNormal_price() +"</em>");
									out.print("</span><span class='cate_price2'>원</span>");
									out.print("<p class = 'each_price'>");
                                    	out.print( g.getEach());
									out.print("</p>");
								out.print("</div>");
							out.print("</div>");
						out.print("</li>");
						%>
						
						<%
							}
						%>
						
						<script>
								$(function(){
									$(".cate_img").click(function(){
										var name = $(this).parent().find(".cate_text").text();
										var review =$(this).parent().find(".score").text();
										var normal_price =$(this).parent().find(".cate_price").text();
										var each = $(this).parent().find(".each_price").text();
										var image = $(this).parent().find(".justimg").text();
										var idx = $(this).parent().find(".idx_1").text();
										/* var idx = $(this).parent().find(".bline_text").text(); */
										location.href="../detail_page.jsp?name="+name+"&image="+image+"&review="+review
												+"&each="+each+"&normal_price=" + normal_price + "&idx=" + idx ;
									});
								});	
							</script>
					</ul>
					
			<%
			
				GoodsDao dao_s = new GoodsDao();
				ArrayList<GoodsDto> list_s = dao_s.selectGoods_salad();
				
			%>
			
			<div class='tab-category-slide'>
				<div class='tab-category-area'>
			<%
				out.println("<ul class = 'salad' style = 'margin: 0 -13px 0 -12px; padding-left : 0;'>");
			
			for(GoodsDto s : list_s){
				
						out.println("<li class = cate_li>");
							out.print("<div class = 'cate_item' >");
								out.print("<div class = 'cate_img'>");
									out.print("<a class ='just'>");
										out.print("<img src='../Images/salad_fruit/"+ s.getImage()+"' style = 'width : 256px; height : 256px;'>");
										out.print("<p class = 'bline_text'>"+ s.getIdx()+"</p>");
											out.print("<div class = 'justimg' style= 'display : none;'>");
												out.print(s.getImage());
											out.print("</div>");
									out.print("</a>");
								out.print("</div>");
								out.print("<div class = 'cate_bottom'>");
									out.print("<div class = 'top'>");
										out.print("<em class='delivery_special'>");
										
										out.print("</em>");
										out.print("<div class = 'rating_simple'>");
											out.print("<span class = 'score'>");
												out.print( s.getReview());
											out.print("</span>");
											out.print("<span class ='total_num'>");
												out.print("(65,051)");
											out.print("</span>");
										out.print("</div>");
									out.print("</div>");
										out.print("<p class = 'cate_text'>");
											out.print(s.getName());
										out.print("</p>");
									out.print("<span class = 'cate_price'>");
										out.print("<em style ='font-style:normal; font-size : 18px; font-weight :700;'>"+ s.getNormal_price() +"</em>");
									out.print("</span><span class = 'cate_price2'>원</span>");
									out.print("<p class = 'each_price'>");
                                    	out.print( s.getEach());
									out.print("</p>");
									
								out.print("</div>");
							out.print("</div>");
						out.print("</li>");
						
						%>
							<%
							}
						%>
						
							<script>
								$(function(){
									$(".cate_img").click(function(){
										var name = $(this).parent().find(".cate_text").text();
										var review =$(this).parent().find(".score").text();
										var normal_price =$(this).parent().find(".cate_price").text();
										var each = $(this).parent().find(".each_price").text();
										var image = $(this).parent().find(".justimg").text();
										var idx = $(this).parent().find(".bline_text").text();
										location.href="../detail_page.jsp?name="+name+"&image="+image+"&review="+review
												+"&each="+each+"&normal_price=" + normal_price + "&idx=" + idx ;
									});
								});
							</script>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div>
		
		<script>
			$(this).ready(function(){
				$("#bottom").load("BottomFrame.html");
			});
		</script>
		<div id="bottom"></div>
	</div>
</body>
</html>