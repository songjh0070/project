<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>   
<%@ page import = "ranking.Pack_Dao" %>
<%@ page import = "ranking.PackVo" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<link rel="shortcut icon" href="Images/favicon.ico">
<meta charset="UTF-8">
<title>1팩담기</title>
<script src = "js/jquery-3.6.0.min.js"></script>
<meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />
<link  rel="stylesheet"  href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
</head>
	
	<style>
	
		html, body {/* 헤더 css */
			height: 100%;
			color: #333;
			font-size: 14px;
			font-weight: 400;
			/* line-height: 1.4; */
			font-family: 'Pretendard', sans-serif;
			word-break: break-all;
			margin:0,auto;
		}
		
		a {
			text-decoration: none;
			color: #404040;
		}
		input{
			padding:3px 15px;
			border: 1px solid #ccc;
		}
		li {
			list-style: none;
		}
		.upimg{
			width:1300px;
		}
		.upimg img{
			width:650px;
		}

		.header-inner {
			width: 1120px;
			height: 120px;
			margin-left:100px;
			border:1px solid white;
		}
		
		.header-inner .rankinglogo {
			diplay:block-inline;
			width: 180px;
			height: 46px;
			margin-top:37px;
		}
		.header-inner .rankinglogo img{
			margin-top:23px;
		}
		.header-inner .headermenu{
			float:right;
		}
		.header-inner .rankingicon{
			display:inline;
			width:222px;
			height:38px;
			text-align:center;
			margin-left:920px;
			margin-top:-43px;
			float:right;
			
		}
		.header-inner .rankingicon img{
			margin-left:20px;
		}
		#menu1 {
			width:1300px;
			background: white;
			text-align: center;
			height: 50px;
			margin-top: auto;
			margin-left:72px;
			font-size:17px;
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
			margin-right:42px;
		}
		
		#menu1 ul li a {
			display: block;
		}
		#menu1  a {
			width:115px;
		}
		
		#menu1 ul li a:hover {
			background: black;
			color: white;
		}
		
		#menu1 img {
			margin-top: 5px;
		}
		
		.search{
			text-align:center;
			border:0px solid white;
		}/* 헤더 */
		
		.all_area{
			width : 1300px;
			margin : 0 auto;
		}
		
		.onepack_banner_area{
			border-top : 1px solid #ccc;
		}
		
		.onepack_banner{
			text-align: center;
			margin-top : 70px;
		}
		
      	.swiper {/* 스와이퍼 시작 */
        	width: 100%;
        	height: 100%;
        	padding : 30px 0px 45px;
      	}

      .swiper-slide {
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
        width: 180px;
        height: 180px;
        object-fit: cover;
      }/* 스와이퍼 끝 */
      
      .content_area{
      	width : 1100px;
      	margin : 0 auto;
      }
      
      .swiper_text{
      	margin-top : 50px;
      	text-align: center;
      }
      
      .text{
      	font-size: 28px;
      	display : inline-block;
      	font-weight: 400;
      	text-align: center;
      	}
      	
      .swiper_box{
      	border : 1px solid #ccc;
      }
      
      .goods_list_box{
      	margin-top : 50px;
      	border : 1px solid #ececec;
      }
      
      ul{
      	padding : 0;
      }
            
      .tab_area li{
      	list-style: none;
      	display : inline-block;
      }
      
      .goods_list_area li{
      	display: inline-block;
      }
      
      .ico_img{
      	display : inline-block;
      	text-align: center;
      }
      
      .tab_area{
      	background : #f4f4f4;
      	margin : 0;
      }
      
      .ico_img img{
      	width : 40px;
      	height : 40px;
      }     
      
      .tab_list li{
      	border-right : 1px solid #eee;
      	padding-left: 25px;
	    padding-right: 25px;
    	margin-left: 2px;
      } 
      
      .goods_list_area{
      	padding : 40px 60px;
      }
      
      .total{
      	display : inline-block;
      }
      
      .list_head{
      	margin : 15px 0;
      }
      
      .list_head li{
      	border-right : 1px solid #ccc;
      	padding-right : 5px; 
      }
      
      .list_head li:nth-child(n+5){
      	border : none;
      }
      
      .goods_imgs{
      	width : 300px;
      	height : 300px;
      }
      
      figure{
      	margin : 0;
      }
      
      .goods{
      	display : inline-block;
      	padding-right: 20px;
      }
      
      .delivery_special{
      	background: url(Images/delivery.png) 0 0;
		width : 64px;
		height : 20px;
		position: relative;
		display: inline-block;
		}
		
		.point5{
			display: inline-block;
		    background: url(Images/ico_bullet.png)-90px -160px;
		    width: 15px;
		    position: relative;
		    height: 12px;
		}
		
		.text_area{
			margin-top:5px;
		}
		.review{
			display : block;
			float : right;
		}
		
		.cart_ico{
			width: 50px;
		    height: 32px;
		    padding: 7px 0;
		    border: 1px solid #ccc;
		    text-align: center;
		    border-radius: 50px;
		    vertical-align: middle;
		    font-size: 0;
		    float : right;
		}
		
		.cart_ico:after{
			width: 18px;
    		height: 15px;
    		background-position: -30px 0;
		}
		
		[class*="cart_ico"]:after {
    		display: inline-block;
    		content: '';
    		background-image: url(Images/ico_btns.png);
		}
		
		.price_cart{
			margin-top : 10px;
			font-weight:700;
			font-size:18px;
		}
		
		.goods_name{
			height: 45px;
    		margin-top: 5px;
		}
		
		button{
			cursor:pointer;
		}
		
		.goods:nth-child(n+5){
			margin-top : 40px;
		}
		
		.swiper-pagination {
		    position: absolute;
		    text-align: center;
		    transition: .3s opacity;
		    transform: translate3d(0,0,0);
		    z-index: 10;
		    display: inline-block;
		    position: relative;
		}
		
		.swiper-horizontal>.swiper-pagination-bullets, .swiper-pagination-bullets.swiper-pagination-horizontal, .swiper-pagination-custom, .swiper-pagination-fraction {
		    bottom: 10px;
		    left: 0;
		    width: 3%;
		}
		
		.search_num{
			color : #FF6001;
		}
	</style>

<body>
		
	
	<div class= "all_area">
		<div class= "content_area">
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
					
				<div class= "onepack_banner_area">
					<div class= "onepack_banner">
						<a href = "javascript:;"><img src = "Images/1팩_담기/onepack_banner.png"></a>
					</div>
				</div>	
				
				<div class = "swiper_text">
					<h3 class= "text">베스트 상품</h3>
					<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 2" style="position: relative; display: inline-block;"></span></div>
				</div>
				
				<!-- Swiper -->
				<div class= "swiper_box">
				   <div class="swiper mySwiper">
				      <div class="swiper-wrapper">
				        <div class="swiper-slide">
				        	<figure>
				       			<img src = "Images/1팩_담기/swiper_img/onepack_img1.png">
				       		</figure>
				        </div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img2.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img3.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img4.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img5.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img6.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img7.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img8.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img9.png"></div>
				        <div class="swiper-slide"><img src = "Images/1팩_담기/swiper_img/onepack_img10.png"></div>
				      </div>
				      <div class="swiper-button-next"></div>
				      <div class="swiper-button-prev"></div>
				    </div>
				    
				    <!-- Swiper JS -->
 					<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
 					
				    <!-- Initialize Swiper -->
				    <script>
				      var swiper = new Swiper(".mySwiper", {
				        slidesPerView: 5,	/* 한번에 보여줄 개수 */
				        spaceBetween: 30,	// 슬라이드 사이 여백
				        slidesPerGroup: 5,
				        loop: false,	 // 슬라이드 반복 여부
				        loopFillGroupWithBlank: true,
				        pagination: {	// 호출(pager) 여부
				          el: ".swiper-pagination",	//버튼을 담을 태그 설정
				          clickable: true,	// 버튼 클릭 여부
				        },
				        navigation: {	 // 버튼
				          nextEl: ".swiper-button-next",
				          prevEl: ".swiper-button-prev",
				        },
				      });
				    </script>
				</div>
				
				<!-- 상품 종류별 리스트들 -->
				<div class = "goods_list_box">
					<div class= "tab_list">
						<ul class = "tab_area">
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_all.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">전체</div>
									</i>
								</a>
								<div>
								</div>
							</li>
							<li>

								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_2.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">닭가슴살</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_3.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">간편한끼</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_4.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">건강반찬</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_5.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">도시락/볶음밥</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_6.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">고구마/감자</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_7.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">소스</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_8.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">육류/수산</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_9.png">
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">계란/간식</div>
									</i>
								</a>
							</li>
							<li>
								<a href = "javascript:; ">
									<i class = "ico_img">
										<img src = "Images/1팩_담기/swiper_img/tab_10.png">
									</i>
										<div style=" font-style:normal; text-align: center; margin-top : 3px;">분식/야식</div>
								</a>
							</li>
						</ul>
					</div>
					
					<div class = "goods_list_area">
						<div class = "list_head">
							<p class = "total">
								<span class = "search_num">
								총
								<span>158</span>
								개
								</span>
								<span>상품이 있습니다</span>
							</p>
							<ul style = "display : inline-block; float:right;">
								<li>추천순</li>
								<li>신상품순</li>
								<li>판매량순</li>
								<li>낮은가격순</li>
								<li>높은가격순</li>
							</ul>
						</div>
						
						 
						<%
							Pack_Dao dao = new Pack_Dao();
							ArrayList<PackVo> list = dao.selectPack();
						%>
								
						<%
							for(PackVo p : list){
								out.println("<div class='goods'>");
								out.println("<a href = 'javascript:;''>");
								out.println("<figure>");
								out.println("<img src = 'Images/1팩_담기/goods/"+p.getImage()+"' class= 'goods_imgs'>");
								out.println("</figure>");
								out.println("</a>");
								out.println("<div class= 'text_area'>");
								out.println("<div class = 'delivery_special'></div>");
								out.println("<div class= 'review'>");
								out.println("<div class = 'point5'></div>");
								out.println("<span>"+(float)p.getRating_point()+"</span>");
								out.println("<span>("+p.getReview_count()+")</span>");
								out.println("</div>");
								out.println("<div>");
								out.println("<div class= 'goods_name'>");
								out.println("<span>"+p.getName()+"</span>");
								out.println("</div>");
								out.println("</div>");
								out.println("<div class = 'price_cart'>");
								out.println("<span>"+p.getSell_price()+"</span>원");
								out.println("<button type='button' class = 'cart_ico'></button>");
								out.println("</div>");
								out.println("</div>");
								out.println("</div>");
							}
						
						%>
						
						<!-- 단제품 영역 -->
					</div>
				</div><!-- 종류별 상품 리스트들 -->
			</div><!-- content_area -->
			<script>
			$(this).ready(function(){
				$("#bottom").load("BottomFrame.jsp");
			});
			
		</script>
		<div id="bottom"></div>
	</div>
			
	</div><!-- all_area -->
	
</body>
</html>