<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
*{
    font-size:25px;}
.no-background {
    background: url("images/thumb.jpg")top left no-repeat;
    height:1000em;
    width:1500em;
    background-size:40em;
  
}
img{
 width: 100%;
    height: 100%; 
    object-fit: contain;
    
}
h1{
font-size:35px;
color:#000080;
}
body   
{  
overflow-y: hidden;
overflow-x: hidden;
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
margin: 5px;  
}  
header li a {  
color: white;  
text-decoration: none;  
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
<a href="registration.jsp">Registration </a>  
</li>  
<li>  
<a href="login.jsp"> Login </a>  
</li>   
</ul>  
</nav>  
</header>  

<div class="no-background">
<h1>Welcome to Library Management System</h1>
</div>

<img src="images/best.jpg" height="150px" width="180px"/>

</body>
</html>
<!--background="E:/java_work/library management system/library1.jpg"2.7%40em1000px-->
