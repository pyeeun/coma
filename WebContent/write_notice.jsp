<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write_notice</title>
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
	<div class="header">
		<a href="index.jsp">홈</a>
		<a href="javascript:void(0);" onclick="showLogin()">로그인</a>
		<a href="javascript:void(0);" onclick="showRegister()">회원가입</a>
	</div>
	<br/>
	<p align="center" style="font-size: 30px">[ 공지사항 ]</p>
	
	
	<form method="post" action="handle_write_notice.jsp" name="form1">
	<div class="btn-group">
		<a href=""><input type="submit" id="btn-write" value="작성"/></a>
	</div>
	<table align="center">
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="title" id="title" placeholder="제목"/>
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
				<textarea style="width: 99.5%" rows="30" name="content" id="content"></textarea>
			</td>
		</tr>
	</table>
	</form>
	<!-- 
	<div>
		<form method="post" action="handle_write_notice.jsp" name="form1">
			<input type="title" name="title" id="title" placeholder="제목"/><br>
			<input type="content" name="content" id="content" placeholder="내용"/><br>
			<input type="submit" id="btn-register" value="작성"/>
		</form>
	</div> -->
</body>
</html>