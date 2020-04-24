<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, coma.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="q_aBean" scope="page" class="coma.q_aBean"/>
<jsp:useBean id="q_a" class="coma.q_a" />
<jsp:setProperty name="q_a" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Look Notice</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		q_a text = new q_a();
		q_aBean.updateViews(id);
		text = q_aBean.getDB(id);
	%>
	<%= text.getViews() %>
	<%= text.getContent() %>
</body>
</html>