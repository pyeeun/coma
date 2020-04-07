<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="coma.LoginBean" scope="page"/>
<jsp:setProperty name="login" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>check_login</title>
</head>
<body>
<%
	String id = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	int check = login.check_login(id, passwd);
	String msg = "";
	if(check == 1)
	{
		msg = "index.html";
	}
	else if(check == 0)
	{
		msg = "login.jsp?msg=0";
	}
	else
	{
		msg = "login.jsp?msg=-1";
	}
	
	response.sendRedirect(msg);
%>
</body>
</html>