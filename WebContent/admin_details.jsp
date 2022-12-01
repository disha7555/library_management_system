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
String fn=request.getParameter("full_name1");
String mn=request.getParameter("mobile_no1");
String e=request.getParameter("email1");
String u=request.getParameter("u");
String p=request.getParameter("password1");
String cp=request.getParameter("confirm_password1");
if(p.equals(cp))
{
	Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/library";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="insert into admin_regi(name,mobile_no,email_id,password,username) values('"+fn+"','"+mn+"','"+e+"','"+p+"','"+u+"')";
	stmt.executeUpdate(sql);
	out.println("you have registered successfully");

%>
<br><br>
<a href="admin_login.jsp"> go to login</a>
<br>
<a href="homepage.jsp"> go to homepage</a>
<%
}
else
{
	out.println("password and confirm password doesn't match");
}
%>
</body>
</html>