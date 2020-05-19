<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, coma.*"%>
<!DOCTYPE html>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="qaBean" scope="page" class="coma.qaBean"/>
<jsp:useBean id="qa" class="coma.qa" />
<jsp:setProperty name="qa" property="*" />

<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<script language="javascript">
	function check(pw, id)
	{
		var passwd1 = pw;
		if(passwd1 == null)
		{
			location.href="look_qa.jsp?id="+id;
			return true;
		}
		var passwd2 = prompt("비밀번호를 입력하세요.");
		
		if(passwd1 == passwd2)
		{
			location.href="look_qa.jsp?id="+id;
			return true;
		}
		else
		{
			alert("비밀번호가 일치하지 않습니다.");
			location.href="qa.jsp";
			return false;
		}
	}
</script>
<meta charset="UTF-8">
<title>Q&A</title>
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
		text-align: center;
	}
	#th-id
	{
		width: 5%;
	}
	#th-title
	{
		width: 50%;
	}
	#th-rdate
	{
		width: 20%;
	}
	#th-writer
	{
		width: 15%;
	}
	#th-views
	{
		width: 10%;
	}
	
	.btn-group
	{
		width: 82%;
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
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<div class="header">
		<a href="index.jsp">홈</a>
		<a href="javascript:void(0);" onclick="showLogin()">로그인</a>
		<a href="javascript:void(0);" onclick="showRegister()">회원가입</a>
	</div>
	<br/>
	<p align="center" style="font-size: 30px">[ Q & A ]</p>
	<div class="btn-group">
		<a href="write_qa.jsp"><input type="button" id="btn-write" value="작성"/></a>
	</div>
	<table id="qa-list" align="center">
		<!-- 
		<tr colspan="5" style="text-align:right">
			<input type="button" id="btn-write" value="작성"/>
		</tr>
		-->
		<tr>
			<th id="th-title">제목</th>
			<th id="th-rdate">작성일시</th>
			<th id="th-writer">작성자</th>
			<th id="th-views">조회수</th>
		</tr>
		<%
			ArrayList<qa> qa_List = new ArrayList<qa>();
			qa_List = qaBean.getDBList();
			for(qa n : qa_List)
			{
		%>
		<tr>
			<td style="text-align: left; padding-left: 5px;"><a href="#" onclick="check(<%=n.getPasswd()%>, <%= n.getQa_id() %>);"><%= n.getTitle() %></a></td>
			<td><%= n.getRegister_date() %></td>
			<td><%= n.getWriter() %></td>
			<td><%= n.getViews() %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>