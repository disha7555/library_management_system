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
String sp1=request.getParameter("sp1");
String su1=request.getParameter("su1");
session.setAttribute("oldp2",sp1);
session.setAttribute("oldu2",su1);
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql="select * from student_regi where username='"+su1+"'";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
String s1=rs.getString("password");
if(sp1.equals(s1))
{
	response.sendRedirect("stu_dashboard.jsp");
}
else
{	out.println("wrong password or username");
%>
<a href="student_login.jsp"><input type="button" value="go to login"></a>
<%
}
}
%>
</body>
</html>