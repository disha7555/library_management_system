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
<h4 style="color:#000080;margin:10px">Edit Issued Book Details</h4>
</body>
<br>
<fieldset>
<legend>
Issue A New Book:
</legend>
<%
String id=request.getParameter("id");
session.setAttribute("issue_id",id);
String fine=request.getParameter("fine");
session.setAttribute("issue_fine",fine);
String ret_date=request.getParameter("return_date");
session.setAttribute("ret_d",ret_date);
%>
<form action="admin_edit_manage_books_database.jsp" method="post">
Return Date:
<br><input type="text" name="rd1" value=<%=ret_date%>><br><br>
Fine(rupees):
<br>
<input type="text" name="fine" value=<%=fine%>>
<br><br>
<input type="submit" value="update">
<br>
</form>
</fieldset>