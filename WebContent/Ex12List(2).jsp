<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>

	<%if(request.getParameter("login_id") == null) {%>
		<script>
			alert("로그인!");
			location.href = "Ex12.jsp;"
		</script>
	<%
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src = "js/jquery-3.6.0.min.js"></script>
	<script>
		$(function(){
			$("td").click(function(){
				location.href = "Detail_page.jsp";
			});
			
			$("tr").click(function(){
				/* var bno = $(this).find('.bno').text();
			 	 alert('내가 클릭한 bno : ' + bno);   */
 			});
		});
	</script>
	<style>
	
		
		table, td, th{
			border : 1px solid black;
		}
		table {
			border-collapse : collapse;/* 한줄로 붙이는 거에요 */
		}
		th {
			font-size : 20px;
			color : #506785;
			background-color : gray;
			
		}
		td,th{
			padding:8px;
		}
		td {
			font-size : 10px;
			text-align : center;
		}
		
		a{
			cursor : pointer;
		}
	</style>
</head>
<body>

	<table>
		<tr>
			<th>BNO</th>
			<th>WRITER</th>
			<th>TITLE</th>
			<th>CONTENT</th>
			<th>WRITEDATE</th>
		</tr>
	<%
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id ="user0616";
		String pw = "pass1234";
		
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		
		String sql = "select * from simple_board";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			int bno = rs.getInt("bno");
			String writer = rs.getString("writer");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writedate = rs.getString("writedate");
			%>
			
			<tr>
				<%-- <td><%= bno %></td> --%>
				<td class="bno"><a><%=bno %></a></td>
				<td><%= writer %></td>
				<td><%= title %></td>
				<td><%= content %></td>
				<td><%= writedate %></td>
			</tr>
	<%
		}
%>
	</table>
</body>
</html>