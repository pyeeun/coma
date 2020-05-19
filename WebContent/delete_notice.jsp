<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="noticeBean" scope="page" class="coma.NoticesBean"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>delete_notice</title>
<body>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	Boolean a = noticeBean.deleteDB(id);
	if(a == true)
	{
		out.println("<script>alert('삭제되었습니다.');</script>");
		out.println("<script>location.href='notice.jsp';</script>");
		//response.sendRedirect("notice.jsp");
	}
%>
</body>
</html>