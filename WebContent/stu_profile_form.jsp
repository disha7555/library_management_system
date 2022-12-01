<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("id");
String s2=request.getParameter("name");
String s3=request.getParameter("mobile_no");
String s4=request.getParameter("email_id");
session.setAttribute("stud_id",s1);
%>
<form action="stu_profile_database.jsp" method="post">
<br>
Name:<input type="text" name="stu_name" value="<%=s2%>">
<br><br>
Email Id:<input type="text" name="stu_email_id" value="<%=s3%>">
<br><br>
Mobile No:<input type="text" name="stu_mobile_no" value="<%=s4%>">
<br><br>
<input type="submit" value="update">
</form>
</body>
</html>