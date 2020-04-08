<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<style>
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
	<div class="login_form">
		<form method="post" action="" name="form1" id="register-form">
			<p style="font-size: 28px; margin-bottom: 0px; padding-bottom: 10px;">C O M A</p>
			<input type="text" name="userid" class="rgst-input" placeholder="아이디"/><br>
			<input type="password" name="passwd" class="rgst-input" placeholder="비밀번호"/><br>
			<input type="password" name="passwd2" class="rgst-input" placeholder="비밀번호 확인"/><br>
			<input type="text" name="birth" class="rgst-input" placeholder="생년월일" onfocus="(this.type='date')"/><br>
			<input type="text" name="area" class="rgst-input" placeholder="지역설정"/><br>
			<input type="text" name="email" class="rgst-input" placeholder="이메일"/><br><br>
			<input type="checkbox" name="maskalarm_yn"/>
			<label for="maskalarm_yn" style="color: #5D5D5D;">마스크 알림을 받겠습니다.</label><br>
			<input type="submit" id="btn-register" value="회원가입"/>
		</form>
	</div>
</body>
</html>