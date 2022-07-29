<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="com.yg.dao.*" %>
  <%@ page import="com.yg.dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		int pw = Integer.parseInt(request.getParameter("pw"));
		
		MemberDao mDao = new MemberDao();
		if(mDao.loginCheck(new MemberDto(id, pw, null))){
			session.setAttribute("login_id", id);
	%>
			<script>
			alert("로그인 성공");
			location.href = "Ex401_board_list.jsp";
			</script>
	<%
		}else{
	%>
			<script>
			alert("로그인 실패");
			location.href = "Ex401_login.jsp";
			</script>
		<%
		}
	%>
		
</body>
</html>