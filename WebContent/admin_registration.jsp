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
<fieldset>
<legend>Register As Admin</legend>
<br>
<form action="admin_details.jsp" method="post">
Full Name:
<br>
<input type="text" name="full_name1" placeholder="firstname middlename lastname">
<br><br>
Mobile No:
<br>
<input type="tel" name="mobile_no1" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="123-456-7890">
<br><br>
Email ID:<br>
<input type="email" name="email1" placeholder="abc@gmail.com">
<br><br>
<b>Username:</b><br>
<input type="text" name="u">
<br><br>
Password:
<br>
<input type="password" name="password1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one
 number and one uppercase and lowercase letter, and at least 8 or more characters" id="p" required>
<br><br>
Confirm Password:
<br>
<input type="password" name="confirm_password1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one
 number and one uppercase and lowercase letter, and at least 8 or more characters" id="cp" required>
<br><br>
<input type="submit" value="Register now" style="background-color:#90ee90" onclick="myfunc()">
<br><br>
</fieldset>
</form>
</body>
</html>
</body>
</html>