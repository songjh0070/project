<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>
	<%
		int sum = 0;
		for(int i =1; i<=100; i++){
			sum += i;
		}
			out.println(sum);
			
	%>
	</h1>
	
	<h2>
	<%
		int sum1 = 0;
	
		for(int i =1; i<100;i++){
			out.print(i + " + ");
		}
			
			out.print(" = " + sum1);
		
	%>
	</h2>

</body>
</html>