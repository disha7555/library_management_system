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
<%@include file="common.html" %>
<br>
<fieldset>
<legend>Login As Student</legend>
<br>
<form action="student_valid.jsp" method="post">
<br>
<b>Username:</b><br>
<input type="text" name="su1">
<br><br>
<b>Password:</b>
<br>
<input type="password" name="sp1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least
 one number and one uppercase and lowercase letter, and at least 8 or more characters" id="p" required>
<br><br>
<input type="submit" value="login" style="background-color:#90ee90">
<br><br>
</fieldset>
</form>
</body>
</html>
