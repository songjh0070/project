<%@page import="java.util.Scanner"%>
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
	
		//Scanner sc = new Scanner(System.in);
		//int num = sc.nextInt();
		
		int dan = Integer.parseInt(request.getParameter("dan"));
		
		for(int i =1;i<=9;i++){
			out.print(dan + " * " + i + " = " + (dan*i) + "<br/>");
		}
		
		//	request.getParameter(파라미터이름)
		//	그런데, '파라미터이름'인 파라미터가 없을 때, null
		//	Integer.parseInt(null) ---> NumberFormatException
	%>
	
	
	
</body>
</html>