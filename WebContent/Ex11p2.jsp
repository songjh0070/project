<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
	
	<%
	
		String ids = request.getParameter("ids");
		int pwd = Integer.parseInt(request.getParameter("pwd"));
		String names = request.getParameter("names");
				
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id ="user0616";
		String pw = "pass1234";
		
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		
		String sql = "insert into member values(?,?,?)";
		PreparedStatement pstmt =conn.prepareStatement(sql);
		pstmt.setString(1, ids); 
		pstmt.setInt(2, pwd);	
		pstmt.setString(3, names);
		pstmt.executeUpdate();
		
		out.print("<h1>가입되었습니다.</h1>");
	%>
	
</body>
</html>