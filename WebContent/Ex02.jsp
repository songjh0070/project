<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Scanner" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--  <% ~ %> 스크립틀릿(scriptlet) -java code 그대로--%>
	<%--  <%@ ~ %>  : 디렉티브(directive) - 주로, 설정 정보.--%> 
	<%--  <%= ~ %> : 익스프레션(expression) - 자바 변수의 값 출력--%>
	<% 
		Scanner sc = new Scanner(System.in);
		System.out.print("이름을 입력하세요");
		String name =sc.nextLine();
		out.println(name + "님, 안녕하세요!" );
	%>
	
	<!-- WebProject1이 context path이다  -->
	
</body>
</html>