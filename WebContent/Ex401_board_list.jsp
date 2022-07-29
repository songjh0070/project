<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "com.yg.dao.*"%>
<%@ page import = "com.yg.dto.*"%>
 <%
 	// 로그인 여부 체크
 	if(session.getAttribute("login_id") == null){
 		%>
 		
 		<script>
 			alert("로그인부터 하셈");
 			location.href = "Ex401_login.jsp";
 		</script>
 		
 		<%
 	}
 		BoardDao bDao = new BoardDao();
 		ArrayList<BoardDto> listBoard = bDao.getAllBoardList();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

	<style>
		table{
			border-collapse: collapse;
			font-size : 16px;
		}
		
		th,td{
			border : 1px solid grey;
			padding: 8px;
		}
	</style>
<body>
	<h2>게시판</h2>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일시</th>
		</tr>
		<%
			for(BoardDto board : listBoard){
		%>
		<tr>
			<td><%=board.getBno() %></td>
			<td><%=board.getTitle() %></td>
			<td><%=board.getWriter() %></td>
			<td><%=board.getWritedate() %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>