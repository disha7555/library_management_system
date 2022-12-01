<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body   
{  
overflow-y: hidden;
height: 125vh;  
margin-top:1px;  
padding: 30px;  
background-size: cover;  
font-family: sans-serif;  
}  
header {  
background-color: #000080;  
position: fixed;  
left: 0;  
right: 0;  
top: 5px;  
height: 30px;  
display: flex;  
align-items: center;  
box-shadow: 0 0 25px 0 black;  
}  
header * {  
display: inline;  
}  
header li {  
color: white;  
text-decoration: none;  
margin: 5px;  
}   
*{
font-size:25px;
}
input{
font-size:17px;
}
h5{
color:white;
background-color:#000080;
display: inline;  
margin: 15px;    
color: white;  
text-decoration: none;  
}
legend
{
background-color:#000080;
color:white;
}
fieldset{
border:#000080 3px solid;
display: block;
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
Registration
</li>  
</ul>
</nav>
</header>
<br><br>
<fieldset>

<legend>Register As :</legend>
<br>
<a href="student_regi.jsp">
<input type="button" value="Student">
</a>
</br>
</br>
<a href="admin_registration.jsp">
<input type="button" value="Admin">
</a>
<br>
<br>
</fieldset>
</body>
</html>