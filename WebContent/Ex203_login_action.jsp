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
<script src="jquery-3.6.0.min.js"></script>
</head>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	session.setAttribute("id",id);
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbID = "user0628";
	String dbPW = "1234";
	
	Connection conn = null;
	Class.forName(driver); 
	conn = DriverManager.getConnection(url,dbID,dbPW);
	
	String sql = "select * from member";
	PreparedStatement pstmt =conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()) {
		
		String ID = rs.getString("id");
		String PW = rs.getString("pw");
		
		if(id.equals(ID) && pw.equals(PW)){
			%>
			<script>
				alert("로그인되엇습니다")
				location.href = 'http://localhost:9090/WebProject1/Ex203.jsp?id=<%=id%>';
			</script>
			<%
			session.setAttribute("id",id);
		}else{
			%>
			<script>
				alert("땡 틀렷습니다")
				
				<% 
					session.removeAttribute("id");
					
				%>
				location.href = 'Ex203_login.jsp';
			</script>
			<%
		}
		
	}
	
	conn.close();
	pstmt.close();
	rs.close();
%>	
	
<script>
</script>
<body>
	
</body>
</html>