<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하단프레임</title>
<link rel="stylesheet" type="text/css"
	href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="../JS/jquery-3.6.0.min.js"></script>
<style>
body {
	font-family: 'Pretendard', sans-serif;
}

.header-inner {
	position: relative;
	max-width: 1100px;
	min-height: 120px;
	margin: 0 auto;
}

.body-inner {
	width: 1100px;
	margin: 0 auto;
}

#div1 {
	min-height: 700px;
    background: #f7f7f7;
    margin-bottom: 0px;
    padding-left: 280px;
    padding-top: 100px;
    text-align: center;
    width: 820px;
    margin-left: -105px;
}

	#familysite {
	border: 1px solid #f2f2f2;
	color: black;
	margin-left: 781px;
	font-size: 12px;
	color: black;
	display: none;
}

#bottom_menu {
	background: #f2f2f2;
	width: 1100px;
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
	margin-left: -3px;
}

#endbottom  li:after {
	display: inline-block;
	position: relative;
	top: 0px;
	right: 215px;
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
</style>
</head>
<body>
<div class="header-inner">
	<div id="familysite">
			<span>랭킹닭컴</span><br> <span>개근질마트</span><br> <span>개근질닷컴</span><br>
			<span>피키다이어트</span><br> <span>다이어트전문 레시피 다쿡</span><br> <span>바디프로필
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
					style="border: 1px solid #ecc;">고객의 소리</a> <a
					style="border: 1px solid #ecc;">1:1 문의</a></li>
				<li style="position: relative; top: -12px; margin-top: 18px;"><a><img
						src="rankingimages/b_i2.png" style="margin-top: 18px;"></a></li>
			</ul>
		</div>
		<div id="endbottom">
			<ul
				style="list-style: none; text-align: center; margin-right: -195px;">
				<li><a href="#"
					style="background: transparent; text-decoration: none; color: inherit; right: 225px; position: relative; top: 2px; font-size: 13px; line-height: 20px;">
						<i class="endbottom-service01"></i> 정보보호 관리체계 ISMS 인증 획득
				</a></li>
				<li id="service02"><a href="#"
					style="background: transparent; text-decoration: none; color: inherit; float: right; top: -18px; right: 480px; position: relative; font-size: 13px; line-height: 20px;">
						<i class="endbottom-service02"></i> 우리은행 구매 안전 서비스 가입사실 확인
				</a></li>
			</ul>
		</div>
	</div>
</body>
</html>