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
Class.forName("com.mysql.jdbc.Driver");
String urldb="jdbc:mysql://localhost/library";
Connection conn=DriverManager.getConnection(urldb,"root","root");
Statement stmt=conn.createStatement();
String is=request.getParameter("is");
String un=request.getParameter("un");
String ib=request.getParameter("ib");
String isbn=request.getParameter("isbn");
LocalDate localdate = LocalDate.now();
Date date1 = java.sql.Date.valueOf(localdate);
String ry="not returned yet";

String sql2="insert into admin_issue_book(student_name,book_name,isbn_no,issued_date,return_date,username) values('"+is+"','"+ib+"','"+isbn+"','"+date1+"','"+ry+"','"+un+"')";
stmt.executeUpdate(sql2);
//String sql3="update admin_issue_book set username='"+un+"' where ";
//stmt.executeUpdate(sql3);
String sql4="select books_issued from admin_dashboard where id=1";
ResultSet r=stmt.executeQuery(sql4);
int b=0;
while(r.next())
{
	int a=r.getInt("books_issued");
	b=a+1;
}
String sql5="update admin_dashboard set books_issued='"+b+"' where id=1";
stmt.executeUpdate(sql5);

response.sendRedirect("admin_manage_books.jsp");
%>
</body>
</html>