<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, coma.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="noticeBean" scope="page" class="coma.NoticesBean"/>
<jsp:useBean id="notice" class="coma.Notices" />
<jsp:setProperty name="notice" property="*" />

<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Look Notice</title>
<style>
	html, body
	{
		margin: 0;
		padding: 0;
		height: 100%;
		font-family: 'Noto Sans KR', sans-serif;
	}
	.header 
	{
		height: 47px;
		padding: 20px 30px 0px 0px;
		text-align: right;
		-webkit-box-shadow: 0 5px 5px #EEEEEE;
		-moz-box-shadow: 0 5px 5px #EEEEEE;
		box-shadow: 0 5px 5px #EEEEEE;
	}
	.header a
	{
		color: #000;
		font-size: 18px;
		text-decoration: none;
		padding: 5px 15px 5px 15px;
		margin: 0px 5px 0px 5px;
	}
	table
	{
		width: 55%;
		border: 1px solid #ddd;
		font-family: 'Noto Sans KR', sans-serif;
		margin-bottom: 50px;
	}
	th
	{
		background-color: #eee;
		color: #000;
		font-size: 13px;
		text-decoration: none;
		text-align: center;
		width: 30%;
		height: 20px;
	}
	tr
	{
		border-top: 1px solid #ddd;
	}
	td
	{
		font-size: 12px;
		padding-left: 10px;
		text-align: left;
	}
	#contents
	{
		height: 500px;
		vertical-align: top;
		text-align:center;
		padding: 0px;
	}
	.btn-group
	{
		width: 77.5%;
		text-align: right;
		margin-top: 30px;
		margin-bottom: 10px;
	}
	.btn-group input
	{
		width: 50px;
		height: 25px;
		margin-top: 15px;
		background-color: #5D5D5D;
		border: none;
		font-size: 14px;
		color: #FFFFFF;
		cursor: pointer;
	}
</style>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Notices n = new Notices();
		noticeBean.updateViews(id);
		n = noticeBean.getDB(id);
	%>
	<div class="header">
		<a href="index.jsp">홈</a>
		<a href="javascript:void(0);" onclick="showLogin()">로그인</a>
		<a href="javascript:void(0);" onclick="showRegister()">회원가입</a>
	</div>
	<br/>
	<p align="center" style="font-size: 30px">[ 공지사항 ]</p>
	<div class="btn-group">
		<a href="notice.jsp"><input type="button" value="이전"/></a>
		<a href="update_notice.jsp?id=<%=id%>"><input type="button" id="btn-modify" value="수정"/></a>
		<a href="delete_notice.jsp?id=<%=id%>" onclick="return confirm('삭제하시겠습니까?')"><input type="button" id="btn-delete" value="삭제"/></a>
	</div>
	<table align="center">
		<tr>
			<th>제목</th>
			<td>
			<%= n.getTitle() %>	
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
			<%= n.getWriter() %>	
			</td>
		</tr>
		<tr>
			<th>작성일시</th>
			<td>
			<%= n.getRegister_date() %>	
			</td>
		</tr>
		<tr>
			<th colspan="2">내용</th>
		</tr>
		<tr>
			<td colspan="2" id="contents">
			<%= n.getContent() %>
			</td>
		</tr>
	</table>
</body>
</html>