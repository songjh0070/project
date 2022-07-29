<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	1) 세션에 저장
		session.setAttribute(이름,값);
	2) 세션에 저장된 값을 확인
		session.getAttribute(이름)
	3) 세션에 저장된 값을 삭제
		session.invalidate(); //전체를 무효화
		session.removeAttribute(이름);
</body>
</html>