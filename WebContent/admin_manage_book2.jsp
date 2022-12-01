<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<style>
tbody tr:nth-child(odd) {
  background-color: #f2f2f2
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="common_admin_header.html" %>  
<br>
<h4 style="color:#000080;margin:10px">Manage Books</h4>
<hr>
<br>
<%Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/library";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="select * from admin_book";
	ResultSet r=stmt.executeQuery(sql);
%>

<table border="1px solid black">
<thead><tr><td>ID</td><td>Name</td><td>Category</td><td>Author</td><td>ISBN_No</td><td>Price</td><td>Edit</td><td>Delete</td></tr></thead>
<%
int i=1;
	while(r.next())
	{
		
		String s1=r.getString("id");
		String s2=r.getString("name");
		String s3=r.getString("category");
		String s4=r.getString("author");
		String s5=r.getString("ISBN_no");
		String s6=r.getString("price");
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
		<a href="admin_edit_book2.jsp?name=<%=s2%>&id=<%=s1%>&cat=<%=s3%>&aut=<%=s4%>&isbn=<%=s5%>&price=<%=s6 %>>">Edit</a>
	</td>
	<td>
		<a href="admin_delete_book_database2.jsp?name=<%=s2%>&id=<%=s1%>">Delete</a>
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