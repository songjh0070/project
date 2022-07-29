<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="ranking.GoodsDto"%>
<%@ page import="ranking.GoodsDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	
	
	
	
<body>


	<%
		String index = request.getParameter("idx");
		int idx_1 = Integer.parseInt(index);
		int goodsindex = idx_1;
		session.setAttribute("idx", index);
		GoodsDao g_dao = new GoodsDao();
		ArrayList<GoodsDto> glist = new ArrayList<GoodsDto>();
	%>

	<div>
		<%=index %>
	</div>

</body>
</html>