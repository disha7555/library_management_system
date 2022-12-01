<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String issue_id=(String)session.getAttribute("issue_id");
String rd1=request.getParameter("rd1");
String fine=request.getParameter("fine");
Class.forName("com.mysql.jdbc.Driver");
String urldb1="jdbc:mysql://localhost/library";
Connection con1=DriverManager.getConnection(urldb1,"root","root");
Statement stmt1=con1.createStatement();
String sql2="update admin_issue_book set fine='"+fine+"' where id='"+issue_id+"'";
stmt1.executeUpdate(sql2);
String sql1="update admin_issue_book set return_date='"+rd1+"' where id='"+issue_id+"'";
stmt1.executeUpdate(sql1);
if(!rd1.equals("not returned yet"))
{
	String urldb15="jdbc:mysql://localhost/library";
	Connection con15=DriverManager.getConnection(urldb15,"root","root");
	Statement stmt15=con15.createStatement();
String sql15="select books_retuned from admin_dashboard where id=1";
ResultSet r15=stmt15.executeQuery(sql15);
int b=0;
while(r15.next())
{
	int a=r15.getInt("books_retuned");
	b=a+1;
}
String sql3="update admin_dashboard set books_retuned='"+b+"' where id=1";
stmt15.executeUpdate(sql3);
}

response.sendRedirect("admin_manage_books.jsp");
%>
</body>
</html>