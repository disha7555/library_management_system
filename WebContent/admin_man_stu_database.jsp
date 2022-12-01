<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<style>
tbody,tr:nth-child(odd) {
  background-color: #f2f2f2
}
</style>
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
<h4 style="color:#000080;margin:10px">Manage Categories</h4>
<hr>
<br>
<%
String b=request.getParameter("id11");
String c=request.getParameter("firstname11");
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();

if(b!=null){
	String s1="active";
String sql1="update student_regi set status='"+s1+"' where id='"+b+"'";
stmt.executeUpdate(sql1);
//out.println(b);

}
if(c!=null){

	String s2="inactive";
String sql2="update student_regi set status='"+s2+"' where name='"+c+"'";
stmt.executeUpdate(sql2);
//out.println(c);

}
String sql="select * from student_regi";
ResultSet r=stmt.executeQuery(sql);
%>
<table border="1px solid black">

<thead><tr><td>ID</td><td>Name</td><td>Mobile_no</td><td>email_id</td><td>Reg Date</td><td>status</td></tr></thead>
<tbody>
<%int i=1;
while(r.next())
{
	String s1=r.getString("id");
	String s2=r.getString("name");
	String s3=r.getString("mobile_no");
	String s4=r.getString("email_id");
	String s5=r.getString("Reg_Date");
	String s6=r.getString("status");
%>
<tr>

<td>
	<%out.println(i);
		i++;
		%>
</td>
<td>
	<%out.println(s2);
	out.println("<BR>");
	 %>
</td>
<td>
	<%out.println(s3);
	out.println("<BR>");
	 %>
</td>
<td>
	<%out.println(s4);
	out.println("<BR>");
	 %>
</td>
<td>
	<%out.println(s5);
	out.println("<BR>");
	 %>
</td>
<td>
	<%out.println(s6);
	out.println("<BR>");
	 %>
</td>
</tr>
<%} %>
</tbody>
</table>
<%
stmt.close();
conn.close();
%>

</body>
</html>