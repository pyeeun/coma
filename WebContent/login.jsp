<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<style>
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
</style>
</head>
<body>
	<div class="login_form">
		<form method="post" action="check_login.jsp" name="form1" id="login-form">
			<p style="font-size: 40px; margin-bottom: 0px; padding-bottom: 10px;">C O M A</p>
			<input type="text" name="userid" class="lgn-input" placeholder="아이디"/><br>
			<input type="password" name="passwd" class="lgn-input" placeholder="패스워드"/><br>
			<input type="submit" id="btn-login" value="로그인"/>
		</form>
	</div>
	<%
		String msg=request.getParameter("msg");
		if(msg!=null && msg.equals("0"))
		{
			out.println("<script>alert('비밀번호를 확인해주세요.');</script>");
		}
		else if(msg!=null && msg.equals("-1"))
		{
			out.println("<script>alert('ID를 확인해주세요.');</script>");
		}
	%>
</body>
</html>