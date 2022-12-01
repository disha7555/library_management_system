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
<h4 style="color:#111100;margin:10px">Admin Dashboard</h4>
<hr>
<br>
<div id="first">
<img src="images/boy_reader.jpg" height="150px" width="180px"/>

<br>
<p>
<%
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql2="select books_listed from admin_dashboard where id=1";
ResultSet r=stmt.executeQuery(sql2);
int b;
while(r.next())
{
	int a=r.getInt("books_listed");
	out.println("Books listed: "+a);
}
%>
</p>
</div>
<div id="second">
<img src="images/im.jpg" height="150px" width="180px"/>

<br>
<p>
<%
Class.forName("com.mysql.jdbc.Driver");
String urldb1="jdbc:mysql://localhost/library";
Connection conn1=DriverManager.getConnection(urldb1,"root","root");
Statement stmt1=conn1.createStatement();
String sql5="select books_issued from admin_dashboard where id=1";
ResultSet r1=stmt1.executeQuery(sql5);
while(r1.next())
{
	int a1=r1.getInt("books_issued");
	out.println("Books issued: "+a1);
}
%>
</p>
</div>
<div id="third">
<img src="images/kl.jpg" height="150px" width="180px"/>

<br>
<p>
<%

Class.forName("com.mysql.jdbc.Driver");
String urldb2="jdbc:mysql://localhost/library";
Connection conn2=DriverManager.getConnection(urldb1,"root","root");
Statement stmt2=conn2.createStatement();
String sql10="select books_retuned from admin_dashboard where id=1";
ResultSet r2=stmt2.executeQuery(sql10);
while(r2.next())
{
	int a2=r2.getInt("books_retuned");
	out.println("Books retuned: "+a2);
}
%>
</p>
</div>
<div id="four">
<img src="images/thappy.jpg" height="150px" width="180px"/>

<br>
<p>
<%
Class.forName("com.mysql.jdbc.Driver");
String urldb3="jdbc:mysql://localhost/library";
Connection conn3=DriverManager.getConnection(urldb3,"root","root");
Statement stmt3=conn3.createStatement();
String sql30="select category_list from admin_dashboard where id=1";
ResultSet r3=stmt3.executeQuery(sql30);
while(r3.next())
{
	int a3=r3.getInt("category_list");
	out.println("Category listed: "+a3);
}
%>
</p>
</div>
<br>
<div id="fifth">
<img src="images/boy_reader.jpg" height="150px" width="180px"/>

<br>
<p>
<%
Class.forName("com.mysql.jdbc.Driver");
String urldb4="jdbc:mysql://localhost/library";
Connection conn4=DriverManager.getConnection(urldb4,"root","root");
Statement stmt4=conn4.createStatement();
String sql40="select users_list from admin_dashboard where id=1";
ResultSet r4=stmt4.executeQuery(sql40);
while(r4.next())
{
	int a4=r4.getInt("users_list");
	out.println("Users listed: "+a4);
}
%>
</p>
</div>
</body>
</html>