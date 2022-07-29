<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="ranking.Detail_Dao"%>
<%@ page import="ranking.Detail_Vo"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
<script src="js/jquery-3.6.0.min.js"></script>
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
}

.rating_point [class*="point"] { /* 레이팅 점수 width로 조정할 수 있음 */
	display: block;
	width: 92px;
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
}

.point_5 {
	margin-bottom: 10px;
}

.review_date {
	border-left: 1px solid #eee;
	padding-left: 5px;
}

.review_text {
	padding-right: 130px;
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
	margin-top: 30px;
	margin-left: 100px;
	max-height: 2000px;
	overflow: hidden;
}

.detail_img_open {
	border: 1px solid #000;
	width: 646px;
	text-align: center;
	margin-left: 100px;
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
	margin-left: 100px;
	margin-top: 70px;
}

.buy_satisfied_box {
	border: 1px solid #eee;
	background: #fafafa;
	padding: 28px 40px;
	width: 800px;
	height: 159px;
	margin-top: 10px;
	margin-left: 100px;
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

.graph {
	display: inline-block;
	margin-left: 60px;
	position: absolute;
	margin-top: 30px;
}

.graph1 {
	border: 1px solid #eee;
	display: inline-block;
	margin: 0 15px;
	border-radius: 100px;
	height: 80px;
	width: 8px;
	margin-bottom: 0px;
}

.graph2 {
	border: 1px solid #eee;
	display: inline-block;
	margin: 0 15px;
	border-radius: 100px;
	height: 80px;
	width: 8px;
}

.graph3 {
	border: 1px solid #eee;
	display: inline-block;
	margin: 0 15px;
	border-radius: 100px;
	height: 80px;
	width: 8px;
}

.graph4 {
	border: 1px solid #eee;
	display: inline-block;
	margin: 0 15px;
	border-radius: 100px;
	height: 80px;
	width: 8px;
}

.graph5 {
	border: 1px solid #eee;
	display: inline-block;
	margin: 0 15px;
	border-radius: 100px;
	height: 80px;
	width: 8px;
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
</style>


<script type="text/javascript">
	
		$(function(){
			/* 옵션선택 메뉴 1 */
			$('#Open').click(function(){
				if($("#list").css("display") == "none" ){
					$('#list').show();
				}else{
					$('#list').hide();
				}
				
				
				if($("#list2").css("display") == "block"){
					$('#list2').hide();
				}
			});
			
		});
		
		$(function(){
			/* 옵션선택 메뉴 2 */
			$('#Open2').click(function(){
				if($("#list2").css("display") == "none" ){
					$('#list2').show();
				}else{
					$('#list2').hide();
				}
				
			});
			
		});
		
		$(function(){
			/* 디테일 이미지들 펼치기 가리기 */
			$("#Open_detail").click(function(){
				if($("#Detail_img_area").css("overflow") == "hidden"){
					$('#Detail_img_area').css('overflow', 'visible');
					$('#open_btn').hide();
				}
			});
			
		});
		
		$(function(){
			/* 디테일 이미지들 펼치기 가리기 */
			$('#Close_detail').click(function(){
				if($("#Detail_img_area").css("overflow") == "visible"){
					$('#Detail_img_area').css('overflow', 'hidden');
					$('#open_btn').show();
				}
			});
			
		});
		
		$(function(){
			/* 배송방법 테이블 보이기 안보이기 */
			$('#delivery_btn').click(function(){
				
				if($(".delivery_chart").css("display") == "none"){
					$('.delivery_chart').show();
				}else{
					$('.delivery_chart').hide();
				}
				
			});
			
			/* 구매 만족도 js */
			$('.buy_satisfied button').mouseleave(function(){
				$('.satisfied_text').hide();
			});
			
			$('.buy_satisfied button').mouseenter(function(){
				$('.satisfied_text').show();
			});
			
			
			
		});
	</script>
<body>

	<div class="all_wrap">
		<script>
			$(this).ready(function() {
				$("#head_inner").load('MainFrame.html');
			});
		</script>
		<div id=head_inner></div>

		<div class="goods_contents_area">
			<%
				Detail_Dao dao = new Detail_Dao();
				ArrayList<Detail_Vo> list = dao.selectGoods();
			%>
			<%		
					out.print("<div class = 'goods_contents'>");
				
					out.print("<div class = 'goods_img_area'>");
					
					out.print("<img src = Images/1.브리또/1000/"+list.get(0).getImage()+" class = 'goods_img'>");
					
					out.print("<a href='https://www.rankingdak.com/display/expressDeliveryList'><p><img src=Images/특급배송.png class= 'delivery_banner'></p></a>");
					
					out.print("</div>");/* 상품 이미지 */
					
					out.print("<div class = 'goods_info_area'>");
					
					out.print("<div class = 'goods_name'>");
						out.print("<h2>"+ list.get(0).getName() +"</h2>");
					out.print("</div>");
					
					out.print("<div class = 'rating_point_area'>");
						out.print("<a href = '#' class= 'rating_point' onclick='ankerMove(this);'>");
							out.print("<span class = 'point_49'></span>");
						out.print("</a>");
						
						out.print("<a href = '#' class = 'score' onclick='ankerMove(this);'>");
							out.print( list.get(0).getReview() +"점");
						out.print("</a>");
						
						out.print("<a href = '#' class = 'revies_counts' onclick='ankerMove(this);'>");
							out.print("(7,608)");
						out.print("</a>");
					out.print("</div>");
					
					out.print("<div class ='goods_price'>");
						out.print("<p class = 'price'><strong style='font-size :35px;'>"+list.get(0).getNormal_price()+"</strong>원</p>");
					out.print("<div class = 'one_pack'>");
						out.print(list.get(0).getEach());
					out.print("</div>");
						
						out.print("<div class = 'favorite_share'>");
						
							out.print("<button type='button' class ='favorite'>");
							
							out.print("</button>");
							
							out.print("<div class = 'share'>");
								out.print("<span></span>");								
							out.print("</div>");
						out.print("</div>");
						
					out.print("</div>");
					out.print("<div class = 'orange_mem_benefit_box'>"
						+ "<a href = 'https://www.rankingdak.com/landing/content?cont=orangeJoin' class = 'box_head'>"
						+ "<i class ='ico_crown'></i>"
						+ "<span class='orange_mem_text'>오렌지멤버스 혜택</span>"
						+ "<span style = ' float:right; font-size:10px; position:relative; margin-left:0px; margin-top:5px;'>바로가기"
						+ "<i class= 'arrow'></i></span>"
						+ "</a>");
					%>

			<div class="box_bottom">
				<span>멤버스 추가적립</span> <strong
					style="font-size: 20px; float: right; margin-top: -5px;">3%</strong>
			</div>

		</div>
		<!-- 오렌지 멤버스 혜택 박스 -->

		<div class="etc_contents">
			<div class="text1_area">
				<div style="display: inline;">
					<span class="text1">판매량</span>
				</div>
				<div style="display: inline; margin-left: 50px;">
					<strong>382,212</strong> 팩 구매
				</div>
			</div>
			<div class="text1_area">
				<div style="display: inline;">
					<span class="text1">배송방법</span>
				</div>
				<div style="display: inline; margin-left: 50px;">
					<i class="delivery_special"></i> <span style="vertical-align: top;">/</span>
					<i class="delivery_free"></i>
				</div>

				<button type="button" class="arrow_bottom" id="delivery_btn"
					style="background: #fff; border: 0; cursor: pointer; float: right;">
				</button>

				<div class="delivery_chart_area">
					<div class="delivery_chart">
						<table class="deli_table">
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

								<td style="text-align: center;" rowspan="5">2만원 이상<br />
									무료 배송
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
			<div class="text1_area">
				<div style="display: inline;">
					<span class="text1">적립혜택</span>
				</div>
				<div style="display: inline; margin-left: 50px;">
					<strong>1</strong>% 적립
				</div>
			</div>
			<div class="text1_area_end">
				<div style="display: inline-block;">
					<span class="text1_end">추가혜택</span>
				</div>
				<div
					style="display: inline; margin-left: 50px; vertical-align: top;">
					<span style="display: inline-block;"> [ 추가 증정 EVENT★ ]<br />
						10팩 / 30팩 이상 구매 시, 수량 별 증정품 추가 지급!<br /> 10팩이상: 스파클링<br />
						30팩이상: 스파클링+젤리+단백한순간
					</span>
				</div>
			</div>
		</div>
		<!-- 상품 판매량 및 추가 혜택 -->

		<div class="option_sel_area">
			<strong class="option_sel"> 옵션선택 </strong>

			<div class="option1_box">
				<a href="javascript:;" id="Open"> <span class="option1">
						상품옵션선택 <i class="arrow_bottom" style="float: right;" id="arrow_b"></i>
				</span>
				</a>

				<div class="drop_down_list" id="list">
					<ul class="select_list_area">
						<li class="sel1"><a href="javascript:;"> <span
								style="font-weight: 400;">5팩</span>
								<p style="margin-top: 7px;">
									<span style="font-weight: 700;">22,900</span>원 <span
										style="color: #FF6001; font-size: 13px;">(1팩당 4,580원)</span>
								</p>
						</a></li>
						<li class="sel1"><a href="javascript:;"> <span
								style="font-weight: 400;">10팩(+20,900)</span>
								<p style="margin-top: 7px;">
									<span style="font-weight: 700;">43.800</span>원 <span
										style="color: #FF6001; font-size: 13px;">(1팩당 4,380원)</span>
								</p>
						</a></li>
						<li class="sel1"><a href="javascript:;"> <span
								style="font-weight: 400;">20팩(+60,700원)</span>
								<p style="margin-top: 7px;">
									<span style="font-weight: 700;">83,600</span>원 <span
										style="color: #FF6001; font-size: 13px;">(1팩당 4,180원)</span>
								</p>
						</a></li>
						<li class="sel1"><a href="javascript:;"> <span
								style="font-weight: 400;">30팩</span>
								<p style="margin-top: 7px;">
									<span style="font-weight: 700;">119,400</span>원 <span
										style="color: #FF6001; font-size: 13px;">(1팩당 3,980원)</span>
								</p>
						</a></li>

					</ul>
				</div>
				<!-- 옵션 내려갓을때 목록들 -->

			</div>

			<div class="option2_box">
				<a href="javascript:;" id="Open2"> <span class="option2">
						건강간식 &amp; 소스 추가구성 <i class="arrow_bottom" style="float: right;"></i>
				</span>
				</a>

				<div class="drop_down_list" id="list2">
					<ul class="select_list_area">
						<li class="sel1"><img src="Images/option/1.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> 유기농 군밤 1팩 </span>
								<p>
									<strong>2,390</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/2.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> 아이스 꿀고구마 1팩 </span>
								<p>
									<strong>2,790</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/3.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> 아이스 단호박 1팩 </span>
								<p>
									<strong>2,600</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/4.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> (맛있닭)프레쉬홈 핫소이 소스 265g </span>
								<p>
									<strong>2,700</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/5.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> (맛있닭)프레쉬홈 스위트 칠리소스 265g </span>
								<p>
									<strong>2,700</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/6.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> (맛있닭)프레쉬홈 레몬갈릭소스 265g </span>
								<p>
									<strong>2,700</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/7.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> (맛있닭)프레쉬홈 쓰리라차 칠리소스 265g </span>
								<p>
									<strong>2,700</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/8.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> (맛있닭)프레쉬홈 오리엔탈 드레싱소스 265g </span>
								<p>
									<strong>2,700</strong> 원
								</p>
						</a></li>
						<li class="sel1"><img src="Images/option/9.png"
							style="width: 60px; height: 60px;"> <a href="javascript:;"
							style="display: inline-block; margin-left: 10px; width: 400px; height: 60px;">
								<span class="goods_opt"> (맛있닭)프레쉬홈 샐러드 파스타소스 265g </span>
								<p>
									<strong>2,700</strong> 원
								</p>
						</a></li>

					</ul>
				</div>
				<!-- 옵션 내려갓을때 목록들 -->



			</div>

			<div class="total_price_area">
				<span style="font-size: 16px;">총 상품금액</span>

				<p class="total_price">
					<strong class="order_price">22,900</strong> 원
				</p>

				<div class="plus_point_area">
					<div class="plus_point_box" style="display: inline-block;">
						<i class="ico_crown"></i> <strong class="plus_point">
							687P 추가 </strong> 적립 받기 <i class="ico_arr_right"></i>
					</div>
					<!-- plus_point_area -->

					<span class="total_point_area"> (총 포인트 <span
						class="주문총가격/100 적립"> 229 </span> P)
					</span>

				</div>
				<!-- plus_point_area  -->

				<div class="btn_area">
					<button type="button" class="basket_btn">
						<span class="basket_text">장바구니</span>
					</button>
					<button type="button" class="buy_now_btn">
						<span class="buy_now_text">바로구매</span>
					</button>
				</div>
				<!-- 장바구니 바로구매 영역 -->

			</div>
			<!-- total_price_area -->

		</div>
		<!-- 제품 옵션 선택 영역 -->

	<!-- </div>
	상품 내용 영역 -->

	<!-- </div>
	제품 사진 이름 부터 주문구간까지  -->

	<div class="best_review_area">

		<div class="title_text">
			<strong>베스트 구매후기</strong> <span>(222)</span> <a
				href="#detail_section02" class="btn_all_review"> <span>전체후기</span>
				<i class="arrow"> </i>
			</a>
			<!-- 전체후기 -->
		</div>

		<div class="review_area">
			<a href="javascript:;" class="review_button"> <img
				src="Images/share.png" class="review_img">
				<div class="point_5">
					별점 <span class="review_nickname"> 닉네임 </span> <span
						class="review_date"> 날짜 </span>
				</div>

				<div class="review_text">이번에 가격이 올라서 냉장고 까지 구매 해서 대량 구매 해봅니다
					ㅠㅠ 아침에 간편하게 먹기 너무 좋아요 브리또</div>
			</a>
		</div>


		<div class="review_area"
			style="border-left: 2px solid #e6e6e6; padding-left: 30px;">
			<a href="javascript:;" class="review_button"> <img
				src="Images/share.png" class="review_img">
				<div class="point_5">
					별점 <span class="review_nickname"> 닉네임 </span> <span
						class="review_date"> 날짜 </span>
				</div>

				<div class="review_text">이번에 가격이 올라서 냉장고 까지 구매 해서 대량 구매 해봅니다
					ㅠㅠ 아침에 간편하게 먹기 너무 좋아요 브리또</div></a>
		</div>

		<div
			style="display: inline-block; border-top: 1px solid #e6e6e6; padding-top: 20px; margin-top: 10px; width: 1100px;">

			<div class="review_area">
				<a href="javascript:;" class="review_button"> <img
					src="Images/share.png" class="review_img">
					<div class="point_5">
						별점 <span class="review_nickname"> 닉네임 </span> <span
							class="review_date"> 날짜 </span>
					</div>

					<div class="review_text">이번에 가격이 올라서 냉장고 까지 구매 해서 대량 구매 해봅니다
						ㅠㅠ 아침에 간편하게 먹기 너무 좋아요 브리또</div></a>
			</div>

			<div class="review_area"
				style="border-left: 2px solid #e6e6e6; padding-left: 30px;">
				<a href="javascript:;" class="review_button"> <img
					src="Images/share.png" class="review_img">
					<div class="point_5">
						별점 <span class="review_nickname"> 닉네임 </span> <span
							class="review_date"> 날짜 </span>
					</div>

					<div class="review_text">이번에 가격이 올라서 냉장고 까지 구매 해서 대량 구매 해봅니다
						ㅠㅠ 아침에 간편하게 먹기 너무 좋아요 브리또</div></a>
			</div>

		</div>

	</div>
	<!-- 베스트  리뷰 영역 -->


	<div class="recommend_goods_area">
		<h3>고객님을 위한 추천상품</h3>

		<ul class="recommend_goods_list">
			<li style="display: inline;"><img src="Images/share.png"
				class="recommend_img"></li>
			<li style="display: inline;"><img src="Images/share.png"
				class="recommend_img"></li>
			<li style="display: inline;"><img src="Images/share.png"
				class="recommend_img"></li>
			<li style="display: inline;"><img src="Images/share.png"
				class="recommend_img"></li>
			<li style="display: inline;"><img src="Images/share.png"
				class="recommend_img"></li>
		</ul>


	</div>
	<!-- 고객님을 위한 추천상품 영역-->

	<div class="detail_all_area">
		<div class="option_select_area">
			<div class="inner_area">
				<div class="option_sel_box">
					옵션 선택 <a href="javascript:;">
						<div class="opt_box1">
							상품옵션선택 <i class="arrow_bottom"
								style="float: right; margin-right: 10px;"></i>
						</div>
					</a> <a href="javascript:;">
						<div class="opt_box2">
							건강간식 &amp; 소스 추가구성 <i class="arrow_bottom"
								style="float: right; margin-right: 10px;"></i>
						</div>
					</a>
				</div>

			</div>
		</div>
		<div class="tab_area">
			<ul class="tab_list">

				<li><a href="#section01" class="tab_text">상품정보</a></li>

				<li><a href="#section02" class="tab_text">구매후기</a></li>

				<li><a href="#section03" class="tab_text">상품문의</a></li>

				<li><a href="#section04" class="tab_text">구매정보</a></li>

			</ul>

		</div>
		<!-- 탭 구간 -->

		<div class="detail_img_area" id="Detail_img_area">
			<div>
				<img src="Images/1.브리또/1000/1000b.png"> <img
					src="Images/1.브리또/1000/1000c.png"> <img
					src="Images/1.브리또/1000/1000d.png"> <img
					src="Images/1.브리또/1000/1000e.png"> <img
					src="Images/1.브리또/1000/1000f.png"> <img
					src="Images/1.브리또/1000/1000g.png"> <img
					src="Images/1.브리또/1000/1000h.png"> <img
					src="Images/1.브리또/1000/1000i.png"> <img
					src="Images/1.브리또/1000/1000j.png"> <img
					src="Images/1.브리또/1000/1000k.png"> <img
					src="Images/1.브리또/1000/1000l.png"> <img
					src="Images/1.브리또/1000/1000m.png"> <img
					src="Images/1.브리또/1000/1000n.png"> <img
					src="Images/1.브리또/1000/1000o.png"> <img
					src="Images/1.브리또/1000/1000p.png"> <img
					src="Images/1.브리또/1000/1000q.png"> <img
					src="Images/1.브리또/1000/1000r.png"> <img
					src="Images/1.브리또/1000/1000s.png"> <img
					src="Images/1.브리또/1000/1000t.png"> <img
					src="Images/1.브리또/1000/1000u.png"> <img
					src="Images/1.브리또/1000/1000v.png"> <img
					src="Images/1.브리또/1000/1000w.png"> <img
					src="Images/1.브리또/1000/1000x.png"> <img
					src="Images/1.브리또/1000/1000y.png"> <img
					src="Images/1.브리또/1000/1000z.png"> <img
					src="Images/1.브리또/1000/1000za.png">


			</div>

			<div class="btn_area" id="close_btn">
				<button type="button" class="detail_img_open" id="Close_detail">
					<span>상품설명 접기</span> <i class="arrow_top"
						style="margin-left: 10px;"></i>
				</button>
			</div>

		</div>
		<!-- 상세페이지 이미지들 -->

		<div class="btn_area" id="open_btn">
			<button type="button" class="detail_img_open" id="Open_detail">
				<span>상품설명 전체보기</span> <i class="arrow_bottom"
					style="margin-left: 10px;"></i>
			</button>
		</div>



	</div>
	<!-- 제품 상세페이지 전체구간 -->
	<div>
		<div class="refrigerator"
			style="margin-top: 30px; margin-left: 100px;">
			<img src="Images/refrigerator.png">
		</div>

		<div class="buy_satisfied">
			구매 만족도
			<button type="button" class="sat_btn">
				<i class="ico_i"> </i>
			</button>
			<span class="satisfied_text" style="color: #fff;">욕설,비방,광고,개인
				정보 유출 등 상품과 관련없는 내용이 포함된 글은 예고없이 삭제 될 수 있습니다.</span>
		</div>

		<div class="buy_satisfied_box">

			<div class="rating_point_sat">
				<div style="text-align: center; font-size: 36px; font-weight: 700;">
					4.9</div>

				<em class="review_point"> <span class="point_49"></span>
				</em> <span
					style="display: block; text-align: center; color: #666; margin-top: 5px;">
					총 7,594건 </span>

			</div>

			<div class="Average_point">
				<span class="reviews_count">7,595</span> 건의 리뷰 중<br /> <span
					class="per_point">93%</span> 고객이 <span class="give_point5">5점</span>
				을 주었어요.
			</div>

			<div class="graph">

				<div class="per_point5">93%</div>
				<div class="graph1">
					<span class="graph_line"></span>
				</div>
				<div class="graph2"></div>
				<div class="graph3"></div>
				<div class="graph4"></div>
				<div class="graph5"></div>

				<div style="text-align: center; word-spacing: 20px;">5점 4점 3점
					2점 1점</div>

			</div>



		</div>
		<!-- 구매만족도 -->


	</div>
	<!-- 제품 사진 이름 부터 끝구간까지 -->

</div><!-- all wrap -->
</body>
</html>