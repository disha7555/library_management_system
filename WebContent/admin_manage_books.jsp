<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="common_admin_header.html" %>
<br>
<h4 style="color:#000080;margin:10px">Manage Issued Books</h4>
<hr>
<%
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql="select * from admin_issue_book";
ResultSet r=stmt.executeQuery(sql);
%>
<table border="1px solid black">
<thead><tr><td>ID</td><td>Student_Name</td><td>Book_Name</td><td>isbn_no</td><td>Issued_Date</td><td>Return_Date</td><td>Fine</td><td>Edit</td></tr></thead>
<tbody>
<%int i=1;
while(r.next())
{
	String s1=r.getString("id");
	String s2=r.getString("student_name");
	String s3=r.getString("book_name");
	String s4=r.getString("isbn_no");
	String s5=r.getString("issued_date");
	String s6=r.getString("return_date");
	String s7=r.getString("fine");
%>
<tr>

<td>
	<%out.println(s1);
	out.println("<BR>");
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
	<%out.println(s7);
	out.println("<BR>");
	 %>
</td>
<td>
<a href="admin_edit_manage_books_form.jsp?id=<%=s1%>&fine=<%=s7%>&return_date=<%=s6%>">Edit</a>
</td>
</tr>
<%} %>
</tbody>
</table>
<%
stmt.close();
conn.close();
%>
</body>
</html>