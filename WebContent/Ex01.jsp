<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String s1 = "안녕!";
 	String s2 = "안뇽?!";
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요!</h1>
	<h2><%=s1 %></h2>
	<h3><%=s2 %></h3>
	<%
		out.println("<h1>" + s1 + s2 + "</h1>");
	%>
</body>
</html>