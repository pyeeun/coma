<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="noticeBean" scope="page" class="coma.NoticesBean"/>
<jsp:useBean id="notice" class="coma.Notices" />
<jsp:setProperty name="notice" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>handle_write_notice</title>
</head>
<body>
	<%
		if(noticeBean.insertDB(notice))
			response.sendRedirect("notice.jsp");
		else
			throw new Exception("DB Insertion Error");
	%>
</body>
</html>