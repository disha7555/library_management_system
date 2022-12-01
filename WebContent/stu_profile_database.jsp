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
String stu_id=(String)session.getAttribute("stud_id");
String t1=request.getParameter("stu_name");
String t2=request.getParameter("stu_mobile_no");
String t3=request.getParameter("stu_email_id");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
if(t1!=null)
{
String sql1="update student_regi set name='"+t1+"' where id='"+stu_id+"'";
stmt.executeUpdate(sql1);
}
if(t2!=null)
{
String sql2="update student_regi set mobile_no='"+t2+"' where id='"+stu_id+"'";
stmt.executeUpdate(sql2);
}
if(t3!=null)
{
String sql3="update student_regi set email_id='"+t3+"' where id='"+stu_id+"'";
stmt.executeUpdate(sql3);
}
response.sendRedirect("stu_profile.jsp");
%>
</body>
</html>