<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<title>Insert title here</title>
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
</script>
<style>
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
			background: url(ProjectImages/logo.gif);
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
		.top-search .input-search {
			width: 100%;
			height: 36px;
			border: 0;
			padding: 0;
			font-size: 15px;
			color: #555;
			text-align: left;
			background: transparent;
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
			background: url(ProjectImages/Main/ico_btns.png) 0 0;
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
			background: url(ProjectImages/ico_util.png) left 40px; 
		}
		.btn-util-mypage {
			display: inline-block;
			width: 24px;
			height: 38px;
			background: url(ProjectImages/ico_util.png) left 7px; 
		}
		.btn-util-cart {
			display: inline-block;
			margin-left: -6px;
			maegin-right: 11px;
			position: relative;
			width: 26px;
			height: 38px;
			background: url(ProjectImages/ico_util.png) 27px 8px; 
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
			background: url(ProjectImages/ico_gnb_all.png) 0 0;
			margin: -3px 10px 0 20px; 
		}
		.btn-menu-all.on:before {
			background: url(ProjectImages/ico_gnb_all.png) right top;
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
			background: url(ProjectImages/exe_delivery.png) center right no-repeat;
			background-size: cover;
			position: relative;
			top: 3px;
		} 
	</style>
</head>
<body>
<%
	String[]arr=new String[4];
	arr[0]= "★10주년 특가, 놓치면 끝!★";
	arr[1]= "가장 빠른 식단관리, 특급배송!";
	arr[2]= "랭킹닭컴의 모든 것, 다이어트 LAB ▶";
	arr[3]= "♡잇메이트 덮밥 2종 추가 오픈♡";
	int i =(int)(Math.random()*4);
%>
	<script>
		$(this).ready( function() {
			   $(".input-search").attr("placeholder","<%=arr[i] %>");
		});
	</script>
<div class="header-inner">

		<h1 class="logo"><a href="MainPage.jsp"></a></h1>
		<div class="util">
			<ul>
				<li><a href="login.jsp">로그인</a></li>
				<li class="list"><a href="Register.jsp">회원가입</a></li>
				<li class="list"><a href="#">주문조회</a></li>
				<li class="list"><a href="#">고객센터</a></li>
			</ul>		
		</div>
		<div class="header-search">
			<div class="top-search on">
				<input type="search" class="input-search" id="rankKeyword" name="rankKeyword" placeholder="" maxlength="100"  style=outline:none;/>
				<button type="button" class="btn-top-search"><span class="blind">검색</span></button>
			</div>
		</div>
		<div class="my-menu">
			<ul>
				<li><a href="#" class="btn-util-coupon"><span class="blind">쿠폰</span></a></li>
				<li><a href="Mypagemain.jsp" class="btn-util-mypage"><span class="blind">마이페이지</span></a></li>
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
							<a href="#"><i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_1.png"/></i>
							<span class="menu">신상품</span></a>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_2.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_3.png"></i>
								<span class="menu">1팩담기</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_4.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_5.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_6.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_7.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_8.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_9.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_10.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_11.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_12.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_13.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_14.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_15.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_16.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_17.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_18.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_19.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_20.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_21.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_22.png"></i>
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
								<i class="ico-cate-gnb"><img src="ProjectImages/Category/cate_23.png"></i>
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
			<script>
				$(function(){
					$("#express").click(function(){
						alert("준비중입니다.");
						return false;
					});
					$("#benefit").click(function(){
						alert("준비중입니다.");
						return false;
					});
				});
			</script>
			<nav id="gnb" class="gnb">
				<ul>
					<li><a href="/display/rank/sale"><span>랭킹</span></a></li>
					<li><a href="special.jsp"><span>이달의 특가</span></a></li>
					<li id="benefit"><a href="/display/benefits/view"><span>혜택정리</span></a></li>
					<li><a href="/display/onePack/list"><span>1팩 담기</span></a></li>
					<li><a href="brand.html"><span>브랜드관</span></a></li>
					<li><a href="/promotion/event/list"><span>이벤트</span></a></li>
					<li id="express"><a href="/display/expressDelivery/list"><em class="ico-txt-gnb"><span class="blind">특급배송</span></em></a></li>
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>