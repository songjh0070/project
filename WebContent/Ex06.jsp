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
		
		//int a = Integer.parseInt(request.getParameter("a"));
		//int b = Integer.parseInt(request.getParameter("b"));
		
		int a = Integer.parseInt("3");
		int b = Integer.parseInt("7");
		int sum =0;
		
		for(int i=a; i<=b;i++){
			sum+=i;
		}
		out.print(sum);
		
		
	%>

	

</body>
</html>