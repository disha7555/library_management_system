<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<style>
tbody tr:nth-child(odd) {
  background-color: #f2f2f2;
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
<h4 style="color:#000080;margin:10px">Edit Books</h4>
<hr>
<br>
<%String name=request.getParameter("name");%>
<%
String id=request.getParameter("id");
String cat=request.getParameter("cat");
String aut=request.getParameter("aut");
String isbn=request.getParameter("isbn");
String price=request.getParameter("price");
session.setAttribute("boook_id",id);
%>
<fieldset>
<legend>
Book Info:
</legend>
<form action="admin_edit_book_database2.jsp" method="post">
<br><br>
Name:
<br><input type="text" name="book_n" value="<%=name%>">
<br><br>
Category name:
<br><input type="text" name="book_cat" value="<%=cat%>">
<br><br>
Author name:
<br><input type="text" name="book_aut" value="<%=aut%>">
<br><br>
ISBN No:
<br><input type="text" name="book_isbn" value="<%=isbn%>">
<br><br>
Price:
<br><input type="text" name="book_price" value=<%=price%>>
<br><br>
<input type="submit" value="edit">
</form>
</fieldset>
<br>