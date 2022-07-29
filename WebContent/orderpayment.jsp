<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ranking.*"%>
<%@ page import="ranking.Detail_Dao"%>
<%@ page import="ranking.Detail_Vo"%>
<!DOCTYPE html>
<html>
<head>
<%
	int origin_price = Integer.parseInt(request.getParameter("origin_price"));
	String idx = request.getParameter("idx");	
	int qty = Integer.parseInt(request.getParameter("qty"));
	int idx_2 = Integer.parseInt(idx);
	Detail_Dao ddao = new Detail_Dao();
	int total_price = origin_price * qty;
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비회원 주문/결제</title>
<link rel="shortcut icon" href="Images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css">
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	
	$(window).scroll(function() {
		$(".div18").css("margin-top", Math.min(350, 0 + $(this).scrollTop()));
	});
	
	$(function(){
		$('#order_alert').click(function(){
			alert('결제완료');
			location.href='MainPage.jsp';
		});
		
	});
	
	
</script>
<style>
body {
	font-family: 'Pretendard', sans-serif;
	width: 1100px;
    margin: 0 auto;
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
	margin-top: 50px;
}

.div18 {
	position: absolute;
	top: 340px;
	left: 1300px;
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

/* .div100 {
	position: relative;
	top: 0%;
	right: 50%;
	width: 100%;
	min-width: 1400px;
	max-width: 1440px;
	transform: translateX(50%);
	-webkit-transform: translateX(50%);
} */

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

.a5 {
	color: #333;
	font-size: 14px;
}

td {
	padding: 5px;
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
	margin-left: 10px
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

.button1 {
	background: #eef7ff;
	color: #3c89fd;
	border: 1px solid #3c89fd;
	border-radius: 20px;
	width: 130px;
	height: 40px;
	cursor: pointer;
}

.button3 {
	background: #fff;
	color: #333;
	border: 1px solid #666;
	width: 375px;
	height: 40px;
	cursor: pointer;
}

.button4 {
	color: #fff;
	background: #333;
	border: 1px solid #333;
	margin-top: 10px;
	width: 245px;
	height: 55px;
	margin-left: -2px;
	cursor: pointer;
}

.span1 {
	color: #fff;
	font-size: 15px;
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
</style>
</head>
<body>
	
	<div class="div100">
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
	<%
		String idx_4 = request.getParameter("idx");
		int index = Integer.parseInt(idx);
		ArrayList<Detail_Vo> goods = ddao.Goods_detail(index);
	%>
		<%-- <div class="div18">
			<div class="div19">
				<span class="span3">주문/결제 금액</span>
				<div class="div20">
				<%for(Detail_Vo g_list : goods){ %>
					<span class="span4">상품금액</span><span class="span5"><%=g_list.getSell_price()%>원</span>
				</div>
				<div class="div20">
					<span class="span4">배송비</span>
					<%
						if (g_list.getDelivery().equals("특급배송")) {
					%>
					<span class="span5">0원</span>
					<%
						} else if (g_list.getDelivery().equals("무료배송")) {
					%>
					<span class="span5">0원</span>
					<%
						} else if (g_list.getDelivery().equals("특급배송/무료배송")) {
					%>
					<span class="span5">0원</span>
					<%
						}
					%>
				</div>
				<div class="div21">
					<span class="span4">총 결제금액</span><span class="span6"><%=g_list.getSell_price()%>원</span>
				</div>
				<div class="div22">
					<span class="span7">처리위탁 및 3자 제공 동의</span><span class="span8">내용보기▶</span>
				</div>
				<div class="div23">
					<span class="span7">결제대행서비스 이용 동의</span><span class="span8">내용보기▶</span>
				</div>
				<div class="div24">
					<div style="width: 215px; height: 40px;">
						<a class="a5">구매조건 및 이용약관에 동의하며,결제를 진행합니다</a><input
							type="checkbox" name="agree" style="accent-color: #ff6001">
					</div>

					<div class="div25">
						<a></a><input type="submit" class="button4" value="결제하기">
					</div>
				</div>
			</div>
		</div> --%>
	
	<div style="width: 1300px; margin: 0 auto;">
		
		<div id="head_inner"></div>
		<div class="div18">
			<div class="div19">
				<span class="span3">주문/결제 금액</span>
				<div class="div20">
				<%for(Detail_Vo g_list : goods){ %>
					<span class="span4">상품금액</span><span class="span5"><%=total_price%>원</span>
				</div>
				<div class="div20">
					<span class="span4">배송비</span>
					<%
						if (g_list.getDelivery().equals("특급배송")) {
					%>
					<span class="span5">0원</span>
					<%
						} else if (g_list.getDelivery().equals("무료배송")) {
					%>
					<span class="span5">0원</span>
					<%
						} else if (g_list.getDelivery().equals("특급배송/무료배송")) {
					%>
					<span class="span5">0원</span>
					<%
						}
					%>
				</div>
				<div class="div21">
					<span class="span4">총 결제금액</span><span class="span6"><%= total_price%>원</span>
				</div>
				<div class="div22">
					<span class="span7">처리위탁 및 3자 제공 동의</span><span class="span8">내용보기▶</span>
				</div>
				<div class="div23">
					<span class="span7">결제대행서비스 이용 동의</span><span class="span8">내용보기▶</span>
				</div>
				<div class="div24">
					<div style="width: 215px; height: 40px;">
						<a class="a5">구매조건 및 이용약관에 동의하며,결제를 진행합니다</a><input
							type="checkbox" name="agree" style="accent-color: #ff6001">
					</div>

					<div class="div25">
						<input id="order_alert" type="submit" class="button4" value="결제하기">
					</div>
				</div>
			</div>
		</div>
		<div style="width: 1100px; margin: 70px auto;">
			<div class="div1">주문/결제</div>
			<div class="div2">주문자 정보</div>
			<div class="div3">
				<table>
					<tr>
						<td><a class="a">이름</a></td>
						<td><div class="table-div-size">
								<input type="text" name="name" class="input-text1" required>
							</div></td>
					</tr>
					<tr>
						<td><a class="a">휴대전화</a></td>
						<td><div class="table-div-size">
								<select class="select-box"><option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option></select><input type="text"
									name="p_number" class="input-text2" required>
							</div></td>
					</tr>
					<tr>
						<td><a class="a">이메일</a></td>
						<td><div class="table-div-size">
								<input type="text" name="email" class="input-text3" required>
							</div></td>
					</tr>
				</table>
			</div>
			<div class="div4">
				<a>배송지 정보</a>
			</div>
			<div class="div3">
				<table>
					<tr>
						<td><a class="a">받는분</a></td>
						<td><div class="table-div-size">
								<input type="text" name="recipient" class="input-text1" required>
							</div></td>
					</tr>
					<tr>
						<td><a class="a">주소</a></td>
						<td><div class="table-div-size">
								<input type="text" name="adress" class="input-text1" required>
							</div>
							<div class="table-div-size">
								<input type="text" name="adress2" class="input-text1"
									style="margin-top: 10px;" required>
							</div></td>
					</tr>
					<tr>
						<td><a class="a">휴대전화</a></td>
						<td><div class="table-div-size">
								<select class="select-box"><option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option></select><input type="text"
									name="p_number2" class="input-text2">
							</div></td>
					</tr>
					<tr>
						<td><a>전화번호</a></td>
						<td><div class="table-div-size">
								<input type="text" name="h_number" class="input-text3">
							</div></td>
					</tr>
				</table>
			</div>

			<div>
				<div class="div5">
					<span class="span1"
						style="margin-left: 30px; float: left; margin-top: 10px;">주문상품</span>
				</div>
				<div class="div6">
					<div class="div7">
						<p style="color: #666; font-size: 13px; margin-top: 3px;"><%=g_list.getDelivery()%></p>
					</div>
					<div>
						<div>
							<div style = "padding : 20px 20px; ">
								<img style = "width : 80px; height : 80px;"src="Images/dt_images/<%=g_list.getImage()%>"
									style="float: left; margin-top: 10px; margin-left: 20px;">
								<div style = "display: inline-block;">
									<a class="a2"> <%=g_list.getName()%><br/><%=g_list.getNormal_price()%>원
										<span>*<%=qty %></span>
									</a>
								</div>
								<div>
									<a class="a3"> <%=total_price%>원<% } %>
									</a>
								</div>
								<div class="div8">
									<a class="a4"><button type="button"
											onclick="location.href='https://www.rankingdak.com/'"
											class="button1">보냉제 더 담기</button></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom_inner">
			<script>
				$(this).ready(function() {
					$("#bottom_inner").load('BottomFrame.jsp');
				});
			</script>
		</div>
		<!--content area  -->
	</div>
	</div>
</body>
</html>