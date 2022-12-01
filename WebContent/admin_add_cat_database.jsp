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
<%
String values1 = request.getParameter("category1");
String values2 = request.getParameter("category2");
String cat_name= request.getParameter("new_cat");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql1="insert into admin_book_cat(name) values('"+cat_name+"')";
if(values1!=null||values2!=null){
stmt.executeUpdate(sql1);
//out.println(values1);
//out.println(values2);
if(values1!=null)
{	String s1="active";
	String sql2="update admin_book_cat set status='"+s1+"' where name='"+cat_name+"'";
	stmt.executeUpdate(sql2);
	out.println("category added");
}
else if(values2!=null)
{	String s2="inactive";
	String sql3="update admin_book_cat set status='"+s2+"' where name='"+cat_name+"'";
	stmt.executeUpdate(sql3);
	out.println("category added");
}}
else
{
out.println("please choose status");
%>
<a href="admin_add_categories.jsp">go to Add categories</a>
<%
}
%>
<%
String sql20="select category_list from admin_dashboard where id=1";
ResultSet r20=stmt.executeQuery(sql20);
int b=0;
while(r20.next())
{
	int a=r20.getInt("category_list");
	b=a+1;
}
String sql3="update admin_dashboard set category_list='"+b+"' where id=1";
stmt.executeUpdate(sql3);
%>
</body>
</html>