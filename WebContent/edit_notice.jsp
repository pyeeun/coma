<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, coma.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="noticeBean" scope="page" class="coma.NoticesBean"/>
<jsp:useBean id="notice" class="coma.Notices" />
<jsp:setProperty name="notice" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>edit_notice</title>
</head>
<body>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	Notices n = new Notices();
	n = noticeBean.getDB(id);
%>

</body>
</html>