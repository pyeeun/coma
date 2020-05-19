<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, coma.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="qaBean" scope="page" class="coma.qaBean"/>
<jsp:useBean id="qa" class="coma.qa" />
<jsp:setProperty name="qa" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update_qa</title>
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
		width: 65%;
		border: 1px solid #eee;
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
		height: 20px;
	}
	tr
	{
		border-top: 1px solid #eee;
	}
	td
	{
		font-size: 12px;
		text-align: left;
	}
	input[type=text]
	{
		width: 99%;
		text-align: left;
	}
	#contents
	{
		height: 300px;
		vertical-align: top;
		text-align:center;
		padding: 0px;
	}
	.btn-group
	{
		width: 82.5%;
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
	qa n = new qa();
	n = qaBean.getDB(id);
%>
	<div class="header">
		<a href="index.jsp">홈</a>
		<a href="javascript:void(0);" onclick="showLogin()">로그인</a>
		<a href="javascript:void(0);" onclick="showRegister()">회원가입</a>
	</div>
	<br/>
	<p align="center" style="font-size: 30px">[ Q & A ]</p>
	<form method="post" action="handle_update_qa.jsp?id=<%=id%>" name="form1">
	<div class="btn-group">
		<a href="look_qa.jsp?id=<%=id%>"><input type="button" value="이전"/></a>
		<input type="submit" id="btn-write" value="작성"/>
	</div>
	<table align="center">
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="title" id="title" placeholder="제목" value="<%= n.getTitle() %>" />
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
				
			</td>
		</tr>
		<tr>
			<th colspan="2">내용</th>
		</tr>
		<tr>
			<td colspan="2" id="contents">
				<textarea style="width: 99.5%" rows="30" name="content" id="content"><%= n.getContent() %></textarea>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>