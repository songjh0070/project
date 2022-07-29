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
		int num1 = Integer.parseInt(request.getParameter("num1")); 
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int answer = Integer.parseInt(request.getParameter("answer"));
		
		int sum = num1 + num2;
		
		if(answer == sum){
			out.print("정답!");
		}else{
			out.print("정답아님!!");
		}
		
	%>

</body>
</html>