<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile5.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="common_student_header.html" %>
<br>
<h4 style="color:#000080;margin:21px">Student Dashboard</h4>
<hr>
<br>
<div id="second">
<img src="images/boook11.jpg" height="150px" width="180px"/>
<p>
<%
String user_name2=(String)session.getAttribute("oldu2");
Class.forName("com.mysql.jdbc.Driver");
String urldb2="jdbc:mysql://localhost/library";
Connection conn2=DriverManager.getConnection(urldb2,"root","root");
Statement stmt2=conn2.createStatement();
String sql2="select * from admin_issue_book where username='"+user_name2+"'";
ResultSet r2=stmt2.executeQuery(sql2);
int i2=0;
int i3=0;
	while(r2.next())
	{	i2++;
		String b1=r2.getString("book_name");
		String c1=r2.getString("isbn_no");
		String d1=r2.getString("issued_date");
		String e1=r2.getString("return_date");
		String f1=r2.getString("fine");
		String return_d="not returned yet";
		if(!e1.equals(return_d)){
			i3++;
		}


	}
out.println("Books returned: "+i3);
	stmt2.close();
	conn2.close();
	%>
</p>
</div>
<div id="third">
<img src="images/aaaaa.jpg" height="150px" width="180px"/>
<p>
<%
String user_name3=(String)session.getAttribute("oldu2");
Class.forName("com.mysql.jdbc.Driver");
String urldb3="jdbc:mysql://localhost/library";
Connection conn3=DriverManager.getConnection(urldb3,"root","root");
Statement stmt3=conn3.createStatement();
String sql3="select * from admin_issue_book where username='"+user_name3+"'";
ResultSet r3=stmt3.executeQuery(sql2);
int i4=0;
	while(r3.next())
	{	i4++;
		String b2=r3.getString("book_name");
		String c3=r3.getString("isbn_no");
		String d3=r3.getString("issued_date");
		String e3=r3.getString("return_date");
		String f3=r3.getString("fine");
		String return_d="not returned yet";
	}
out.println("Books issued: "+i4);
	stmt3.close();
	conn3.close();
	%>
</p>
</div>
</body>
</html>

	
	
