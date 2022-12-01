<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@page import="java.time.LocalDate"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String fn=request.getParameter("full_name");
String mn=request.getParameter("mobile_no");
String e=request.getParameter("email");
String su=request.getParameter("su");
String p=request.getParameter("password");
String cp=request.getParameter("confirm_password");
String a="active";
LocalDate date = LocalDate.now();
if(p.equals(cp))
{
	Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/library";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="insert into student_regi(name,mobile_no,email_id,password,username,Reg_Date,status)values('"+fn+"','"+mn+"','"+e+"','"+p+"','"+su+"','"+date+"','"+a+"')";
	stmt.executeUpdate(sql);
	out.println("you have registered successfully");
	
	String sql20="select users_list from admin_dashboard where id=1";
	ResultSet r20=stmt.executeQuery(sql20);
	int b=0;
	while(r20.next())
	{
		int a21=r20.getInt("users_list");
		b=a21+1;
	}
	String sql3="update admin_dashboard set users_list='"+b+"' where id=1";
	stmt.executeUpdate(sql3);

%>
<br><br>
<a href="student_login.jsp"> go to login</a>
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