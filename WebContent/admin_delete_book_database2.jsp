<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br>

<%
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String n1=request.getParameter("name");
String n2=request.getParameter("id");

String sql6="delete from admin_book where id='"+n2+"'";
stmt.executeUpdate(sql6);
String sql2="select books_listed from admin_dashboard where id=1";
ResultSet r=stmt.executeQuery(sql2);
int b=0;
while(r.next())
{
	int a=r.getInt("books_listed");
	b=a-1;
}
int BOOOK2=(Integer)session.getAttribute("BOOOK1");
String sql3="update admin_dashboard set books_listed='"+b+"' where id=1";
stmt.executeUpdate(sql3);
response.sendRedirect("admin_manage_book2.jsp");
%>
</body>
</html>