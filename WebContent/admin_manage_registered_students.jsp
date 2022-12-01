<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<style>
tbody,tr:nth-child(odd) {
  background-color: #f2f2f2
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="common_admin_header.html" %>
<br>
<h4 style="color:#000080;margin:10px">Manage Registered Students</h4>
<hr>
<br>
<%Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/library";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="select * from student_regi";
	ResultSet r=stmt.executeQuery(sql);
%>

<table border="1px solid black">
<thead><tr><td>ID</td><td>Name</td><td>Mobile_no</td><td>email_id</td><td>Reg Date</td><td>status</td><td>Activated</td><td>Inactive</td></tr></thead>
<%
int i=1;
	while(r.next())
	{
		
		String s1=r.getString("id");
		String s2=r.getString("name");
		String s3=r.getString("mobile_no");
		String s4=r.getString("email_id");
		String s5=r.getString("Reg_Date");
		String s6=r.getString("status");
%>
<tr>
	<td>
		<%out.println(i);
		i++;
		%>
	</td>
	<td>
		<%out.println(s2);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(s3);
		out.println("<BR>");
		 %>
	</td>
	<td>
	<%out.println(s4);
	out.println("<BR>");
	 %>
</td>
<td>
	<%out.println(s5);
	out.println("<BR>");
	 %>
</td>
<td>
	<%out.println(s6);
	out.println("<BR>");
	 %>
	  </td>
	<td>
		<a href="admin_man_stu_database.jsp?id11=<%=s1%>">active</a>
	</td>
	<td>
		<a href="admin_man_stu_database.jsp?firstname11=<%=s2%>">inactive</a>
	</td>
	
</tr>
<%} %>
	</table>
	
<%
	stmt.close();
	conn.close();
	 %>
</body>
</html>