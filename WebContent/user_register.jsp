<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="Register" scope="page" class="coma.RegisterBean"/>
<jsp:useBean id="users" class="coma.Users"/>
<jsp:setProperty name="users" property="*"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user_register</title>
</head>
<body>
<%
	/*String msg="";
	if(!users.getPasswd().equals(users.getPasswd2()))
	{
		response.sendRedirect("register.jsp?msg=0");
	}*/
	
	
	
	//request.setAttribute("user", Register.getDBList());
	
	if(Register.insertDB(users))
		response.sendRedirect("index.html");
	else
		throw new Exception("DB Insertion Error");
%>
</body>
</html>