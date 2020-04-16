<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="Register" scope="page" class="coma.RegisterBean"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script>

	// id check
	function idcheck()
	{
		var userid = $("#userid").val();
		<%	
			//String id = request.getParameter("userid").trim();
			boolean a = Register.IDcheck("id");
		%>
		var flag = <%= a %>;
		
		if(flag == true)
		{
			alert('중복된 아이디가 있습니다.');
		}
		else
		{
			alert('사용 가능한 아이디입니다.');
		}
	}
	
	// form data validation check
	function check()
	{
		var passwd = $("#passwd").val();
		var passwd2 = $("#passwd2").val();
		
		// not equals passwd, passwd2
		if(passwd != passwd2)
		{
			alert('비밀번호가 일치하지 않습니다.');
			return;
		}
	}
</script>
<style>
	html, body, input, p, span, div
	{
		font-family: 'Noto Sans KR', sans-serif;
	}
	#register-form
	{
		margin-top: 30px;
	}
	.rgst-input
	{
		width: 220px;
		height: 30px;
		margin-top: 15px;
		padding: 3px 15px 3px 15px;
		border: 1px solid #BBBBBB;
		font-size: 14px;
	}
	#btn-register
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
	<div>
		<form method="post" action="user_register.jsp" name="form1" id="register-form" onsubmit="return check()">
			<img src="images\logo.png" width="150px"/><br>
			<input type="text" name="userid" id="userid" class="rgst-input" onfocusout="idcheck()" placeholder="아이디"/><br>
			<input type="password" name="passwd" id="passwd" class="rgst-input" placeholder="비밀번호"/><br>
			<input type="password" name="passwd2" id="passwd2" class="rgst-input" placeholder="비밀번호 확인"/><br>
			<input type="text" name="birth" id="birth" class="rgst-input" placeholder="생년월일" onfocus="(this.type='date')"/><br>
			<input type="text" name="area" id="area" class="rgst-input" placeholder="지역설정"/><br>
			<input type="text" name="email" id="email" class="rgst-input" placeholder="이메일"/><br>
			<input type="checkbox" name="maskalarm_yn" id="maskalarm_yn" style="margin-top: 15px; margin-bottom: 10px"/>
			<label for="maskalarm_yn" style="color: #5D5D5D; font-size: 14px;">마스크 알림을 받겠습니다.</label><br>
			<input type="submit" id="btn-register" value="회원가입"/>
		</form>
	</div>
	
	<iframe width=800 name="iframe" width="0" height="0" frameborder="0" scrolling="no"></iframe>
	<form method="post" action="" name="form2"></form>
	<script language=javascript>
		form2.target="iframe";
		form2.action="register.jsp?name="+userid;
		form2.submit();
	</script>
</body>
</html>