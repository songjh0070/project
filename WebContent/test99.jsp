<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="ranking.ReviewDAO"%>
<%@ page import="ranking.ReviewDAO_top"%>
<%@ page import="ranking.ReviewDTO"%>
<%@ page import="ranking.GoodsDto"%>
<%@ page import="ranking.GoodsDao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
<script src="js/jquery-3.6.0.min.js"></script>

    <script>
    
        var imgArray= new Array();
        imgArray[0]="Images/detail_random_img/rd_img1.png";  //사진
        imgArray[1]="Images/detail_random_img/rd_img2.png"; //사진
        imgArray[2]="Images/detail_random_img/rd_img3.png";    //사진
        imgArray[3]="Images/detail_random_img/rd_img4.png";    //사진
        imgArray[4]="Images/detail_random_img/rd_img5.png";    //사진
        imgArray[5]="Images/detail_random_img/rd_img6.png";    //사진
        
        function showImage(){
        	
	            var imgNum = Math.round(Math.random()*4);
	            var objImg = document.getElementById("rd_img");
	            objImg.src=imgArray[imgNum];
	            
	            var imgNum2 = Math.round(Math.random()*4);
	            var objImg2 = document.getElementById("rd_img2");
	            objImg2.src=imgArray[imgNum2];
	            
	            var imgNum3 = Math.round(Math.random()*4);
	            var objImg3 = document.getElementById("rd_img3");
	            objImg3.src=imgArray[imgNum3];
	            
	            var imgNum4 = Math.round(Math.random()*4);
	            var objImg4 = document.getElementById("rd_img4");
	            objImg4.src=imgArray[imgNum4];
	            
	            var imgNum5 = Math.round(Math.random()*4);
	            var objImg5 = document.getElementById("rd_img5");
	            objImg5.src=imgArray[imgNum5];
	            
        }
        
 /*  function showImage(){
        	
        	for(var i = 0; i < 5; i++){
        		
        		var r = Math.Random()*5;
	            var objImg=document.getElementById("rd_img");
	            objImg.src=imgArray[i];
	            
	            var objImg=document.getElementById("rd_img2");
	            objImg.src=imgArray[i];
	            
	            var objImg=document.getElementById("rd_img3");
	            objImg.src=imgArray[i];
	            
	            var objImg=document.getElementById("rd_img4");
	            objImg.src=imgArray[i];
	            
	            var objImg=document.getElementById("rd_img5");
	            objImg.src=imgArray[i];
	            
        	}
        } */
        
    </script>
</head>

<style>
button {
	cursor: pointer;
}

li {
	padding: 0;
}

* {
	text-decoration: none;
	margin: 0px;
}

html, body { /* 헤더 css */
	height: 100%;
	color: #333;
	font-size: 14px;
	font-weight: 400;
	/* line-height: 1.4; */
	font-family: 'Pretendard', sans-serif;
	word-break: break-all;
	margin: 0, auto;
}

a {
	text-decoration: none;
	color: #404040;
}

input {
	padding: 3px 15px;
	border: 1px solid #ccc;
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
	background: black;
	color: white;
}

#menu1 img {
	margin-top: 5px;
}

.search {
	text-align: center;
	border: 0px solid white;
} /* 헤더 */
.all_wrap {
	width: 1300px;
	margin: 0 auto;
}

.goods_contents_area {
	border-top: 1px solid #ccc;
	width: 1300px;
}

.goods_contents {
	margin-left: 100px;
	margin-top: 90px;
	height: 1030px;
}

.goods_img {
	width: 480px;
	height: 480px;
}

.delivery_banner {
	margin-top: 10px;
}

.goods_name {
	font-weight: 400;
	font-size: 18px;
	line-height: 26px;
	margin-top: 10px;
	margin-bottom: 10px;
}

.review_point {
	display: block;
	width: 20px;
	height: 20px;
	background: url(Images/ico_rating.png) 0 -60px;
}

.goods_img_area {
	display: inline-block;
	width: 480px;
}

.goods_info_area {
	margin-right: 50px;
	float: right;
}

.rating_point {
	display: inline-block;
	width: 100px;
	height: 20px;
	background: url(Images/ico_rating.png) 0 -40px;
	vertical-align: top;
}

.rating_point [class*="point5"] { /* 레이팅 점수 width로 조정할 수 있음 */
	display: block;
	width: 100px;
	height: 18px;
	background: url(Images/ico_rating.png) 0 -60px;
}

.rating_point [class*="point_49"] { /* 레이팅 점수 width로 조정할 수 있음 */
	display: block;
	width: 90px;
	height: 18px;
	background: url(Images/ico_rating.png) 0 -60px;
}

.rating_point [class*="point4"] { /* 레이팅 점수 width로 조정할 수 있음 */
	display: block;
	width: 80px;
	height: 18px;
	background: url(Images/ico_rating.png) 0 -60px;
}

.rating_point [class*="point3"] { /* 레이팅 점수 width로 조정할 수 있음 */
	display: block;
	width: 60px;
	height: 18px;
	background: url(Images/ico_rating.png) 0 -60px;
}

.rating_point [class*="point2"] { /* 레이팅 점수 width로 조정할 수 있음 */
	display: block;
	width: 40px;
	height: 18px;
	background: url(Images/ico_rating.png) 0 -60px;
}

.rating_point [class*="point1"] { /* 레이팅 점수 width로 조정할 수 있음 */
	display: block;
	width: 20px;
	height: 18px;
	background: url(Images/ico_rating.png) 0 -60px;
}

.goods_price {
	text-align: left;
	position: relative;
}

.price {
	font-size: 20px;
	font-weight: 600;
	display: inline-block;
}

.one_pack {
	font-size: 13px;
	color: #666;
	margin-top: 4px;
}

.favorite_share {
	float: right;
}

.favorite {
	position: relative;
	top: -42px;
	right: 55px;
	width: 20px;
	height: 18px;
	background: url(Images/ico_form.png) 0 -140px;
	margin-left: 10px;
	border: 0;
	background-color: #fff;
}

.share {
	position: relative;
	top: -60px;
	width: 20px;
	height: 20px;
	background: url(Images/ico_btns.png);
	background-position: -30px -190px;
}

.share:after {
	width: 20px;
	height: 20px;
	background-position: -30px -190px;
}

[class*="share"]:after {
	display: inline-block;
	content: '';
	background-image: url(Images/ico_btns.png);
}

.orange_mem_benefit_box {
	margin-top: 10px;
	border: 1px solid #eee;
}

.orange_mem_text {
	position: relative;
	margin-left: 5px;
	color: #FF6001;
	font-style: none;
}

.box_head {
	display: block;
	padding-left: 10px;
	background: #FAFAFA;
	position: relative;
	padding: 10px;
}

.ico_crown {
	background: url(Images/ico_bullet.png) -150px -110px;
	background-position: -150px -110px;
	width: 14px;
	height: 16px;
	position: relative;
	display: inline-block;
}

[class^="ico_crown"] {
	background-image: url(Images/ico_bullet.png);
}

.arrow {
	position: relative;
}

.arrow_bottom {
	position: relative;
}

.arrow_top {
	position: relative;
}

.arrow:after { /* 화살표 */
	content: '';
	width: 8px; /* 사이즈 */
	height: 8px; /* 사이즈 */
	border-top: 1px solid #000; /* 선 두께 */
	border-right: 1px solid #000; /* 선 두께 */
	display: inline-block;
	transform: rotate(45deg); /* 각도 */
	top: 5px; /* 기본 0px 값으로 해주세요 */
	left: 25px; /* 기본 0px 값으로 해주세요 */
}

.arrow_left:before { /* 화살표 */
	content: '';
	width: 8px; /* 사이즈 */
	height: 8px; /* 사이즈 */
	border-top: 1px solid #000; /* 선 두께 */
	border-right: 1px solid #000; /* 선 두께 */
	display: inline-block;
	transform: rotate(225deg); /* 각도 */
	top: 5px; /* 기본 0px 값으로 해주세요 */
	left: 25px; /* 기본 0px 값으로 해주세요 */
	cursor: pointer;
}

.arrow_right:after { /* 화살표 */
	content: '';
	width: 8px; /* 사이즈 */
	height: 8px; /* 사이즈 */
	border-top: 1px solid #000; /* 선 두께 */
	border-right: 1px solid #000; /* 선 두께 */
	display: inline-block;
	transform: rotate(45deg); /* 각도 */
	top: 5px; /* 기본 0px 값으로 해주세요 */
	left: 25px; /* 기본 0px 값으로 해주세요 */
	cursor: pointer;
}

.arrow_bottom:after { /* 화살표 */
	content: '';
	width: 8px; /* 사이즈 */
	height: 8px; /* 사이즈 */
	border-top: 1px solid #666; /* 선 두께 */
	border-right: 1px solid #666; /* 선 두께 */
	display: inline-block;
	transform: rotate(135deg); /* 각도 */
	top: 0px; /* 기본 0px 값으로 해주세요 */
	left: 0px; /* 기본 0px 값으로 해주세요 */
}

.arrow_top:after {
	content: '';
	width: 8px; /* 사이즈 */
	height: 8px; /* 사이즈 */
	border-top: 1px solid #666; /* 선 두께 */
	border-right: 1px solid #666; /* 선 두께 */
	display: inline-block;
	transform: rotate(-45deg); /* 각도 */
	top: 0px; /* 기본 0px 값으로 해주세요 */
	left: 0px; /* 기본 0px 값으로 해주세요 */
}

.box_bottom {
	border-top: 1px solid #eee;
	padding: 15px 15px;
}

.etc_contents {
	margin-top: 20px;
}

.text1_area {
	border-top: 1px solid #eee;
	padding: 25px 0px;
}

.text1_area_end {
	border-top: 1px solid #eee;
	padding: 15px 0px;
	border-bottom: 1px solid #eee;
}

.text1 {
	text-align: center;
	color: #666;
}

.text1_end {
	text-align: top;
	display: inline;
	width: 100px;
	color: #666;
}

.delivery_special {
	background: url(Images/delivery.png) 0 0;
	width: 64px;
	height: 20px;
	position: relative;
	display: inline-block;
}

.delivery_free {
	margin-left: 5px;
	background: url(Images/delivery.png) 0 -30px;
	width: 58px;
	height: 20px;
	display: inline-block;
}

.option_sel_area {
	margin-top: 20px;
}

.option_sel {
	border: 10px;
	display: block;
	font-weight: 400;
	color: #666;
	margin-bottom: 20px;
}

.option1_box {
	border: 1px solid #ccc;
	text-size: 16px;
	margin-top: 10px;
}

.option1 {
	color: #666;
	display: block;
	padding: 12px 40px 12px 15px;
}

.option2_box {
	border: 1px solid #ccc;
	text-size: 16px;
	margin-top: 10px;
}

.option2 {
	color: #666;
	display: block;
	padding: 12px 40px 12px 15px;
}

.select_list_area {
	padding: 0;
}

.sel1 {
	padding: 10px 17px;
	border-top: 0;
}

.select_list_area  li>a {
	overflow: hidden;
	vertical-align: top;
	display: block;
	line-height: 22px;
}

.select_list_area>li {
	position: relative;
	background: #fff;
	border-top: 1px solid #ddd;
}

.drop_down_list {
	position: absolute;
	min-width: 620px;
	max-height: 300px;
	overflow: scroll;
	border: 1px solid #666;
	display: none;
	z-index: 2;
}

.goods_opt {
	vertical-align: top;
	font-size: 14px;
	line-height: 30px;
	font-weight: 400;
}

.delivery_chart_area {
	
}

.delivery_chart {
	border: 1px solid #ccc;
	border-radius: 6px;
	margin-left: 110px;
}

table {
	border: 1px solid #ccc;
	border-radius: 6px;
	width: 510px;
	line-height: 20px;
}
/* 총 상품 금액 영역 */
.total_price_area {
	margin-top: 30px;
	text-align: right;
}

.total_price {
	display: inline-block;
	font-weight: 700;
	margin-left: 50px;
}

.order_price {
	font-size: 34px;
}

.plus_point_area {
	margin-top: 5px;
}

.total_point_area {
	margin-left: 10px;
}

.plus_point_box {
	display: inline-block;
	border-radius: 3px;
	background: #eee;
	padding: 5px;
}

.btn_area {
	margin-top: 10px;
	font-size: 18px;
	font-weight: 700;
}

.basket_btn {
	border: 1px solid #ff6001;
	color: #ff6001;
	background: #fff;
	width: 260px;
	height: 56px;
	padding: 10px 25px 11px;
}

.buy_now_btn {
	border: 1px solid #ff6001;
	color: #fff;
	background: #ff6001;
	width: 260px;
	height: 56px;
	padding: 10px 25px 11px;
	font-size: 20px;
	font-weight: 700;
}

.basket_text {
	font-size: 20px;
	font-weight: 700;
}

/* 베스트 리뷰 영역 */
.best_review_area {
	margin-top: 30px;
	margin-left: 100px;
	width: 1100px;
}

.review_img {
	width: 100px;
	height: 100px;
	float: right;
}

.review_area {
	margin-top: 20px;
	display: inline-block;
	width: 48%;
	border-right: 1px solid #eee;
	padding-right: 1px;
}

.review_area:nth-child(2n) {
	border-right: 1px solid #eee;
}

.review_area:nth-child(2n) {
	border: none;
}

.point_5 {
	margin-bottom: 10px;
}

.Point {
	position: relative;
	display: inline-block;
	width: 80px;
	height: 12px;
	background: url(Images/ico_rating.png) 0 0;
}

.Point [class*="Point"] {
	display: block;
	width: 80px;
	height: 12px;
	background: url(Images/ico_rating.png) 0 -20px;
}

.review_date {
	border-left: 1px solid #eee;
	padding-left: 5px;
}

.review_text {
	padding-right: 130px;
	display: inline-block;
	width: 290px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.review_area:nth-child(2n) {
	float: left;
}

.review_button {
	width:
}

.btn_all_review {
	float: right;
	top: 0;
	right: 0;
	width: 71px;
}

.recommend_goods_area {
	margin-left: 100px;
	margin-top: 30px;
	width: 1100px;
}

.recommend_goods_list {
	border-top: 1px solid #e6e6e6;
	width: 1100px;
	padding: 0;
}

.recommend_img {
	width: 180px;
	height: 180px;
	display: inline-block;
	margin-right: 35px;
}

.detail_all_area {
	border-top: 1px solid #999;
	margin-top: 100px;
	max-width: 1100px;
}

.tab_area {
	width: 1100px;
	margin-left: 100px;
}

.tab_list {
	border-left: 1px solid #eee;
	padding: 0;
}

.detail_all_area .tab_area .tab_list li {
	display: inline-block;
	border-right: 1px solid #eee;
}

.tab_text {
	display: block;
}

.detail_img_area {
	margin: 30px auto;
	margin-left: 100px;
	max-height: 2000px;
	overflow: hidden;
	width: 900px;
}

.detail_img_open {
	border: 1px solid #000;
	width: 646px;
	text-align: center;
	margin-left: 80px;
	height: 50px;
	vertical-align: middle;
	line-height: 50px;
	font-size: 18px;
	font-weight: 700;
	background: #fff;
}

.btn_area {
	margin-left: 100px;
}

.option_select_area {
	position: absolute;
	width: 100%;
}

.inner_area {
	position: relative;
	width: 1100px;
	max-width: 1100px;
	height: 100%;
	padding-left: 200px;
	padding-top: 0;
	margin: 0 auto;
	border-left: 1px solid #eee;
}

.option_sel_box {
	height: 1314px;
	position: absolute;
	top: 0;
	right: 0;
	padding-top: 0;
	width: 280px;
	transition: .2s;
	-webkit-transition: .2s;
	padding-left: 20px;
	border-left: 1px solid #e6e6e6;
	background: #fff;
}

.opt_box1 {
	margin-top: 10px;
	border: 1px solid #e6e6e6;
}

.opt_box2 {
	margin-top: 10px;
	border: 1px solid #e6e6e6;
}

.buy_satisfied {
	margin-top: 70px;
}

.buy_satisfied_box {
	border: 1px solid #eee;
	background: #fafafa;
	padding: 28px 40px;
	width: 720px;
	height: 159px;
	margin-top: 10px;
}

.rating_point_sat {
	display: inline-block;
	text-align: center;
	vertical-align: middle;
	margin-top: 25px;
}

.review_point {
	position: relative;
	display: inline-block;
	vertical-align: top;
	margin-top: 3px;
	width: 166px;
	height: 28px;
	background: url(Images/ico_rating.png) 0 -85px;
}

.review_point [class*="point"] {
	display: block;
	width: 94%;
	height: 28px;
	background: url(Images/ico_rating.png) 0 bottom;
}

.ico_i {
	position: relative;
	display: inline-block;
	border-radius: 50%;
	width: 14px;
	height: 14px;
	background: #fff;
	border: 2px solid #ccc;
}

[class*="ico_i_"]:after {
	display: inline-block;
	content: '';
	background-image: url(Images/ico_btns.png);
}

.Average_point {
	display: inline-block;
	vertical-align: middle;
	text-align: left;
	margin-top: 35px;
	margin-left: 12%;
	font-size: 16px;
}

.reviews_count {
	color: #FF6001;
	font-weight: 500;
}

.per_point {
	color: #FF6001;
	font-weight: 500;
}

.give_point5 {
	color: #FF6001;
	font-weight: 500;
}

.per_point5 {
	margin-top: -30px;
	margin-left: 5px;
	position: absolute;
	border-radius: 4px;
	background: #FF6001;
	text-align: center;
	color: #fff;
	min-width: 30px;
	display: table-cell;
}

.graph_line {
	position: absolute;
	bottom: 22px;
	left: 0px;
	height: 67%;
	max-height: 77%;
	width: 3%;
	border-radius: 100px;
	background: #FF6001;
	margin-left: 17px;
}

.delivery_chart {
	display: none;
}

.satisfied_text {
	border: 1px solid black;
	background: #556180;
	border-radius: 5px;
	margin-left: 5px;
	display: none;
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

.all_review {
	margin-top: 70px;
	width: 800px;
}

.review_search {
	list-style: none;
	padding-left: 0px;
	display: inline-block;
	float: right;
}

.review_search li {
	display: inline;
}

.review_search li:nth-child(n+2):before {
	display: inline-block;
	content: '';
	width: 1px;
	height: 10px;
	vertical-align: middle;
	background: #888;
	margin: -1px 11px 0 0;
}

.bottom_area {
	width: 800px;
	margin-left: 100px;
}

.review_contents_area {
	border-bottom: 1px solid #eee;
}

.review_contents_area ul {
	list-style: none;
	padding-left: 0px;
}

.review_contents_area ul li {
	border-top: 1px solid #eee;
	padding: 20px 0 30px;
}

.ico_user_level {
	display: inline-block;
	width: 40px;
	height: 45px;
	background-image: url(Images/ico_user_level.png);
}

.goods_inquiry {
	margin-top: 60px;
	display: inline-block;
}

.inquiry_btn {
	float: right;
	display: block;
	margin-top: 50px;
}

.inquiry_btn .btn_1 {
	border: 1px solid #ccc;
	background-color: #fff;
	min-width: 110px;
	color: #333;
	height: 34px;
}

.inquiry_btn .btn_2 {
	border: 1px solid #3a4c67;
	background: #3a4c67;
	color: #fff;
	height: 34px;
	min-width: 110px;
}

.inquiry_body {
	margin-top: 15px;
	border-top: 1px solid #eee;
}

.ico_nodata {
	display: block;
	content: '';
	margin: 0 auto 10px;
	width: 80px;
	height: 80px;
	background: url(Images/ico_img.png) -280px -120px;
	margin-top: 10px;
}

.inquiry_body div {
	text-align: center;
}

.delivery_info_area {
	margin-left: 100px;
	margin-top: 70px;
}

.delivery_info {
	border-top: 1px solid #e6e6e6;
	margin-top: 15px;
}

.delivery_info ul {
	padding-left: 0;
	line-height: 27px;
}

.delivery_info li {
	display: table-row;
}

.delivery_info em {
	display: table-cell;
	width: 170px;
	border-bottom: 1px solid #e6e6e6;
	padding: 17px 40px 18px 0;
	font-weight: 700;
	font-size: 14px;
	font-style: normal;
}

.delivery_info div {
	border-bottom: 1px solid #e6e6e6;
	padding-bottom: 18px;
}

.graph_area {
	display: inline-block;
	float: right;
}

.graph_area ul {
	padding-left: 0;
	margin-right: 50px;
	margin-top: 15px;
}

.graph_area ul li {
	border: 1px solid #eee;
	border-radius: 25%;
	height: 77px;
	width: 8px;
	display: inline-block;
	margin: 0 10px 0 10px;
}

.point_per {
	border: 1px solid #FF6001;
	border-radius: 4px;
	background-color: #FF6001;
	color: #fff;
	font-size: 10px;
	margin-right: 8px;
}

.graph1 {
	background: #ff6001;
}

.graph2 {
	background: #ff6001;
}

.graph3 {
	background: #ff6001;
}

.graph4 {
	background: #ff6001;
}

.graph5 {
	background: #ff6001;
	height: 96%;
}

.point_per:nth-child(n+2) {
	display: none;
}

.review_nick {
	display: inline;
	margin-left: -100px;
}

.review_date {
	margin-left: 6px;
	font-size: 13px;
}

.review_date2:before {
	display: inline-block;
	content: '';
	width: 1px;
	height: 10px;
	vertical-align: middle;
	background: #C4C4C4;
	margin: -1px 11px 0 0;
}

.best_review_box {
	border: 1px solid #ff6001;
	color: #ff6001;
	padding: 1px 5px;
	font-size: 12px;
}

.answer_comp {
	border: 1px solid #e5e5e5;
	color: #999;
	padding: 1px 5px;
	font-size: 12px;
}

.review_text2 {
	margin-top: 5px;
	line-height: 20px;
	display: inline-block;
	overflow: hidden;
	height: 40px;
	width: 80%;
}

.answer_box {
	border: 1px solid #fafafa;
	background: #eee;
	width: 650px;
	margin-top: 30px;
	padding: 20px 30px;
	margin-bottom: -10px;
	display: none;
}

.answer_date:before {
	display: inline-block;
	content: '';
	width: 1px;
	height: 10px;
	vertical-align: middle;
	background: #C4C4C4;
	margin: -1px 11px 0 0;
}

.answer_date {
	margin-left: 5px;
}

.btn_arrow_top {
	position: relative;
	float: right;
	display: none;
}

.btn_arrow_top:after {
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

.btn_arrow_bottom {
	position: relative;
	float: right;
	margin-top: 25px;
}

.btn_arrow_bottom:after {
	content: '';
	width: 8px;
	height: 8px;
	border-top: 1px solid #666;
	border-right: 1px solid #666;
	display: inline-block;
	transform: rotate(135deg);
	top: 0px;
	left: 0px;
	margin-left: 5px;
}

.review_img2 {
	width: 720px;
	height: 540px;
	display: none;
}

.review_img_small {
	width: 80px;
	height: 80px;
	margin-top: -80px;
	float: right;
}

.review_contents li {
	padding-top: 20px;
	padding-bottom: 30px;
}

.select_goods {
	padding-left: 0;
	border: 1px solid #eee;
	margin-top: 10px;
	display: block;
}

.select_goods li {
	padding: 15px;
	line-height: 2;
	background: #f5f5f5;
}

.qty_btn {
	border: 1px solid #ccc;
	display: inline-block;
	background: #fff;
}

.review_pop_img {
	position: relative;
	z-index: 1;
	float: left;
	width: 540px;
	height: 540px;
	overflow: hidden;
	background: #fff;
}

.inner_content {
	overflow: hidden;
	height: 540px;
	max-height: 540px;
	max-width: 1180px;
	width: 1180px;
	background-color: #fff;
	margin: auto;
}

.inner_content img {
	width: 100%;
	height: 100%;
	object-fit: contain;
}

.review_pop_head {
	padding-left: 60px;
	min-height: 44px;
	padding-top: 5px;
	margin-top: 30px;
}

.review_pop_body {
	padding-right: 0;
	padding-bottom: 0;
}

.review_pop_bottom {
	width: 100%;
	margin-top: 0;
	padding: 20px;
}

.user_level {
	position: relative;
	top: 0;
	left: 0;
}

.seq_list {
	display: inline-block;
	vertical-align: middle;
	margin-left: -95px;
	margin-top: -10px;
	padding-left: 0px;
}

.seq_list li {
	padding: 0 10px 0 0;
	font-size: 13px;
	color: #666;
	float: left;
	position: relative;
}

.seq_list .date:before {
	height: 10px;
	background: #e6e6e6;
	margin: 2px 10px 0 0;
	display: inline-block;
	content: '';
	width: 1px;
}

.seq_list li span {
	vertical-align: middle;
}

.review_pop_option {
	color: #999;
	padding: 10px 0 0;
}

.review_pop_option .tit {
	font-weight: 700;
	padding-right: 5px;
}

.review_pop_detail_desc {
	margin-top: 10px;
}

.review_pop_bottom {
	margin-top: 20px;
}

.answer_box2 {
	width: 100%;
	margin-top: 0;
	padding-top: 20px;
	background: #FAFAFA;
	padding-bottom: 20px;
	padding-left: 540px;
}

.answer_info ul {
	padding-left: 0;
}

.answer_box2 .date_li:before {
	height: 10px;
	background: #e6e6e6;
	margin: 2px 10px 0 0;
	display: inline-block;
	content: '';
	width: 1px;
	height: 10px;
	vertical-align: middle;
	background: #C4C4C4;
	margin: -1px 11px 0 0;
}

.answer_info li {
	display: inline;
}

.answer_message {
	color: #666;
	font-size: 13px;
	margin-top: 10px;
}

.paging {
	margin-top: 10px;
}

.paging_number {
	text-align: center;
	letter-spacing: 5px;
}

.point_49 {
	
}

.background {
	position: absolute;
	top: 90%;
	left: auto;
	width: 980px;
	z-index: 98;
	box-shadow: rgb(0 0 0/ 50%) 0 0 0 9999px;
}

.popup_close {
	top: 0;
	right: -45px;
	width: 45px;
	height: 45px;
	background: rgba(0, 0, 0, 0.5);
	text-align: center;
	color: #fff;
	font-size: 30px;
	position: absolute;
	right: -245px;
}

.btn_area:before {
	display: block;
	content: '';
	width: 100%;
	height: 245px;
	background: linear-gradient(180deg, rgba(255, 255, 255, 0) 4.17%,
		rgba(255, 255, 255, 0.961) 71.35%, #FFFFFF 100%);
	position: absolute;
	bottom: 0;
	left: 0;
}
</style>


<script type="text/javascript">
	$(function() {
		/* 옵션선택 메뉴 1 */
		$('#Open').click(function() {
			if ($("#list").css("display") == "none") {
				$('#list').show();
			} else {
				$('#list').hide();
			}

			if ($("#list2").css("display") == "block") {
				$('#list2').hide();
			}
		});

	});

	$(function() {
		/* 옵션선택 메뉴 2 */
		$('#Open2').click(function() {
			if ($("#list2").css("display") == "none") {
				$('#list2').show();
			} else {
				$('#list2').hide();
			}

		});

	});

	$(function() {
		/* 디테일 이미지들 펼치기 가리기 */
		$("#Open_detail").click(function() {
			if ($("#Detail_img_area").css("overflow") == "hidden") {
				$('#Detail_img_area').css('overflow', 'visible');
				$('#open_btn').hide();
			}
		});

	});

	$(function() {
		/* 디테일 이미지들 펼치기 가리기 */
		$('#Close_detail').click(function() {
			if ($("#Detail_img_area").css("overflow") == "visible") {
				$('#Detail_img_area').css('overflow', 'hidden');
				$('#open_btn').show();
			}
		});

	});

	$(function() {
		/* 배송방법 테이블 보이기 안보이기 */
		$('#delivery_btn').click(function() {

			if ($(".delivery_chart").css("display") == "none") {
				$('.delivery_chart').show();
			} else {
				$('.delivery_chart').hide();
			}

		});

		/* 구매 만족도 js */
		$('.buy_satisfied button').mouseleave(function() {
			$('.satisfied_text').hide();
		});

		$('.buy_satisfied button').mouseenter(function() {
			$('.satisfied_text').show();
		});

	});

	$(function() {

		/* 구매 만족도 js */
		$('.buy_satisfied button').mouseleave(function() {
			$('.satisfied_text').hide();
		});

		$('.buy_satisfied button').mouseenter(function() {
			$('.satisfied_text').show();
		});

	});

	$(function() {
		$('.btn_arrow_top').click(function() {
			$(this).parent().find(".review_text2").css('height', '40px');
			$(this).parent().find('.answer_box').css('display', 'none');
			$(this).parent().find('.review_img2').css('display', 'none');
			$(this).parent().find('.btn_arrow_top').css('display', 'none');
			$(this).parent().find('.btn_arrow_bottom').css('display', 'block');
		});

		$('.btn_arrow_bottom').click(function() {
			$(this).parent().find('.answer_box').css('display', 'block');
			$(this).parent().find('.review_img2').css('display', 'block');
			$(this).parent().find('.btn_arrow_bottom').css('display', 'none');
			$(this).parent().find('.btn_arrow_top').css('display', 'block');
		});
	});

	$(function() {

		var count = parseInt($('#qty').val());
		var origin_price = parseInt($('#origin_price').val());
		var price = parseInt($('#price').val());
		
		$('#minus').click(function() {
			origin_price = parseInt($('#origin_price').val());
			price = parseInt($('#price').val());
			count -= 1;
			
			if (count <= 0) {
				count = 1;
				alert('0이하 ㄴ');
			}
			
			$('#qty').val(count);
			price = price - origin_price;
			total_price = price;
			var total_price = price;
			$('#total_price').text(price);
			$('#price').val(price);
			return false;
		});

		$('#plus').click(function() {
			origin_price = parseInt($('#origin_price').val());
			price = parseInt($('#price').val());
			total_price = price;
			count += 1;
			$('#qty').val(count);
			price = origin_price * count;
			var total_price = origin_price;
			$('#total_price').text(price);
			$('#price').val(price);
			return false;
		});

		$('.close_btn').click(function() {
			$('.select_goods').hide();
		});
		
		$('.sel1').click(function() {
			$('.select_goods').show();
			$('.drop_down_list').hide();

		});

	});

	$(function() {
		$('.arrow_left').click(function() {

		});
		$(".basket_btn").click(function() {
			$("#total_price").text();
			return true;
		});
	});

	$(function() {
		$(".review_area ").click(function() {
			$(".background").css("display", "block");
		});
		$('.popup_close').click(function(){
			$(".background").css("display", "none");
		});
	});
	//레이어 팝업
	
	
</script>
<body onload="showImage()">
<div>
	<div class = "all_wrap">
			<div class="upimg">
			<img src="rankingimages/appdown.png" style= margin-top:-7px;>
			<img src="rankingimages/kakaopay.png" style=float:right;margin-top:-7px;>
		</div>
			<div class="header-inner">
					<div class="headermenu">
					로그인 | 회원가입 | 주문조회 | 고객센터</div>
					<div class="rankinglogo">
						<a href = "Project6/MainPage.jsp"><span><img src="rankingimages/ranking_logo.gif"></span></div></a>
						<div class="search"><input type="text" placeholder="MD혜택박스 31% 할인"style=border-radius:15px;width:316px;height:20px;background:#f2f2f2;><button id="btnimages" style=margin-left:-33px;margin-top:4px;></button></div>
						<div class="rankingicon">
							<img src="rankingimages/couponicon.png"> 
							<img src="rankingimages/mypageicon.png">
							<img src="rankingimages/carticon.png">
					</div>
				</div>
				
				<div id="menu1">
					<ul>
					<li><a href="#"><b>전체카테고리</b></a></li>
					<li style=margin-right:30px;><a href="#"><b>랭킹</b></a></li>
					<li style=margin-right:30px;><a href="#"><b>이달의 특가</b></a></li>
					<li style=margin-right:30px;><a href="#"><b>혜택정리</b></a></li>
					<li style=margin-right:30px;><a href="#"><b>1팩 담기</b></a></li>
					<li style=margin-right:30px;><a href="#"><b>브랜드관</b></a></li>
					<li style=margin-right:30px;><a href="#"><b>이벤트</b></a></li>
					<li><a href="#"><img src="rankingimages/expressmenu.png"></a></li>
					</ul>
				</div><!-- 상단 헤더 -->
				
					<%
						String name = request.getParameter("name");
						String image = request.getParameter("image");
						String review = request.getParameter("review");
						String each = request.getParameter("each");
						String normal_price = request.getParameter("normal_price");
						String idx = request.getParameter("idx");
					%>
					
			<div class = "goods_contents_area">
				
				<div class = "goods_contents">
				
					<div class = "goods_img_area">
					
						<img src = "Images/dt_img/<%=image %>" class = "goods_img">
						
						<p><img src="Images/특급배송.png" class= "delivery_banner"></p>
						
					</div><!-- 상품 이미지 -->
					
					
					
				<div class = "goods_info_area">
					<form action="shoppingbasket.jsp">
					<input type="hidden" value = "<%=image%>" name = "image">
					<div class = "goods_name">
						<input size="10"  name= "name" type = "text" value ="<%= name %>" style= "font-weight : bold; font-size : 24px; border-style: none; outline: none; width : 580px; padding-left : 0;" readonly/>
					</div>
					
					<div class = "rating_point_area">
						<a href = "#section02" class= "rating_point" onclick="ankerMove(this);">
							<span class = "point_49"></span>
						</a>
						
						<a href = "#section02" class = "score" onclick="ankerMove(this);">
							<%= review %>
						</a>
						
						<a href = "#section02" class = "revies_counts" onclick="ankerMove(this);">
							(7,608)
						</a>
					</div>
					
					<div class ="goods_price">
						<input name="origin_price" class = "price" id = "origin_price" style= "font-size :35px; outline : none; border : none; padding : 0; font-weight : bold; display : inline-block; width : 100px;" value = "<%=normal_price%>"><span style = "font-weight : bold; font-size : 35px; ">원</span>
						<div class = "one_pack">
							<%= each %>
						</div>
						
						<div class = "favorite_share">
						
							<button type="button" class ="favorite">
								
							</button>
							
							<div class = "share">
								<span></span>								
							</div>
						</div>
						
					</div>
					
					
					<%
					
						String index = request.getParameter("idx");
						int idx_1 = Integer.parseInt(index);
						int goodsindex = idx_1;
						
						GoodsDao g_dao = new GoodsDao();
						g_dao.Goods_detail(idx_1);
						ArrayList<GoodsDto> g_list = new ArrayList<GoodsDto>();
						
					%>
					
					 <script>
					 
						$(function(){
							alert(<%=g_dao%>);
						});
						
					</script>
					
					<div class = "orange_mem_benefit_box">
						<a href = "https://www.rankingdak.com/landing/content?cont=orangeJoin" class = "box_head">
						<i class ="ico_crown"></i>
						<span class="orange_mem_text">오렌지멤버스 혜택</span>
						<span style = " float:right; font-size:10px; position:relative; margin-left:0px; margin-top:5px;">바로가기
							<i class= "arrow"></i></span>
						</a>
						
						<div class = "box_bottom">
							<span>멤버스 추가적립</span>
							<strong style="font-size : 20px; float : right; margin-top:-5px;">3%</strong>
						</div>
						
					</div><!-- 오렌지 멤버스 혜택 박스 -->
					
					<div class = "etc_contents">
						<div class = "text1_area">
							<div style="display: inline;">
								<span class= "text1">판매량</span>
							</div>
							<div style="display:inline; margin-left:50px;">
								<strong>382,212</strong>
							팩 구매
							</div>
						</div>
						<div class = "text1_area">
							<div style="display: inline;">	
								<span class= "text1">배송방법</span>
							</div>
							<div style="display:inline; margin-left:50px;">
								<i class = "delivery_special"></i>
								<span style="vertical-align: top;">/</span>
								<i class = "delivery_free"></i>
							</div>
							
							<button  type="button"  class = "arrow_bottom" id = "delivery_btn"
								style = "background: #fff; border : 0; cursor: pointer; float : right;">
							</button>
							
							<div class= "delivery_chart_area">
								<div class="delivery_chart">
									<table class = "deli_table">
							<tr>
								<td colspan="2" style="text-align: center; background: #ccc;">
									<i class="delivery_special" style="text-align: center;"></i>
								</td>
								
								<td colspan="2"
									style="text-align: center; background: #ccc; border-left: 1px solid #ccc;">
									<i class="delivery_free"></i>
								</td>
							</tr>

							<tr>
								<td style="vertical-align: top;">당일</td>
								
								<td>13시 이전 주문 시<br />오늘 저녁 도착
								</td>

								<td style="border-left: 1px solid #ccc;">일반</td>
								<td>24시 이전 주문 시 내일 도착</td>
							</tr>

							<tr style="margin-top: 5px;">
								<td style="vertical-align: top; border-bottom: 1px solid #ccc;">
									새벽</td>

								<td style="border-bottom: 1px solid #ccc; padding-bottom: 10px;">
									20시 이전 주문 시<br /> 내일 새벽 도착
								</td>

								<td
									style="border-left: 1px solid #ccc; border-bottom: 1px solid #ccc;">

								</td>

								<td style="border-bottom: 1px solid #ccc;"></td>
							</tr>

							<tr>
								<td>4만원 이상</td>
								<td>무료</td>

								<td style="border-left: 1px solid #ccc;" rowspan="5">기본</td>

								<td style="text-align: center;" rowspan="5">2만원 이상<br /> 무료
									배송
								</td>
							</tr>

							<tr>
								<td>4만원 미만</td>

								<td>+3,000원</td>
							</tr>

							<tr>
								<td style="padding-bottom: 10px;">(수도권 및 충청권)</td>

								<td></td>

								<td></td>
							</tr>

							<tr>
								<td style="border-top: 1px solid #ccc;">최소 주문 금액</td>

								<td style="border-top: 1px solid #ccc;">2만원</td>
							</tr>

							<tr>
								<td>오렌지 멤버스</td>

								<td>조건 없이 이용 가능</td>
							</tr>
						</table>
								</div>
							</div>
						</div>
						<div class = "text1_area">
							<div style="display: inline;">	
								<span class= "text1">적립혜택</span>
							</div>
							<div style="display:inline; margin-left:50px;">
								<strong>1</strong>% 적립
							</div>
						</div>
						<div class = "text1_area_end">
							<div style="display: inline-block;">
								<span class= "text1_end">추가혜택</span>
							</div>
							<div style="display:inline; margin-left:50px; vertical-align: top;">
								<span style = "display: inline-block;">
									[ 추가 증정 EVENT★ ]<br/>
									10팩 / 30팩 이상 구매 시, 수량 별 증정품 추가 지급!<br/>
									10팩이상: 스파클링<br/>
									30팩이상: 스파클링+젤리+단백한순간
								</span>
							</div>
						</div>
					</div><!-- 상품 판매량 및 추가 혜택 -->
					
					<div class = "option_sel_area">
						<strong class= "option_sel">
							옵션선택
						</strong>
						
						<div class = "option1_box">
							<a href ="javascript:;" id = "Open">
								<span class = "option1">
									상품옵션선택
									<i class="arrow_bottom" style ="float: right;" id= "arrow_b"></i>
								</span>
							</a>
							
							<div class= "drop_down_list" id="list">
								<ul class= "select_list_area">
									<li class ="sel1">
										<a href="javascript:;">
											<span style="font-weight: 400;">5팩</span>
											<p style="margin-top :7px;">
												<span style="font-weight: 700; ">22,900</span>원
												<span style="color:#FF6001; font-size:13px;">(1팩당 4,580원)</span>
											</p>
										</a>
									</li>
									<li class ="sel1">
										<a href="javascript:;">
											<span style="font-weight: 400;">10팩(+20,900)</span>
											<p style="margin-top :7px;">
												<span style="font-weight: 700; ">43.800</span>원
												<span style="color:#FF6001; font-size:13px;">(1팩당 4,380원)</span>
											</p>
										</a>
									</li>
									<li class ="sel1">
										<a href="javascript:;">
											<span style="font-weight: 400;">20팩(+60,700원)</span>
											<p style="margin-top :7px;">
												<span style="font-weight: 700; ">83,600</span>원
												<span style="color:#FF6001; font-size:13px;">(1팩당 4,180원)</span>
											</p>
										</a>
									</li>
									<li class ="sel1">
										<a href="javascript:;">
											<span style="font-weight: 400;">30팩</span>
											<p style="margin-top :7px;">
												<span style="font-weight: 700; ">119,400</span>원
												<span style="color:#FF6001; font-size:13px;">(1팩당 3,980원)</span>
											</p>
										</a>
									</li>

								</ul>
								
							</div><!-- 옵션 내려갓을때 목록들 -->
							
						</div>
								
						
						<div class = "option2_box">
							<a href ="javascript:;" id = "Open2">
								<span class = "option2">
									건강간식  &amp; 소스 추가구성
									<i class="arrow_bottom" style ="float: right;"></i>
								</span>
							</a>
							
							<div class= "drop_down_list" id="list2">
								<ul class= "select_list_area">
									<li class ="sel1">
											<img src="Images/option/1.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												유기농 군밤 1팩
											</span>
											<p>
												<strong>2,390</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/2.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												아이스 꿀고구마 1팩
											</span>
											<p>
												<strong>2,790</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/3.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												아이스 단호박 1팩
											</span>
											<p>
												<strong>2,600</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/4.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												(맛있닭)프레쉬홈 핫소이 소스 265g
											</span>
											<p>
												<strong>2,700</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/5.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												(맛있닭)프레쉬홈 스위트 칠리소스 265g
											</span>
											<p>
												<strong>2,700</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/6.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												(맛있닭)프레쉬홈 레몬갈릭소스 265g
											</span>
											<p>
												<strong>2,700</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/7.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												(맛있닭)프레쉬홈 쓰리라차 칠리소스 265g
											</span>
											<p>
												<strong>2,700</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/8.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												(맛있닭)프레쉬홈 오리엔탈 드레싱소스 265g
											</span>
											<p>
												<strong>2,700</strong>
												원
											</p>
										</a>
									</li>
									<li class ="sel1">
										<img src="Images/option/9.png" style = "width :60px; height: 60px;">
										<a href="javascript:;" style="display : inline-block; margin-left: 10px; width : 400px; height : 60px;">
											<span class = "goods_opt">
												(맛있닭)프레쉬홈 샐러드 파스타소스 265g
											</span>
											<p>
												<strong>2,700</strong>
												원
											</p>
										</a>
									</li>
									
								</ul>
							</div><!-- 옵션 내려갓을때 목록들 -->
							
						</div>
							<ul class = "select_goods">
									<li>
										<div id = "goods_name">
											스테이크 오리지널 1팩
											<input class = "close_btn"type="button" value="x" style="border : none; cursor:pointer; position: relative; float : right;">
										</div>
											<div class = "qty_btn">
												<button onclick ='count("minus")'  id="minus" style = "cursor : pointer; background : #fff; border : 0; padding-left: 10px;">-</button>
												<input name="qty" type= "text" id= "qty" value="1" style=" width:10px; outline: none;  border:0 solid black; text-align: center; width :20px;" readonly/>
												<button onclick ='count("plus")' id="plus"  style = "cursor : pointer; background : #fff; border : 0; padding-right: 10px;">+</button>
											</div>
											
											<span  style = "float : right; margin-top: 8px;"></span>
										<div style = "display : inline;">
											<input  type = "text" id="price" name="price" style = "float:right;font-size:20px;font-weight:700;outline:none;background:#f5f5f5;border:1px solid #f5f5f5; text-align: right;" readonly value="<%= normal_price%>">
										</div><span>원</span>
									</li>
								</ul>
							<div class = "total_price_area" >
								<span style = "font-size : 16px;">총 상품금액</span>
								<p class = "total_price">
										<strong id="total_price"  class="order_price"><%=normal_price %></strong>
								</p><span>원</span>
								<div class= "plus_point_area">
									<div class = "plus_point_box" style= "display : inline-block;">
										<i class="ico_crown"></i>
										<strong class="plus_point">
											687P 추가
										</strong>
										적립 받기
										<i class= "ico_arr_right"></i>
									</div><!-- plus_point_area -->
										
										<span class = "total_point_area">
											(총 포인트
											<span id = "goods_point"class = "주문총가격/100 적립">
												229
											</span>
											P)
										</span>
										
								</div><!-- plus_point_area  -->
								
								<div class = "btn_area">
										<button  class = "basket_btn" >
											<span class="basket_text">장바구니</span>
										</button>
										<a href = "구매결제창"> <input type = "button" class = "buy_now_btn" value="바로구매" style = cursor:pointer;/></a>
								</div><!-- 장바구니 바로구매 영역 -->
							
							</div><!-- total_price_area -->
						</form>
					</div><!-- 제품 옵션 선택 영역 -->
				</div><!-- 상품 내용 영역-->
				
				</div><!-- 제품 사진 이름 부터 주문구간까지  -->
				
				<%
					ReviewDAO_top dao_count = new ReviewDAO_top();
					ArrayList<ReviewDTO> list_count = dao_count.CountReview();
					
					int count = 0;
					for(ReviewDTO c : list_count){
						count +=1;
						out.print(count);
						
					}
				%>
				<div class = "best_review_area">
				
					<div class = 'title_text'>
							<strong>베스트 구매후기</strong>
							<span style = "font-weight: 400; font-size : 16px; color : #ff6001;">()</span>
							
						<a href = '#section02' class = 'btn_all_review'>
						<span>전체후기</span>
						<i class = 'arrow'>
						</i>
						</a><!-- 전체후기 -->
					</div>
						
				<%
					ReviewDAO_top dao = new ReviewDAO_top();
					ArrayList<ReviewDTO> list = dao.selectReview();
				%>
					
				<%
					for(ReviewDTO r : list){
					out.print("<div class = 'review_area' id='review_area'>");
					out.print("<a href = 'javascript:;' onClick='openPop();' class = 'review_button'>");
						out.print("<img src='Images/review_img/"+r.getImg()+"' class='review_img'>");
						out.print("<div class='point_5'>");
							out.print("<div class = 'Point'>");
							out.print("<div class =" + r.getPoint() +" ></div>");
							out.print("</div>");
							out.print("<span class = 'review_nickname'>");
								out.print(r.getNickname());
							out.print("</span>");
							
							out.print("<span class = 'review_date'>");
								out.print(r.getDate_1());
							out.print("</span>");
						out.print("</div>");
						
						out.print("<div class = 'review_text'>");
							out.print(r.getContents()); 
						out.print("</div>");
						out.print("</a>");
					out.print("</div>");
					}
					%>
					
					</div>
						 <form name="frmData" id="frmData" method="post">
						<div class="background"style=display:none;>
							<div class = "swiper_slide">
								<div class = "inner_content">
									<div class = review_pop_img>
										<img src="Images/review_img/review1.png">
									</div>
									
									<div class = "review_pop_text">
										<div class = "review_pop_head">
											<span class = "user_level">
												<i class = "ico_user_level">
													
												</i>
											</span>
											
											<em class = "rating_point">
												<span class = "point5">
												
												</span>
											</em>
											
											<ul class = "seq_list">
												<li>
													<span class = "name">
														타이레놀z
													</span>
													
												<li>
													<span class = "date">
														2022.07.06
													</span>
												</li>
											</ul>
										</div>
										
										<div class = "review_pop_body">
											 <p class = "review_pop_option">
											 	<span class ="tit">
											 		옵션
											 	</span>
											 	30팩
											 </p>
											 <p class = "review_pop_detail_desc">
											 	전자렌지에 익혀 먹어도 제입맛에는 맞네요ㅎㅎ<br/>
												배송도 빠르고 잘포장해주셔서 감사합니다!
											 </p>
										</div>
										
										<div class = "review_pop_bottom">
											<div class = "answer_box2">
												<div class = "answer_info" >
													<ul>
														<li style = "padding-right : 10px;">
															<span class = "name">
																닭대리
															</span>
														</li>
														
														<li class = "date_li">
															<span class = "date">
																2022.07.10
															</span>
														</li>
													</ul>
													
													<p class = "answer_message">
														<span>
															안녕하세요. 랭킹닭컴입니다❤<br/><br/>
	
															회원님의 소중한 후기 감사드립니다!<br/>
															무더운 여름에도 랭킹닭컴과 건강한 득근하시길 바랍니닭!<br/>
															늘 행복하고 건강하시길바랍니다. ᕙ(•̀‸•́ ‶)ᕗ <br/><br/>
															
															🐔닭대리 올림🐔
														</span>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div><!-- inner_content -->
								<button class="popup_close">x</button>
								
							</div>
						</div>
						</form>
					</div><!-- goods_contents_area -->
					
				<!-- 베스트  리뷰 영역 -->
			
				
			<div class ="recommend_goods_area">
				<h3>고객님을 위한 추천상품</h3>
				
				<ul class = "recommend_goods_list" >
					<li style=" display: inline;">
						<img id = "rd_img" class = "recommend_img">
					</li>
					<li style=" display: inline;">
						<img id = "rd_img2" class = "recommend_img">
					</li>
					<li style=" display: inline;">
						<img id = "rd_img3" class = "recommend_img">
					</li>
					<li style=" display: inline;">
						<img id = "rd_img4" class = "recommend_img">
					</li>
					<li style=" display: inline;">
						<img id = "rd_img5" class = "recommend_img">
					</li>
				</ul>
				
				
			</div><!-- 고객님을 위한 추천상품 영역-->
				
				<div class = "detail_all_area">
					<div class = "option_select_area">
						<div class = "inner_area">
							<div class = "option_sel_box">
								옵션 선택
								<a href = "javascript:;">
									<div class = "opt_box1">
										상품옵션선택
										<i class = "arrow_bottom" style = "float : right; margin-right : 10px;"></i>
									</div>
								</a>
								<a href = "javascript:;">	
									<div class = "opt_box2">
										건강간식 &amp; 소스 추가구성
										<i class = "arrow_bottom" style = "float : right; margin-right : 10px;"></i>
									</div>
								</a>	
							</div>
							
						</div>
					</div>
					<div class = "tab_area">
						<ul class = "tab_list">
						
							<li>
								<a  href = "#section01" class = "tab_text">상품정보</a>
							</li>
							
							<li>
								<a  href = "#section02" class = "tab_text">구매후기</a>
							</li>
							
							<li>
								<a href = "#section03" class = "tab_text">상품문의</a>
							</li>
							
							<li>
								<a href = "#section04" class = "tab_text">구매정보</a>
							</li>
						
						</ul>
						
					</div><!-- 탭 구간 -->
					
					<%
					
						//int idx_1 = Integer.parseInt(index);
						
						GoodsDao i_dao = new GoodsDao();
						i_dao.Goods_detail(idx_1);
						ArrayList<GoodsDto> img_list = new ArrayList<GoodsDto>();
						
					%>
	
					<div class = "detail_img_area" id = "Detail_img_area">
						<div>
							<img src = "Images/1.브리또/1000/1000b.png">
							<img src = "Images/1.브리또/1000/1000c.png">
							<img src = "Images/1.브리또/1000/1000d.png">
							<img src = "Images/1.브리또/1000/1000e.png">
							<img src = "Images/1.브리또/1000/1000f.png">
							<img src = "Images/1.브리또/1000/1000g.png">
							<img src = "Images/1.브리또/1000/1000h.png">
							<img src = "Images/1.브리또/1000/1000i.png">
							<img src = "Images/1.브리또/1000/1000j.png">
							<img src = "Images/1.브리또/1000/1000k.png">
							<img src = "Images/1.브리또/1000/1000l.png">
							<img src = "Images/1.브리또/1000/1000m.png">
							<img src = "Images/1.브리또/1000/1000n.png">
							<img src = "Images/1.브리또/1000/1000o.png">
							<img src = "Images/1.브리또/1000/1000p.png">
							<img src = "Images/1.브리또/1000/1000q.png">
							<img src = "Images/1.브리또/1000/1000r.png">
							<img src = "Images/1.브리또/1000/1000s.png">
							<img src = "Images/1.브리또/1000/1000t.png">
							<img src = "Images/1.브리또/1000/1000u.png">
							<img src = "Images/1.브리또/1000/1000v.png">
							<img src = "Images/1.브리또/1000/1000w.png">
							<img src = "Images/1.브리또/1000/1000x.png">
							<img src = "Images/1.브리또/1000/1000y.png">
							<img src = "Images/1.브리또/1000/1000z.png">
							<img src = "Images/1.브리또/1000/1000za.png">
							
						
						</div>
						
						<div class = "btn_area" id = "close_btn">
							<button type = "button" class = "detail_img_open" id = "Close_detail">
								<span >상품설명 접기</span>
								<i class = "arrow_top" style = "margin-left: 10px;"></i>
							</button>
						</div>
						
					</div><!-- 상세페이지 이미지들 -->
					
						<div class = "btn_area" id = "open_btn">
							<button type = "button" class = "detail_img_open" id = "Open_detail">
								<span >상품설명 전체보기</span>
								<i class = "arrow_bottom" style = "margin-left: 10px;"></i>
							</button>
						</div>
						
						
					
				</div><!-- 제품 상세페이지 전체구간 -->
					
					<div class= "bottom_area">
					<div class = "refrigerator" style = "margin-top : 30px;">
						<img src = "Images/refrigerator.png">
					</div>
					
					<div id = "section02">
						<div class = "buy_satisfied">
							구매 만족도
							<button type="button">
								<i class = "ico_i">
									
								</i>
							</button>
							
							<span class="satisfied_text" style="color: #fff;">욕설,비방,광고,개인
							정보 유출 등 상품과 관련없는 내용이 포함된 글은 예고없이 삭제 될 수 있습니다.</span>
						</div>
					
						<div class = "buy_satisfied_box">
						
							<div class = "rating_point_sat">
								<div style = "text-align: center; font-size : 36px; font-weight : 700;">
									4.9
								</div>
								
								<em class = "review_point">
									<span class = "point_49"></span>
								</em>
								<span style = "display:block; text-align: center; color : #666; margin-top :5px;">
									총 7,594건
								</span>
								
							</div>
						
							<div class = "Average_point">
								<span class = "reviews_count">7,595</span>
								건의 리뷰 중<br/>
								<span class = "per_point">93%</span>
								고객이
								<span class = "give_point5">5점</span>
								을 주었어요.
							</div>
							
							<div class = "graph_area">
								<span class = "point_per">98%</span>
								<span class = "point_per">0%</span>
								<span class = "point_per">0%</span>
								<span class = "point_per">0%</span>
								<span class = "point_per">0%</span>
								<ul>
									<li class = "graph5"></li>
									<li class = "graph4"></li>
									<li class = "graph3"></li>
									<li class = "graph2"></li>
									<li class = "graph1"></li>
								</ul>
								
							</div>
							
						</div>
					
				</div><!-- 제품 사진 이름 부터 끝구간까지 -->
				<%
					ReviewDAO_top r_dao = new ReviewDAO_top();
					ArrayList<ReviewDTO> r_list = dao.Review_all();
					
				%>
				
				<%
				
				out.print("<div class = 'all_review'>");
					out.print("<div class = 'review_head'>");
						out.print("<span>");
						out.print("<strong>전체후기</strong>");
						out.print("</span>");
						
						out.print("<span>");
						out.print("(63,289)");
						out.print("</span>");
						out.print("개");
						out.print("<ul class = 'review_search'>");
						out.print("<li>베스트순</li>");
						out.print("<li>최신순</li>");
						out.print("<li>등급별</li>");
							out.print("</ul>");
						out.print("</div>");
				for(ReviewDTO r : r_list){
				out.print("<div class = 'review_contents_area'>");
				out.print("<ul class = 'review_contents'>");
				out.print("<li>");
				out.print("<i class = 'ico_user_level'></i>");
				out.print("<em class = 'rating_point'>");
				out.print("<span class = 'point5'></span>");
				out.print("</em>");
				out.print("<p class= 'review_nick'>"+ r.getNickname()  + "</p>");
				out.print("<span class = 'review_date2'>"+ r.getDate_1() +"</span>");
							out.print("<span class = 'best_review_box'>베스트 리뷰</span>");
							out.print("<span class = 'answer_comp'>베스트 리뷰</span>");
							out.print("<p style='margin-top: 5px;'>");
								out.print("<span style = 'font-weight : 700; padding-rigth : 5px; color : #999;'>옵션</span>");
								out.print("<span>오리지날 1팩</span>");
							out.print("</p>");
							out.print("<p class = 'review_text2'>");
								out.print(r.getContents());
							out.print("</p>");
							out.print("<img  class = 'review_img_small' src='Images/review_img/"+r.getImg()+"'>");
							out.print("<button class = 'btn_arrow_bottom'>펼치기</button>");
							
							out.print("<img class = 'review_img2' src='Images/review_img/"+r.getImg()+"'>");
							out.print("<div class = 'answer_box'>");
								out.print("<div class = 'answer_top'>");
									out.print("<span>"+ r.getAs_nick() +"</span>");
									out.print("<span class = 'answer_date'>"+r.getAs_date() +"</span>");
								out.print("</div>");
								out.print("<span>");
									out.print(r.getAs_contents());
								out.print("</span>");
							out.print("</div>");
							out.print("<button class = 'btn_arrow_top'>닫기</button>");
							/* 리뷰 답변 */
						out.print("</li>");
						
					out.print("</ul>");
				out.print("</div>");
				}
				out.print("</div>");
				%>
			
				<div class = "paging">
					<div class = "paging_number">
						<i class = "arrow_left" ></i>
						<a href = "test99.jsp#section02">1</a>
						<a href = "detail_page2.jsp#section02">2</a>
						<i class = "arrow_right"></i>
					</div>
				</div>
				<div id = "section03">
					
					<script>
						$(this).ready(function(){
							$(".detail_cs_bnr").load("detailproductcoment.html");
						});
					</script>
					
				<div class="detail_cs_bnr" id="section04">
				</div>
				
				</div> <!-- 배송안내,교환/반품 안내 -->
			</div><!-- goods_contents_area -->
			</div><!-- all_wrap -->
			
</body>
</html>