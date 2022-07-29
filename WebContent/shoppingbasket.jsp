<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Images/favicon.ico">
<meta charset="UTF-8">
<title>장바구니</title>
<script src="js/jquery-3.6.0.min.js"></script>
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

.btn_sel_del {
	display: inline;
	float: right;
}

button {
	cursor: pointer;
}

.btn_sel {
	
}

.box_head {
	border: 1px solid #ccc;
	padding: 20px 25px;
}

.box_body {
	border: 1px solid #ccc;
	padding: 30px 0 0;
}

.box_bottom {
	background: #f8f8f8;
	text-align: center;
	padding: 15px 0 15px;
}

.checkbox {
	display: table-cell;
	width: 35px;
	vertical-align: top;
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

.goods_count {
	display: table-cell;
	vertical-align: middle;
	width: 160px;
}

.goods_price {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	width: 130px;
}

.goods_point {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
}

.check_box {
	margin-top: 35px;
	vertical-align: top;
}

.check_box_head {
	
}

.basket_text li {
	display: inline-block;
}

.basket_text p {
	margin-bottom: 10px;
}

.delivery_free_line {
	vertical-align: top;
	font-size: 15px;
	color: #666;
	line-height: 1.4;
}

.delivery_free_line:before {
	background-color: #888;
	content: '';
	width: 1px;
	height: 10px;
	margin: 6px 10px 0 10px;
	vertical-align: top;
	display: inline-block;
}

.ico_plus {
	position: relative;
	width: 12px;
	height: 12px;
	display: inline-block;
	border: #fff;
}

.ico_plus:before {
	display: block;
	content: '';
	position: absolute;
	top: 5px;
	left: 0;
	width: 100%;
	height: 3px;
	background: #c2c2c2;
}

.ico_plus:after {
	display: block;
	content: '';
	position: absolute;
	top: 0px;
	left: 4px;
	width: 3px;
	height: 100%;
	background: #c2c2c2;
}

.ico_mino {
	position: relative;
	width: 12px;
	height: 12px;
	display: inline-block;
}

.ico_mino:before {
	display: block;
	content: '';
	position: absolute;
	top: 50%;
	left: 0;
	width: 100%;
	height: 2px;
	background: #c2c2c2;
}

.total_price_box {
	border: 1px solid #333;
	margin-top: 50px;
}

.colume {
	padding: 28px 0 0;
	display: inline-block;
}

.goods_count button {
	background: #fff;
}

input {
	accent-color: #ff6001;
	width: 18px;
	height: 18px;
}

.colume {
	padding: 28px 0 0;
	text-align: center;
	width: 273px;
	height: 120px;
}

.colume {
	border-right: 1px solid #ccc;
	display: table-cell;
}

.price_style {
	font-size: 28px;
	font-weight: 700;
}

.price_style2 {
	font-size: 28px;
	font-weight: 700;
	color: #ff6001;
}

.notice {
	text-align: center;
	margin-top: 20px;
}

.notice ul {
	display: inline-block;
}

.notice ul li {
	text-align: left;
}

.notice ul li:before {
	content: '-';
	display: inline-block;
}

.keep_shopping_order {
	text-align: center;
	margin-top: 50px;
}

.keep_shopping {
	border: 1px solid #666;
	padding: 25px 121px;
}

.order_btn {
	border: 1px solid #ff7e32;
	background: #ff7e32;
	padding: 25px 110px;
}

.order_text {
	font-weight: 700;
	font-size: 24px;
	color: #fff;
}

.keep_shop_text {
	font-size: 24px;
}

.del_cart_area {
	display: table-cell;
	vertical-align: middle;
}

.del_btn {
	border: 0;
	background: none;
	margin-left: 70px;
	margin-bottom: 30px;
}

.ico_del {
	width: 14px;
	height: 14px;
	position: absolute;
}

.ico_del:before {
	position: absolute;
	top: 50%;
	left: -3px;
	display: block;
	content: '';
	width: 130%;
	height: 1px;
	background: #666;
	box-shadow: inset 0 0 0 32px;
	transform: rotate(45deg);
}

.ico_del:after {
	position: absolute;
	top: 50%;
	left: -3px;
	display: block;
	content: '';
	width: 130%;
	height: 1px;
	background: #666;
	box-shadow: inset 0 0 0 32px;
	transform: rotate(-45deg)
}

.good_count {
	width: 100%;
	height: 100%;
	color: #333;
	background: #fff;
	border: 0;
	text-align: center;
	font-size: 14px;
	vertical-align: top;
}

.good_count input {
	border: none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
	outline: none;
}

.btn_arrow_right {
	position: relative;
	float: right;
	display: none;
}

.btn_arrow_right:after {
	content: '';
	width: 8px;
	height: 8px;
	border-top: 1px solid #666;
	border-right: 1px solid #666;
	display: inline-block;
	transform: rotate(315deg);
	top: 0px;
	left: 0px;
	margin-left: 5px;
}

.free_del_change {
	display: none;
	width: 58px;
	height: 20px;
	background: url(Images/txt_badge_dlv.png) no-repeat 0 -30px;
	float : right;
}
</style>

	<%
	
		String qty = request.getParameter("qty");
		String price = request.getParameter("price");
		String name = request.getParameter("name");
		String origin_price = request.getParameter("origin_price");
		String image = request.getParameter("image");
		
		int price_int = Integer.parseInt(price);
		int origin_price_int = Integer.parseInt(origin_price);
		int point = price_int / 100;  
		int qty_int = Integer.parseInt(qty);
		int total_price = origin_price_int * qty_int;
		
		int delivery_price = 0;
		
		if(price_int < 20000){
			delivery_price = 3000;
			total_price = price_int + 3000;
		}
		
		String idx = request.getParameter("idx"); 
		int index = Integer.parseInt(idx);
	%>
	<script>
		$(function(){
			if(<%=price%> >= 20000){
				$('.free_del_change').css('display', 'block');
				$('#deli_price').css('display', 'none');
			}
		});
		function count(type) {
			
			// 결과를 표시할 element
			const resultElement = document.getElementById('qty');
			const origin_priceElement = document.getElementById('origin_price');
			const priceElement = document.getElementById('price');
			const pricetwoElement = document.getElementById('price2');
			const total_priceElement = document.getElementById('total_price');
			const delivery_priceElement = document.getElementById('delivery_price');
			const point_accElement = document.getElementById('point_acc');
			
			// 현재 화면에 표시된 값
			let number = resultElement.innerText;
			let origin_price = origin_priceElement.innerText;
			let price = priceElement.innerText;
			let total_price = total_priceElement.innerText;
			let delivery_price = delivery_priceElement.innerText;
			let point_acc = point_accElement.innerText;
			
			// 더하기/빼기
			if (type === 'plus') {
				number = parseInt(number) + 1;
				price = parseInt(price) + parseInt(origin_price);
				total_price = parseInt(price) + parseInt(delivery_price);
				point_acc = parseInt(price) / parseInt('100');
				$('#box_bottom_text').text(price);
				
				if (total_price >= 20000) {
					delivery_priceElement.innerText = 0;
					total_price = parseInt(price) + parseInt(delivery_priceElement.innerText);
					$(function() {
						$('.free_del_change').css('display', 'block');
						$('#deli_price').css('display', 'none');
					});
					
				}

			} else if (type === 'minus') {
				number = parseInt(number) - 1;
				price = parseInt(price) - parseInt(origin_price);
				total_price = parseInt(total_price) - parseInt(origin_price);
				point_acc = parseInt(price) / parseInt('100');
				$('#box_bottom_text').text(price);

				if (price <= 20000) {
					delivery_priceElement.innerText = 3000;
					total_price = parseInt(price) + 3000;
					$(function() {
						$('.free_del_change').css('display', 'none');
						$('#deli_price').css('display', 'block');
					});

				}//if
			}//else-if
	
			
			if (number <= 0) {
				alert('1개 이상만 가능!');
				number = 1;
				delivery_priceElement.innerText = delivery_price;
				price = parseInt(price) + parseInt(origin_price);
				total_price = parseInt(origin_price) + parseInt(delivery_price);
				point_acc = parseInt(price) / parseInt('100');
					$(function() {
						if(<%=origin_price_int%> >= 20000){
							$('.free_del_change').css('display', 'inline-block');
							$('#deli_price').css('display', 'none');
						}else{
							$('.free_del_change').css('display', 'none');
							$('#deli_price').css('display', 'block');
						}
					});
			}
			
			// 결과 출력
			resultElement.innerText = number;
			priceElement.innerText = price;
			pricetwoElement.innerText = price;
			total_priceElement.innerText = total_price;
			point_accElement.innerText = parseInt(point_acc);
			
			$(function() {
				$("#real_total_price").text(total_priceElement.innerText);
				$('.goods_point').text(point_accElement.innerText + 'P');
				$('.goods_price').text(priceElement.innerText + '원');
			});
		}
		
		var form = document.forms.price;
		alert(form.getAttribute('action')); // post 출력
	
		
	</script>
</head>
<body>
<script>
</script>	
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
			%><!-- 상단 헤더 -->
		<div class="all_area" style="margin-bottom: -490px;">
			<div class="content_wrap">
				<div class="my-container"
					style="width: 1100px; margin-top: 45px; margin-left: 106px; height: 778.92px; border-bottom: 1px solid #eee;">

				</div>
				
					<div style="position: relative; top: -825px; right: -72px; padding-top: 70px; width: 1100px;">
						<h3 style="font-size: 24px; display : inline;">장바구니</h3>
						<div class="btn_sel_del">
							<button class="btn_sel">전체선택</button>
							<button class=btn_del>선택삭제</button>
						</div>

					<div id="insert" style="width: 1100px;">
						<div id="inner">
							
							<div class = "basket_box">
								<div class = "box_head">
									<input class = "check_box_head" type="checkbox"/>
									<span style="font-size: 16px; font-weight: 700; line-height: 1.2;">랭킹닭컴(1팩담기)</span>
									<span class = "delivery_free_line">20,000원 이상 무료배송</span>
									<span id = "deli_price"style = "float: right;">배송비 3,000원</span>
									<span class ="free_del_change"></span>
								</div>
								<div class = "box_body">
									<div style = "padding : 0 25px; vertical-align: top; text-align : center">
										<div class = "checkbox">
											<input class = "check_box" type="checkbox"/>
										</div>
										
										<div class = "basket_img">
											<img src = "Images/basket_img/<%= image%>" style="width : 80px; height : 80px;">
										</div>
										
										<div class = "basket_text">
											<a><%= name %></a>
											<p>스테이크 오리지널 1팩</p>
											<ul>
												<li id = "origin_price"><%= origin_price %></li><span>원</span>
												<li>특급배송</li>
											</ul>
										</div>
										
										<div class = "goods_count">
											<div class = "good_count" style="display:inline-block; border: 1px solid #c4c4c4; width : 126px; height : 31px;">
											<form action="javascript:;">
												<button onclick ='count("minus")' class="mino_btn" style = "border : #fff; width: 32px; height: 31px; float : left;"><i class = "ico_mino"></i></button>
												<div style= "display: inline; vertical-align: -webkit-baseline-middle;" id="qty" readonly><%= qty %></div>
												<button  onclick ='count("plus")' class = "plus_btn" style = "border : #fff; width: 32px; height: 31px; float : right;"><i class = "ico_plus"></i></button>
											</form>
											</div>
										</div>
										
										<div class = "goods_price">
											<%=price %>원
										</div>
										
										<div class = "goods_point">
											<%=point %>P
										</div>
										
										
										<div class = "del_cart_area">
											<button class = "del_btn">
												<i class = "ico_del"></i>
											</button>
										</div>
										
									</div>
										<div class = "box_bottom">
											상품 <span id="box_bottom_text"><%= price %></span>원 +
											<span>할인0원</span>=
											<span id = "price" style = "font-weight :700; font-size : 16px;"><%=price %></span>원
										</div>
								</div>
							</div>
							
							<div class = "total_price_box">
							
								<div class = "colume">
									<p>상품 금액</p><br/>
								<span class = "price_style" id = "price2">
									<%=price %>
								</span>
									<span style = "font-size: 18px; text-align: center;">원</span>
								</div>
								
								<div class = "colume">
									<p>할인금액</p><br/>
									<span class = "price_style">
										0
									</span>
									<span style = "font-size: 18px; text-align: center;">원</span>
								</div>
								
								<div class = "colume">
									<p>배송비</p><br/>
									<span class = "price_style" id = "delivery_price">
										<%=    delivery_price %>
									</span>
									<span style = "font-size: 18px; text-align: center;">원</span>
								</div>
								<div class = "colume">
									<p>총 결제금액</p><br/>
									<span class = "price_style2" id = "total_price">
										<%= total_price %>
									</span>
										<span style = "font-size: 18px; text-align: center;">원</span><br/>
										(
									<span id = "point_acc" style = "font-size: 12px; color : #666; font-weight : normal;">
										<%= point %>
									</span>
									P 적립예정)
								</div>
								
							</div>
							
							<div class = "notice">
								<ul>
									<li>
										배송방법 선택 또는 배송지에 따라 배송비가 달라질 수 있습니다.
									</li>
									<li>
										제품별로 출고지 및 출고일정이 상이하여 합포장 또는 개별발송될 수 있습니다.
									</li>
								</ul>
							</div>
							
							
							
							<div class = "keep_shopping_order">
								<!-- 메인페이지로 이동-->
								<a href = "MainPage.jsp" class = "keep_shopping" type="button"><span class = "keep_shop_text">쇼핑계속하기</span></a>
								<a href = "orderpayment.jsp?idx=<%= index %>&qty=<%=qty %>&origin_price=<%=origin_price %>" class = "order_btn" type="submit"><span class ="order_text"><span id = "real_total_price"><%=total_price %></span>원 주문하기</span></a>
							</div>
							
							<div style="width: 820px; height: 429.5px; padding: 16px 10px; text-align: center; display: none;" class = "no_cart">
								<div id="no-data"
									style="width: 1132px; height: 110px; padding: 160px 0px; margin-left: -10px; margin-top: 80px;">
									<i id="message"
										style="font-style: normal; color: #000; font-size: 20px;">장바구니에
										담긴 상품이 없습니다.</i> <br/> <a> <input type="button"
										value="쇼핑 계속하기" class="button10"
										onclick="location.href='https://www.rankingdak.com'">
									</a>
								</div>
							</div>
							
						</div><!--장바구니 내용  -->

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
				<li style="margin-top: 10px;"><a
					style="border: 1px solid #ccc">고객의 소리</a> <a
					style="border: 1px solid #ccc">1:1 문의</a></li>
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