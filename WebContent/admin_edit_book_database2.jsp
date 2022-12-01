<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String n2=(String)session.getAttribute("boook_id");
String n1=request.getParameter("book_n");
String n3=request.getParameter("book_cat");
String n4=request.getParameter("book_aut");
String n5=request.getParameter("book_isbn");
String n6=request.getParameter("book_price");
out.println(n1);
%>
<br><br>

<%
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
if(n1!=null)
{
String sql1="update admin_book set name='"+n1+"' where id='"+n2+"'";
stmt.executeUpdate(sql1);
}
if(n3!=null)
{
String sql2="update admin_book set category='"+n3+"' where id='"+n2+"'";
stmt.executeUpdate(sql2);
}
if(n4!=null)
{
String sql4="update admin_book set author='"+n4+"' where id='"+n2+"'";
stmt.executeUpdate(sql4);
}
if(n5!=null)
{
String sql5="update admin_book set ISBN_no='"+n5+"' where id='"+n2+"'";
stmt.executeUpdate(sql5);
}
if(n6!=null)
{
String sql6="update admin_book set price='"+n6+"' where id='"+n2+"'";
stmt.executeUpdate(sql6);
}

response.sendRedirect("admin_manage_book2.jsp");
%>
</body>
</html>