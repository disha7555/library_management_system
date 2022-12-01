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
<h4 style="color:#000080;margin:10px">Add Categories</h4>
<hr>
<br>
<form action="admin_add_cat_database.jsp">
<fieldset>
<legend>Category info:</legend>
<br>
Category name:
<br>
<input type="text" name="new_cat">
<br><br>
Status:
<br>

<input type="radio" name="category1" id="active">
<label for="active">active</label>
<br>
<input type="radio" name="category2" id="inactive">
<label for="inactive">inactive</label>
<br>
<input type="submit" value="Create"/>
</fieldset>
</form>
</body>
</html>