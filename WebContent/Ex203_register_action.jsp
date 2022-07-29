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
<title>Insert title here</title>
</head>
<body>


	<%
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbID = "user0628";
		String dbPW = "1234";
		
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url,dbID,dbPW);
		
		String sql = "insert into member values(?,?)";
		PreparedStatement pstmt =conn.prepareStatement(sql);
		pstmt.setString(1, id); 
		pstmt.setString(2, pw);
		
		pstmt.executeUpdate();
		
		conn.close();
		pstmt.close();
	%>
	
	<script>
		alert('가입완료!');
		location.href='Ex203_login.jsp';
	</script>
</body>
</html>