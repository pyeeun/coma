<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="qaBean" scope="page" class="coma.qaBean"/>
<jsp:useBean id="qa" class="coma.qa" />
<jsp:setProperty name="qa" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>handle_write_notice</title>
</head>
<body>
	<%
		if(qaBean.insertDB(qa))
			response.sendRedirect("qa.jsp");
		else
			throw new Exception("DB Insertion Error");
	%>
</body>
</html>