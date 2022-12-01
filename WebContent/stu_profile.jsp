<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@taglib prefix="s" uri="http://java.sun.com/jstl/sql_rt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="common_student_header.html" %>
<br>
<h4 style="color:#000080;margin:21px">Student Profile</h4>
<hr>
<br>
<%String user_name3=(String)session.getAttribute("oldu2");
Class.forName("com.mysql.jdbc.Driver");
String urldb3="jdbc:mysql://localhost/library";
Connection conn3=DriverManager.getConnection(urldb3,"root","root");
Statement stmt3=conn3.createStatement();
String sql="select * from student_regi where username='"+user_name3+"'";
ResultSet r3=stmt3.executeQuery(sql);%>
<table border="2">  
<tr><th>ID</th><th>Registration Date</th><th>Status</th><th>Name</th><th>Mobile No</th><th>Email Id</th></tr>  
<%
while(r3.next())
	{	
		String id1=r3.getString("id");
		String Reg_Date1=r3.getString("Reg_Date");
		String status1=r3.getString("status");
		String name1=r3.getString("name");
		String mobile_no1=r3.getString("mobile_no");
		String email_id1=r3.getString("email_id");
%>
<tr>  
<td><%out.println(id1);%></td> 
<td><%out.println(Reg_Date1);%></td>   
<td><%out.println(status1);%></td>  
<td><%out.println(name1);%></td>  
<td><%out.println(mobile_no1);%></td>   
<td><%out.println(email_id1);%></td>  
<td>
<a href="stu_profile_form.jsp?id=<%=id1%>&name=<%=name1%>&mobile_no=<%=mobile_no1%>&email_id=<%=email_id1%>">Update</a>
</td></tr></table><%} %> 

</a>
</body>
</html>