<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>

<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id ="hr";
	String pw = "hr";
	
	try{
		Class.forName(driver);
		out.println("<h1>JDBC 드라이버 로딩 성공</h1>");
		DriverManager.getConnection(url,id,pw);
		out.println("Oracle 접속 성공");
	}catch(Exception e){
		e.printStackTrace();
		out.println("오라클 접속 실패");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>