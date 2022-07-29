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
	
	<style>
		table, td, th{
			border : 1px solid black;
		}
		table {
			border-collapse : collapse;/* 한줄로 붙이는 거에요 */
			margin: 0 auto;		/* 테이블 중간에 놓고싶으면 이렇케 */
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
	</style>
	
<body>

<%
	out.println("<table>"+"<tr>"+"<th>"+"EMPLOYEE_ID"+
		"</th>"+"<th>"+"FIRST_NAME"+"</th>"+"<th>"+"LAST_NAME"+
		"</th>"+"<th>"+"EMAIL"+"</th>"+"<th>"+"PHONE_NUMBER"+
		"</th>"+"<th>"+"HIRE_DATE"+"</th>"+"<th>"+"JOB_ID"+
		"</th>"+"<th>"+"SALARY"+"</th>"+"<th>"+"COMMISSION_PCT"+
		"</th>"+"<th>"+"MANAGER_ID"+"</th>"+"<th>"+"DEPARTMENT_ID"+"</th>"+"</tr>");
 		
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id ="hr";
	String pw = "hr";
	
	Connection conn = null;
	Class.forName(driver);
	conn = DriverManager.getConnection(url,id,pw);
	
	String sql = "select * from Employees";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()) {
		int Employee_id = rs.getInt("EMPLOYEE_ID");
		out.println("<tr>"+ "<td>"+ Employee_id + "</td>");
		
	 	String First_name = rs.getString("FIRST_NAME");
		out.println("<td>"+ First_name + "</td>");
		
		String Last_name = rs.getString("LAST_NAME");
		out.println("<td>"+ Last_name + "</td>");
		
		String Email = rs.getString("EMAIL");
		out.println("<td>"+ Email + "</td>");
		
		String Phone_number = rs.getString("PHONE_NUMBER");
		out.println("<td>"+ Phone_number + "</td>");
		
		String Hire_date = rs.getString("HIRE_DATE");
		out.println("<td>"+ Hire_date + "</td> ");
		
		String Job_id = rs.getString("JOB_ID");
		out.println("<td>"+ Job_id + "</td>");
		
		int Salary = rs.getInt("SALARY");
		out.println("<td>"+ Salary + "</td>");
		
		int Commission_pct = rs.getInt("COMMISSION_PCT");
		out.println("<td>"+ Commission_pct + "</td>");
		
		int Manager_id = rs.getInt("MANAGER_ID");			
		out.println("<td>"+ Manager_id + "</td>");
		
		int Department_id = rs.getInt("DEPARTMENT_ID");			
		out.println("<td>"+ Department_id + "</td>" + "</tr>");
			
	}
	
 		out.print("</table>");
 		
%>

</body>
</html>