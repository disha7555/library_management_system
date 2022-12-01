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
<header>  
<nav>  
<ul>  
<li>  
<a href="admin_dashboard.jsp"> Dashboard </a>  
</li>  
<li>  
<a href="admin_add_categories.jsp"> Add Categories </a>  
</li>  
<li>  
<a href="admin_manage_categories.jsp"> Manage Categories </a>  
</li>  
<li>  
<a href="admin_add_books.jsp"> Add books </a>  
</li>  
<li>  
<a href="admin_manage_book2.jsp"> Manage Books </a>  
</li>
<li>  
<a href="admin_manage_books.jsp"> Manage Issued Books </a>  
</li>
<li>  
<a href="admin_issued_books.jsp"> Issue New Books </a>  
</li>
<li>  
<a href="admin_manage_registered_students.jsp"> Manage Students </a>  
</li>  
<li>  
<a href="admin_change_password.jsp"> Change Password </a>  
</li>  
</ul>  
</nav>  
</header>  
<br>
<%
String bn=request.getParameter("bn");
String book_c=request.getParameter("book_c");
String an=request.getParameter("an");
String isbn=request.getParameter("isbn");
String pr=request.getParameter("pr");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql="insert into admin_book(name,category,author,ISBN_no,Price) values('"+bn+"','"+book_c+"','"+an+"','"+isbn+"','"+pr+"')";
stmt.executeUpdate(sql);
out.println("you have entered successfully");
String sql2="select books_listed from admin_dashboard where id=1";
ResultSet r=stmt.executeQuery(sql2);
int b=0;
while(r.next())
{
	int a=r.getInt("books_listed");
	b=a+1;
}
String sql3="update admin_dashboard set books_listed='"+b+"' where id=1";
stmt.executeUpdate(sql3);
%>
</body>
</html>