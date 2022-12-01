<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="common_admin_header.html" %>
<br>
<h4 style="color:#000080;margin:10px">Issue Books</h4>
</body>
<br>
<fieldset>
<legend>
Issue A New Book:
</legend>
<form action="admin_issued_book_databse.jsp">
<br>
Student Name:
<br><input type="text" name="is">
<br><br>
Student Username:
<br><input type="text" name="un">
<br><br>
Book title:
<br><input type="text" name="ib">
<br><br>
Book ISBN no:
<br><input type="text" name="isbn">
<br><br>
<input type="submit" value="issue">
<br>
</form>
</fieldset>
</html>
