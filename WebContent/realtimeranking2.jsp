<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="ranking.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 랭킹</title>
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="shortcut icon" href="Images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<style>
body {
	font-family: 'Pretendard', sans-serif;
}

.body_inner {
	width: 1100px;
	margin: 0 auto;
}

* {
	text-decoration: none;
	margin: 0px;
}

a {
	text-decoration: none;
	color: #404040;
}

input {
	padding: 3px 15px;
	border: 1px solid #ccc;
	margin-left: 10px;
}

li {
	list-style: none;
}

.upimg {
	width: 1300px;
}

.upimg img {
	width: 650px;
}

.header-inner {
	width: 1120px;
	height: 120px;
	margin-left: 100px;
	border: 1px solid white;
}

.header-inner .rankinglogo {
	diplay: block-inline;
	width: 180px;
	height: 46px;
	margin-top: 37px;
}

.header-inner .rankinglogo img {
	margin-top: 23px;
}

.header-inner .headermenu {
	float: right;
}

.header-inner .rankingicon {
	display: inline;
	width: 222px;
	height: 38px;
	text-align: center;
	margin-left: 920px;
	margin-top: -43px;
	float: right;
	position: relative;
	right: -22px;
}

.header-inner .rankingicon img {
	margin-left: 20px;
}

#menu1 {
	width: 1300px;
	background: white;
	text-align: center;
	height: 50px;
	margin-top: auto;
	margin-left: 72px;
	font-size: 17px;
	border-bottom: 0.5px solid #eee;
}

#menu ul {
	overflow: hidden;
	background: white;
	margin-right: 50%;
}

#menu1 ul li {
	width: 200px;
	float: left;
	width: 100px;
	height: 50px;
	line-height: 37px;
	text-align: center;
	margin-right: 42px;
}

#menu1 ul li a {
	display: block;
}

#menu1  a {
	width: 115px;
}

#menu1 ul li a:hover {
	background: white;
	color: blue;;
}

#menu1 img {
	margin-top: 5px;
}

#menu1 #all_cate:after {
	display: inline-block;
	content: '';
	width: 1px;
	height: 16px;
	background: #ccc;
	vertical-align: middle;
	margin-left: 40px;
	margin-right: 40px;
	position: relative;
	top: -40px;
	right: -99px;
}

.search {
	text-align: center;
}

#btnimages {
	display: inline-block;
	content: '';
	border: 0;
	width: 18px;
	height: 18px;
	background: url(rankingimages/ico_btns.png) 0 0;
	vertical-align: top;
}

#mypage-main {
	padding-left: 300px;
}

#mypage-main span {
	border-right: 1px solid black;
	padding-right: 10px;
}

#mypage-text #icon {
	display: inline-block;
	width: 56px;
	height: 60px;
	background: url(rankingimages/ico_cou_level.png) 0 0;
}

#mypage-text #membership {
	border: 2px solid #ddd;
	position: absolute;
	top: 70%;
	right: 38%;
	transform: translateY(-50%);
	font-size: 13px;
	padding: 5px 15px;
}

.all_area {
	position: relative;
	width: 1100px;
	margin : 0 auto;
}

.container {
	position: relative;
	padding-bottom: 0px;
	height: 1192.85px;
}

.content_wrap {
	min-height: 700px;
	height: 1427.87px;
}

.mypage_top {
	width: 1100px;
	margin: 0 auto;
	background: #F8F8F8;
	text-align: center;
	padding: 30px 0;
}

.contents {
	display: table;
	table-layout: auto;
	width: 100%;
}

.user_info {
	width: 590px;
	height: 80px;
	position: relative;
	padding: 25px;
	border: 0px solid #fff;
	background: #fff;
}

.img {
	padding: 8px;
	margin-right: 12px;
	display: inline-block;
	vertical-align: middle;
	margin-left: -230px;
	margin-top: 16px;
}

.ico_cou_level01 {
	background-position: 0 0;
}

[class*="ico_cou_level"] {
	display: inline-block;
	width: 60px;
	height: 62px;
	background: url(rankingimages/ico_cou_level.png) 0 0;
	position: absolute;
	top: 26%;
	left: 3%;
}

.text {
	display: inline-block;
	vertical-align: middle;
}

.welcome {
	font-size: 20px;
	font-weight: 400;
	padding-top: 0px;
}

.name {
	font-weight: 700;
}

strong {
	font-style: normal;
}

.rank_point {
	margin-top: 0px;
	overflow: hidden;
	margin-bottom: 0px;
}

ul li {
	list-style: none;
}

li {
	font-size: 14px;
	color: #666;
}

.rank_point li {
	float: left;
	margin-top: 10px;
}

ul {
	padding-inline-start: 0px;
}

.point:before {
	margin-top: -3px;
	height: 10px;
	background: #e6e6e6;
	margin: 2px 10px 0 0;
	display: inline-block;
	content: '';
	width: 1px;
	height: 10px;
	vertical-align: middle;
	margin-left: 10px;
}

.level_up_tip {
	float: left;
}

.membership_benefit {
	position: absolute;
	top: 49%;
	right: 35px;
	transform: translateY(-50%);
	border: 2px solid #ddd;
	border-radius: 20px;
	padding: 5px 15px;
}

.order {
	border: 0px solid #F8F8F8;
	background: #fff;
	width: 170px;
	height: 130px;
	display: table-cell;
	border-left: 4px solid #F8F8F8;
}

.mycoupon {
	border: 0px solid #F8F8F8;
	background: #fff;
	width: 170px;
	height: 130px;
	display: table-cell;
	border-left: 4px solid #F8F8F8;
}

.mypoint {
	border: 0px solid #F8F8F8;
	background: #fff;
	width: 170px;
	height: 130px;
	display: table-cell;
	border-left: 4px solid #F8F8F8;
}

#pwinsert {
	width: 820px;
	float: right;
	position: relative;
	margin-top: -70%;
}

#insert {
	padding: 0px;
	margin-top: 10px;
	text-align: center;
}

#inner {
	text-align: left;
	padding: 0;
	margin-top: 0px;
	width: 1100px;
}

#input {
	height: 42px;
	padding: 3px 15px;
	background-color: #fff;
	border: 1px solid #ccc;
	font-size: 13px;
	border-radius: 2px;
	width: 332px;
	margin-top: 10px;
	float: left;
}

#btn_prev {
	width: 25px;
	background: url(rankingimages/ico_pagination.png);
	display: inline-block;
	vertical-align: top;
	height: 25px;
	padding: 0 1px;
	color: #999;
	font-size: 14px;
	background-position: 0 0;
	margin: 0 0 0 6px;
	cursor: pointer;
}

#btn_after {
	width: 25px;
	background: url(rankingimages/ico_pagination.png);
	display: inline-block;
	vertical-align: top;
	height: 25px;
	padding: 0 1px;
	color: #999;
	font-size: 14px;
	background-position: 0 -30px;
	margin: 0 6px 0 0;
	cursor: pointer;
}

#btn {
	margin-top: 41px;
	text-align: center;
	width: 180px;
	height: 48px;
	border-radius: 2px;
	background: #3A4C67;
	color: white;
	border: 1px solid #3A4C67;
	font-size: 15px;
	padding: 10px 25px 11px;
}

select {
	border: 1px solid #ccc;
}

#voice {
	width: 178.04px;
	border: 1px solid #ccc;
	position: relative;
	top: -414px;
	right: -106px;
	height: 18.02px;
	text-align: center;
	padding: 18px 20px;
}

#voiceimg {
	background-position: -120px -110px;
	width: 22px;
	height: 16px;
	display: inline-block;
	background-image: url(rankingimages/ico_bullet.png);
	position: relative;
	top: 10%;
	left: -21%;
}

#familysite {
	border: 1px solid #f2f2f2;
	color: black;
	margin-left: 781px;
	font-size: 12px;
	color: black;
	display: none;
}

div1 {
	width: 1000px;
}

.img1 {
	top: 35px;
	left: 10%;
	display: block;
	width: 104px;
	height: 42px;
	margin-bottom: 30px;
}

.ul1 {
	margin-left: 127px;
	margin-top: -81px;
	list-style: none;
	font-size: 12px;
	color: #808080;
	width: 530px;
	position: relative;
	top: 10px;
	padding-left: 40px;
}

.ul1 li {
	font-size: 12px;
}

.ul2 {
	list-style: none;
	margin-left: 612px;
	font-size: 12px;
	margin-top: -118px;
	color: #808080;
	padding-left: 40px;
	width: 334px;
	position: relative;
	top: 4px;
}

.ul2 a {
	font-size: 11px;
}

.ul2 li {
	font-size: 12px;
}

#endbottom {
	margin-top: 70px;
	border-top: 1px solid #eee;
	width: 1100px;
	height: 20px;
	padding: 14px 0 17px;
	margin-top: 0px;
	margin-left: 200px;
}

#endbottom  li:after {
	display: inline-block;
	position: relative;
	top: 0px;
	right: 112px;
	content: '';
	width: 1px;
	height: 11px;
	background: #ccc;
	vertical-align: middle;
}

#endbottom li:last-child::after {
	content: none;
}

[class^="endbottom-"] {
	display: inline-block;
	vertical-align: top;
	height: 21px;
	background-image: url(rankingimages/ico_footer_service.png);
	margin-right: 8px;
	margin-top: -1px;
}

.endbottom-service01 {
	background-position: left top;
	width: 22px;
}

.endbottom-service02 {
	background-position: right top;
	width: 18px;
	margin-top: -2px;
}

.endbottom li {
	display: inline-block;
	padding: 0 20px;
	position: relative;
	color: #666;
	font-size: 13px;
	line-height: 20px;
}

#bottom_menu {
	background: #f2f2f2;
	width: 1300px;
	padding: 19px 0 20px;
	font-size: 12px;
	margin-top: 0px;
	border-top: 1px solid #ddd;
}

#bottom_menu span:after {
	display: inline-block;
	content: '';
	width: 1px;
	height: 11px;
	background: #cccccc;
	vertical-align: middle;
	margin-left: 20px;
}

#bottom_menu #personer:after {
	display: none;
}

#bottom_menu #famsite:after {
	display: none;
}

.headermenu span:after {
	display: inline-block;
	content: '';
	width: 1px;
	height: 11px;
	background: #cccccc;
	vertical-align: middle;
	margin-left: 10px;
	margin-right: 10px;
}

.headermenu span:last-child:after {
	content: none;
}

#plus:before {
	display: block;
	content: '';
	position: absolute;
	border-right: 2px solid black;
	border-bottom: 2px solid black;
	width: 8px;
	height: 8px;
	right: 114px;
	top: 2px;
}

#plus:after {
	display: block;
	content: '';
	position: absolute;
	border-top: 2px solid black;
	border-left: 2px solid black;
	width: 8px;
	height: 8px;
	top: 10px;
	right: 106px;
}

#message:before {
	display: block;
	content: '';
	width: 80px;
	height: 80px;
	background: url(rankingimages/ico_img.png) -280px -120px;
	margin: 0 auto 10px;
}

.button10 {
	margin-top: 25px;
	background: #fff;
	color: #333;
	border: 1px solid #666;
	width: 215px;
	height: 56px;
	margin-right: 10px;
}

.a10 {
	font-weight: bold;
	margin-left: 40px;
}

html, body {
	position: relative;
	height: 100%;
}

body {
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 0;
}

.pm {
	
}

.pj {
	display: none;
}

#bottom_menu span{
	margin-left: 60px;
}
</style>
<script>
	$(function() {
		$("#button10").click(function() {
			$(this).css("color", "#ff8237");
			$(this).css("background", "#ffffff");
			$(this).css("border", "1px solid #ff8237");
			$("#button11").css("color", "#333");
			$("#button11").css("background", "#F8F8F8");
			$("#button11").css("border", "1px solid");
			$(".pm").css("display", "block");
			$(".pj").css("display", "none");
		});
		$("#button11").click(function() {
			$(this).css("color", "#ff8237");
			$(this).css("background", "#ffffff");
			$(this).css("border", "1px solid #ff8237");
			$("#button10").css("color", "#333");
			$("#button10").css("background", "#F8F8F8");
			$("#button10").css("border", "1px solid");
			$(".pm").css("display", "none");
			$(".pj").css("display", "block");
		});
	});
</script>
</head>
<body>

	
	<div class="body_inner" style="height: auto;">
		<%
					boolean id=session.getAttribute("id")==null?false:true;
					if(id==false){
				%>
					<div id="head_inner">
						<%@ include file="MainFrame.jsp"%>
					</div>
				<% 
					}else{
				%>
					<div id="head_inner">
						<%@ include file="../MainFramesessionon.jsp"%>
					</div>
				<% 
					}
				%>
				
		</div>
			
		<div class="all_area" style="margin-bottom: -490px;">
			<div class="content_wrap">
				<div class="my-container"
					style="width: 1100px; margin-top: 45px; margin-left: 106px; height: 778.92px;">

				</div>
				<div
					style="position: relative; top: -825px; padding-top: 70px; height: 40px; width: 1100px; border-bottom: 1px solid #ccc;">
					<h3 style="font-size: 24px;">랭킹</h3>
					<div id="insert" style="width: 1132px;">
						<div id="inner">
							<div style="height: 180px; margin-bottom: -140px;"></div>
							<h3 style="font-size: 20px;">오늘의 전체 랭킹 순위!</h3>
							<div style="float: right; margin-top: -25px;">
								<button id="button10"
									style="color: rgb(255, 130, 55); background: rgb(255, 255, 255); font-weight: bold; padding: 10px; border-radius: 100px; border: 1px solid rgb(255, 130, 55);">판매순</button>
								<button id="button11"
									style="color: #666666; background-color: #F8F8F8; font-weight: bold; padding: 10px; border-radius: 100px; border: 1px solid;">평점순</button>
							</div>
							<%
								RankingDao rDao = new RankingDao();
								ArrayList<RankingDto> list = rDao.getRankinglist();
								int cnt = 1;
							%>



							<%
								for (RankingDto r : list) {
									
							%>
							<div class="pm"
								style="margin-top: 43px; height: 95px; border-bottom: 0.5px solid #eee; width: 1100px;">
								<ul>
									<li><span
										style="font-size: 22px; padding-bottom: 9px; border-bottom: 2px solid #333;"><%=cnt%></span>
										<div
											style="width: 110px; height: 110px; text-align: center; margin-left: 40px; margin-top: -50px;">
											<span><img src="Images/ranking_img/<%=r.getImage()%>"></span>
										</div>
										<div
											style="margin-top: -105px; margin-left: 150px; width: 450px;">
											<a href = "detail_page.jsp"><%=r.getName()%></a> <br />
											<div style="margin-top: 45px;">
												<a>★</a> <a><strong><%=r.getReview()%></strong></a> <a>(<%=r.getSales()%>)
												</a>
											</div>
											<div
												style="margin-top: -50px; margin-left: 450px; width: 130px; height: 110px;">
												<a><strong style="font-size: 18px;"><%=r.getSell_price()%></strong></a><a>원</a>
											</div>
											<div
												style="margin-top: -105px; margin-left: 600px; width: 100px; height: 110px;">
												<a>1%</a> <a>적립</a>
											</div>
											<div
												style="margin-top: -110px; margin-left: 740px; width: 120px; height: 110px;">
												<%=r.getDelivery()%></div>
											<div
												style="margin-top: -110px; margin-left: 850px; width: 120px; height: 110px;">
												<a>장바구니</a> <a
													style="border-left: 1px solid #ecc; padding-left: 5px;">좋아요</a>
											</div>
										</div></li>
								</ul>
							</div>

							<%
								cnt++;
							}
							%>
							<%
								RankingDao2 kDao = new RankingDao2();
							ArrayList<RankingDto> list1 = kDao.getRankinglist();
							int cnt1 = 1;
							%>



							<%
								for (RankingDto k : list1) {
							%>
							<div class="pj"
								style="margin-top: 43px; height: 95px; border-bottom: 0.5px solid #eee; width: 1100px;">
								<ul>
									<li><span
										style="font-size: 22px; padding-bottom: 9px; border-bottom: 2px solid #333;"><%=cnt1%></span>
										<div
											style="width: 110px; height: 110px; text-align: center; margin-left: 40px; margin-top: -50px;">
											<span><img src="Images/ranking_img/<%=k.getImage()%>"></span>
										</div>
										<div
											style="margin-top: -105px; margin-left: 150px; width: 450px;">
											<a><%=k.getName()%></a> <br />
											<div style="margin-top: 45px;">
												<a>★</a> <a><strong><%=k.getReview()%></strong></a> <a>(<%=k.getSales()%>)
												</a>
											</div>
											<div
												style="margin-top: -50px; margin-left: 450px; width: 130px; height: 110px;">
												<a><strong style="font-size: 18px;"><%=k.getSell_price()%></strong></a><a>원</a>
											</div>
											<div
												style="margin-top: -105px; margin-left: 600px; width: 100px; height: 110px;">
												<a>1%</a> <a>적립</a>
											</div>
											<div
												style="margin-top: -110px; margin-left: 740px; width: 120px; height: 110px;">
												<%=k.getDelivery()%></div>
											<div
												style="margin-top: -110px; margin-left: 850px; width: 120px; height: 110px;">
												<a>장바구니</a> <a
													style="border-left: 1px solid #ecc; padding-left: 5px;">좋아요</a>
											</div>
										</div></li>
								</ul>
							</div>

							<%
								cnt1++;
							}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin: 0 auto; width: 1100px;">
		<div id="bottom_inner">
			<script>
				$(this).ready(function() {
					$("#bottom_inner").load('BottomFrame.html');
				});
			</script>
		</div>
	</div>
</body>
</html>