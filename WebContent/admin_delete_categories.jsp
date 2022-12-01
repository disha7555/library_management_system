<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<style>
tbody tr:nth-child(odd) {
  background-color: #f2f2f2;
}

</style>
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
<a href="admin_add_books.jsp"> Add Books </a>  
</li>  
<li>  
<a href="admin_manage_book2.jsp"> Manage books </a>  
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
<h4 style="color:#000080;margin:10px">Edit Categories</h4>
<hr>
<br>
<%String n=request.getParameter("name");%>
<%
String i=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql1="delete from admin_book_cat where id='"+i+"'";
stmt.executeUpdate(sql1);
response.sendRedirect("admin_manage_categories.jsp");

%>
</body>
</html>