<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

	<%
		boolean id = session.getAttribute("id") == null? false:true;
	
		if(id == true) {
			%>
				<form action = "Ex203_register.jsp">
					<input type="submit" value="회원가입">
				</form>
				<form action = "Ex203_login.jsp">
					<input type="submit" value="로그인">
				</form>
			<%
		} else {
			%>
				<form action = "Ex203_logout.jsp">
					<input type="submit" value="로그아웃">
				</form>
			<%
		}
	%>
</body>
</html>