<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<style>
	html, body, input, p, span, div
	{
		font-family: 'Noto Sans KR', sans-serif;
	}
	#login-form
	{
		margin-top: 20px;
	}
	.lgn-input
	{
		width: 220px;
		height: 30px;
		margin-top: 15px;
		padding: 3px 15px 3px 15px;
		border: 1px solid #BBBBBB;
		font-size: 14px;
	}
	#btn-login
	{
		width: 250px;
		height: 40px;
		margin-top: 15px;
		background-color: #00B4FF;
		border: none;
		font-size: 14px;
		color: #FFFFFF;
		cursor: pointer;
	}
	#btn-naver-login
	{
		width: 250px;
		height: 40px;
		margin-top: 15px;
		background-color: #FFFFFF;
		border: 1px solid #DDDDDD;
		font-size: 14px;
		color: #00CA2E;
		cursor: pointer;
	}
</style>
</head>
<body>
	<div>
		<form method="post" action="check_login.jsp" name="form1" id="login-form">
			<img src="images\logo.png" width="200px"/>
			<input type="text" name="userid" class="lgn-input" placeholder="아이디"/><br>
			<input type="password" name="passwd" class="lgn-input" placeholder="비밀번호"/><br>
			<input type="submit" id="btn-login" value="로그인"/>
			<input type="button" id="btn-naver-login" value="네이버로 로그인">
		</form>
	</div>
	<%
		String msg=request.getParameter("msg");
		if(msg!=null && msg.equals("0"))
		{
			out.println("<script>alert('비밀번호 입력을 확인해주세요.');</script>");
		}
		else if(msg!=null && msg.equals("-1"))
		{
			out.println("<script>alert('ID 입력을 확인해주세요.');</script>");
		}
	%>
</body>
</html>