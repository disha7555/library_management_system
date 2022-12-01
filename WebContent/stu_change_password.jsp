<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h4 style="color:#000080;margin:10px">Student Change Password</h4>
<br>
<form action="stu_change_pass_database.jsp" method="post">
<fieldset>
<legend>
Change Password
</legend>
Old password:
<br>
<input type="text" name="ooo1">
<br><br>
New password:
<br>
<input type="text" name="nnn1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one
 number and one uppercase and lowercase letter, and at least 8 or more characters" id="p" required>
<br><br>
Confirm password:
<br>
<input type="text" name="nnnc1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one
 number and one uppercase and lowercase letter, and at least 8 or more characters" id="p" required>
<br><br>
<input type="submit" value="submit">
</fieldset>
</form>
</body>
</html>