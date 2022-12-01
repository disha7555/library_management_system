<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile4.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="common_student_header.html" %>
<br>
<h4 style="color:#000080;margin:21px">Issued Books</h4>
<hr>
<br>
<div id="first">
<h4 style="color:#000080;margin:21px">Issued books Info:</h4>
<p>
<%
String user_name=(String)session.getAttribute("oldu2");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql1="select * from admin_issue_book where username='"+user_name+"'";
ResultSet r1=stmt.executeQuery(sql1);
int i=0;
%>
<table border="1px solid black">
<tr><th>No</th><th>Name</th><th>Isbn no</th><th>Issued date</th><th>Return date</th><th>Fine</th></tr>
<%
	while(r1.next())
	{	i++;
		String b=r1.getString("book_name");
		String c=r1.getString("isbn_no");
		String d=r1.getString("issued_date");
		String e=r1.getString("return_date");
		String f=r1.getString("fine");
	
%>
<tr>
	<td>
		<%out.println(i);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(b);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(c);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(d);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(e);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(f);
		out.println("<BR>");
		 %>
	</td>
</tr>
<%} %>
	</table>
<%
	stmt.close();
	conn.close();
	 %>
</p>
</div>

</body>
</html>