<%@page import="sun.util.locale.ParseStatus"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ranking.*"%>
<!DOCTYPE html>
<html>
<head>

<%
	Cookie[] cookies = request.getCookies();
ArrayList<String> idxlist = new ArrayList<String>();
if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().contains("null")) {

		} else {
	if (i > 9) {

	} else {
		if (cookies[i].getName().contains("idx")) {
			idxlist.add(cookies[i].getValue());
		}
	}
		}
	}
}
%>
<meta charset="UTF-8">
<title>최근 본 상품</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(function() {
		$('#btn_alldelete').click(function() {
			alert('전체 삭제합니다!');
			location.href = 'recent_deleteAction.jsp';
		});
	});
</script>
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

html, body {
	height: 100%;
	color: #333;
	font-size: 14px;
	font-weight: 400;
	/* line-height: 1.4; */
	font-family: 'Pretendard', sans-serif;
	word-break: break-all;
	margin: 0, auto;
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
	width: 1132px;
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
	width: 1300px;
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

.sidemenu span {
	font-size: 14px;
	color: #000;
	margin-top: 10px;
}

.sidemenu div {
	width: 170px;
	border-top: 1px solid #eee;
	padding: 15px 0;
}

.sidemenu p {
	margin-top: 10px;
}

.sidemenu a {
	color: #666666;
	margin-top: 1px;
	display: block;
	margin-bottom: -14px;
	cursor: pointer;
}

#pwinsert {
	width: 820px;
	float: right;
	position: relative;
	margin-top: -70%;
}

#insert {
	padding: 0px;
	border-top: 1px solid #666;
	margin-top: 10px;
	text-align: center;
}

#inner {
	text-align: left;
	padding: 0;
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
/* 	#message{
			position:relative;
			width:80px;
			height:80px;
			background:url(rankingimages/ico_img.png);
			background-position: -280px 120px;
		} */
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

.button10 {
	margin-top: 25px;
	background: #fff;
	color: #333;
	border: 1px solid #666;
	width: 215px;
	height: 56px;
	margin-right: 10px;
	cursor: pointer;
}

.div1 {
	font-size: 25px;
	font-weight: 700;
}

.div2 {
	width: 888px;
	font-size: 16px;
	font-weight: 700;
	display: inline-block;
	margin-top: 2%;
	padding-top: 2%;
	border-top: solid 1px;
}

.div3 {
	margin-top: 2%;
}

.div4 {
	width: 888px;
	font-size: 16px;
	font-weight: 700;
	display: inline-block;
	margin-top: 2%;
	padding-top: 2%;
	border-top: solid 1px;
}

.div5 {
	width: 888px;
	height: 40px;
	font-size: 16px;
	font-weight: 700;
	display: inline-block;
	margin-top: 2%;
	border: solid 1px;
	background: #93a0b5;
}

.div6 {
	width: 888px;
	height: 270px;
	margin-top: -5px;
	border: solid 1px;
}

.div7 {
	padding: 11px 15px;
	border-radius: 4px;
	background: #f5f5f5;
	margin-top: 12px;
	margin-left: 20px;
	margin-right: 20px;
	height: 25px;
}

.div8 {
	text-align: center;
	height: 175px;
	margin-top: 100px;
}

.div9 {
	width: 891px;
	font-size: 16px;
	font-weight: 700;
	display: inline-block;
	margin-top: 2%;
	padding-top: 2%;
	border-top: solid 1px;
	margin-left: -101px;
}

.div10 {
	float: left;
	margin-top: 50px;
	padding-top: 20px;
	width: 100px;
}

.div11 {
	display: inline-block;
	margin-left: 200px;
	margin-top: 3px;
	width: 100px;
}

.div12 {
	float: left;
	margin-top: 50px;
}

.div13 {
	display: inline-block;
	margin-left: 243px;
}

.div14 {
	border: 1px solid;
	width: 569px;
	height: 230px;
	margin-left: 300px;
	background: #f7f7f7;
	text-align: center;
	margin-top: 10px;
}

.div15 {
	margin-top: 60px;
	margin-right: 5px;
}

.div16 {
	margin-top: 10px;
	margin-right: 5px;
}

.div17 {
	margin-top: 10px;
}

.div18 {
	position: fixed;
	top: 64px;
	right: 290px;
	width: 270px;
	height: 480px;
	border: 1px solid;
}

.div19 {
	width: 240px;
	height: 450px;
	margin-top: 15px;
	margin-left: 14px;
	margin-bottom: 15px;
}

.div20 {
	width: 240px;
	height: 25px;
	margin-top: 30px;
}

.div21 {
	width: 240px;
	height: 25px;
	margin-top: 30px;
	border-top: 2px solid;
	padding-top: 25px;
}

.div22 {
	width: 240px;
	height: 25px;
	margin-top: 30px;
	border-top: 1px solid;
	padding-top: 15px;
}

.div23 {
	width: 240px;
	height: 25px;
	margin-top: -15px;
	padding-top: 15px;
}

.div24 {
	width: 240px;
	height: 25px;
	margin-top: 15px;
	border-top: 1px solid;
	padding-top: 15px;
}

.div25 {
	text-align: center;
	width: 240px;
	height: 60px;
}

.a {
	width: 100%;
}

.a:after {
	display: inline-block;
	content: "";
	margin-top: 5px;
	margin-left: 2px;
	width: 5px;
	height: 5px;
	border-radius: 50%;
	vertical-align: top;
	background: #FF6001;
}

.a2 {
	display: inline-block;
	position: relative;
	margin-left: 13px;
	top: 7px;
	background: transparent;
	text-decoration: none;
	color: inherit;
}

.a3 {
	font-size: 18px;
	color: #333;
	font-weight: 700;
	float: right;
	margin-top: -20px;
	margin-right: 25px;
}

.a4 {
	font-weight: normal;
	font-size: 14px;
}

.a5 {
	color: #333;
	font-size: 14px;
}

td {
	padding: 5px;
}

.td1 {
	border: 1px solid;
	width: 177px;
	height: 46px;
	text-align: center;
}

.input-text1 {
	height: 40px;
	width: 800px;
	padding: 5px 15px;
	background: #fff;
	color: #333;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 13px;
	border-radius: 0;
}

.input-text2 {
	height: 40px;
	width: 670px;
	padding: 5px 15px;
	background: #fff;
	color: #333;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 13px;
	border-radius: 0;
	margin-left: 10px;
}

.input-text3 {
	height: 40px;
	width: 800px;
	padding: 5px 15px;
	background: #fff;
	color: #333;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 13px;
	border-radius: 0;
}

.select-box {
	position: relative;
	height: 40px;
	width: 120px;
	padding: 0 36px 0 15px;
	border: 1px solid #ccc;
	font-size: 14px;
	color: #333;
	box-sizing: border-box;
	background: #fff;
}

.select-box2 {
	position: relative;
	height: 40px;
	width: 299px;
	padding: 0 36px 0 15px;
	border: 1px solid #ccc;
	font-size: 14px;
	color: #333;
	box-sizing: border-box;
	background: #fff;
	margin-left: 20px;
}

.button1 {
	background: #eef7ff;
	color: #3c89fd;
	border: 1px solid #3c89fd;
	border-radius: 20px;
	width: 130px;
	height: 40px;
}

.button2 {
	width: 190px;
	height: 60px;
	background: white;
}

.button3 {
	background: #fff;
	color: #333;
	border: 1px solid #666;
	width: 375px;
	height: 40px;
}

.button4 {
	color: #fff;
	background: #333;
	border: 1px solid #333;
	margin-top: 10px;
	width: 245px;
	height: 55px;
	margin-left: -2px;
}

.span1 {
	color: #fff;
	font-size: 15px;
	font-weight: normal;
}

.span2 {
	font-size: 14px;
	font-weight: normal;
}

.span3 {
	font-size: 20px;
	font-weight: 400;
	margin-right: 60px;
}

.span4 {
	font-size: 14px;
}

.span5 {
	float: right;
	font-size: 25px;
	font-weight: 700;
}

.span6 {
	float: right;
	font-size: 25px;
	font-weight: 700;
	color: #ff6001;
}

.span7 {
	color: #333;
	font-size: 14px;
}

.span8 {
	color: #666;
	font-size: 13px;
	float: right;
	margin-top: 3px;
}

.basket_img {
	display: table-cell;
}

.basket_text {
	display: table-cell;
	vertical-align: top;
	width: 512px;
	text-align: left;
	padding-left: 10px;
}
</style>
</head>
<body>
	<div class="body_inner">
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
			
		<div class="all_area" style="margin-bottom: -490px;">
			<div class="content_wrap">
				<div class="my-container"
					style="width: 1100px; margin-top: 45px; margin-left: 106px; height: 778.92px; border-bottom: 1px solid #eee;">
				</div>
				<div
					style="position: relative; top: -825px; right: -72px; padding-top: 70px;">
					<h3 style="font-size: 24px; margin-bottom: -25px;">최근 본 상품</h3>
					<div>
						<button id="btn_alldelete"
							style="margin-left: 1050px; background-color: white; border: 0; cursor: pointer;">
							<span>전체 삭제</span>
						</button>
					</div>
					<div id="insert" style="width: 1132px;">
						<div id="inner">
							<div
								style="width: 820px; height: 429.5px; padding: 16px 10px; text-align: center;">
								<div class="box_body">
									<%
										System.out.println(idxlist.toString());
									ArrayList<RankingDto> list = new ArrayList<RankingDto>();
									String tmp = null;
									Recent_Dao rdao = new Recent_Dao();
									for (int i = 0; i < idxlist.size(); i++) {
										tmp = (idxlist.get(i));
										list.add(rdao.getrecentlist(tmp));
									}
									%>
									
									<%
										for (RankingDto r : list) {
									%>
									<div
										style=" vertical-align: top; text-align: center">
										<div class="basket_img">
											<img src="Images/dt_images/<%=r.getImage()%>"
												style="width: 80px; height: 80px;">
										</div>
										<div class="basket_text">
											<a><%=r.getName()%></a>
											<p><%=r.getReview()%></p>
											<ul>
												<li><%=r.getSell_price()%>원</li>
												<li><%=r.getDelivery()%></li>
											</ul>
										</div>
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
		<div id="familysite">
			<span>랭킹닭컴</span><br /> <span>개근질마트</span><br /> <span>개근질닷컴</span><br />
			<span>피키다이어트</span><br /> <span>다이어트전문 레시피 다쿡</span><br /> <span>바디프로필
				전문 스튜디오U</span>
		</div>
		<div></div>
		<div id="bottom_menu">
			<span style="margin-left: 123px;">회사소개</span> <span
				style="margin-left: 15px;">공지사항</span> <span
				style="margin-left: 15px;">입점 · 제휴문의</span> <span
				style="margin-left: 15px;">이용약관</span> <span id="personer"
				style="margin-left: 15px;"><strong>개인정보처리방침</strong></span> <span
				id="famsite" style="margin-left: 400px;">패밀리 사이트</span>
		</div>
		<div class="div1"
			style="padding-left: 111px; padding-top: 26px; padding-bottom: 30px; height: 126px;">
			<img class="img1" src="rankingimages/b_i.png">
			<ul class="ul1">
				<li><span> <strong
						style="font-size: 14px; color: black;">㈜푸드나무</strong>
				</span></li>
				<li>대표 : 김영문</li>
				<li>주소 : 서울특별시 마포구 월드컵북로 396, 15층(상암동, 누리꿈스퀘어 비지니스타워)</li>
				<li>사업자등록번호 : 105-87-81968</li>
				<li>통신판매업신고번호 : 제 2015-서울마포-1058호</li>
				<li>개인정보 보호 책임자 : 박상필</li>
				<li style="margin-top: 10px;">Copyrightⓒ랭킹닭컴 All rights
					reserved.</li>
			</ul>
			<ul class="ul2">
				<li><b style="color: black; font-size: 14px;">고객센터</b> <strong
					style="color: red; font-size: 15px">02-6405-8088</strong></li>
				<li style="margin-top: 10px;">FAX. 02-6351-8088
					E-mail.admin@foodnamoo.com</li>
				<li style="margin-top: 10px;"><a style="border: 1px solid #ccc">고객의
						소리</a> <a style="border: 1px solid #ccc">1:1 문의</a></li>
				<li style="position: relative; top: -12px; margin-top: 18px;"><a><img
						src="rankingimages/b_i2.png" style="margin-top: 18px;"></a></li>
			</ul>
		</div>
		<div id="endbottom">
			<ul
				style="list-style: none; text-align: center; margin-right: 181px;">
				<li><a href="#"
					style="background: transparent; text-decoration: none; color: inherit; right: 127px; position: relative; top: 2px;">
						<i class="endbottom-service01"></i> 정보보호 관리체계 ISMS 인증 획득
				</a></li>
				<li id="service02"><a href="#"
					style="background: transparent; text-decoration: none; color: inherit; float: right; top: -19px; right: 180px; position: relative;">
						<i class="endbottom-service02"></i> 우리은행 구매 안전 서비스 가입사실 확인
				</a></li>
			</ul>
		</div>
	</div>

</body>
</html>