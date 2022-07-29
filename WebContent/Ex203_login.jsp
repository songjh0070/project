<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<form name = "log" action = "Ex203_login_action.jsp">
	아이디 : <input type="text" placeholder="아이디 입력" name="id"><br/>
	패스워드 : <input type="text" placeholder="패스워드 입력" name="pw">
		<button type="submit">로그인</button>
		</form>
		<form action = "Ex203_register.jsp">
			<input type = "submit" value = "회원가입">
		</form>

</body>
</html>