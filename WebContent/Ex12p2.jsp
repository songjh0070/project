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
	
		String login_id = request.getParameter("login_id"); 
		int pwds = Integer.parseInt(request.getParameter("pwd"));
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id ="user0616";
		String pw = "pass1234";
		
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		
		String sql = "select count(*) from simple_member where id=? and pw = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, login_id);
		pstmt.setInt(2, pwds);
		pstmt.executeUpdate();
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			
			int mypwd = rs.getInt(1);
			
			if(mypwd==1){
		%>
				<script >
					alert("맞음")
					location.href ="Ex12List.jsp?login_id=<%=login_id%>";
				</script>
		<%
			}else{
		%>
				<script>
					alert("비밀번호가 틀리거나없는 아이디입니다")
					location.href = "javascript:history.back();"
				</script>
		<%			
			}
		}
			%>
			
	
</body>
</html>