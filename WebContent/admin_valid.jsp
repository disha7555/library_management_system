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
String p1=request.getParameter("p1");
String u1=request.getParameter("u1");
session.setAttribute("oldp1",p1);
session.setAttribute("oldu1",u1);
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String sql="select * from admin_regi where username='"+u1+"'";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
String s1=rs.getString("password");
if(p1.equals(s1))
{
	response.sendRedirect("admin_dashboard.jsp");
}
else
{	out.println("wrong password or username");
%>
<a href="admin_login.jsp"><input type="button" value="go to login"></a>
<%
}
}
%>
</body>
</html>