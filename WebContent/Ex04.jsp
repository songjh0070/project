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
		
		//파라미터로부터 값 받기
		// (스크립틀릿 안에서) request.getParameter(파라미터이름)
		// ex. 파라미터 num의 값을.
		String p = request.getParameter("num");
		out.println("<h1>파라미터 num : "  + p + "</h1>");
		//?num=55
		
		// Integer.parseInt("55")
		int num = Integer.parseInt("55");
		out.print(num*10);
	%>
	
</body>
</html>