<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<style>

</style>
</head>
<body>
	<div class="login_form">
		<form method="post" action="check_login.jsp" name="form1">
			<input type="text" name="userid" placeholder="아이디"/><br>
			<input type="password" name="passwd" placeholder="패스워드"/><br>
			<input type="submit" value="로그인"/>
		</form>
	</div>
</form>
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