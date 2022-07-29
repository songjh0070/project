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
		int num1 = (int)(Math.random()*10)+1;
		int num2 = (int)(Math.random()*10)+1;
	%>
	
	<form action="Ex08p2.jsp">
		숫자 1 : <input type="text" name="num1" value="<%= num1 %>"/> <br/>
		숫자 2 : <input type="text" name="num2" value="<%= num2 %>"/>	<br/>
		답 = : <input type="text" name="answer"> <br/>
			<input type="submit" value="정답확인"/>
	</form>
	
</body>
</html>