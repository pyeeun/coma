<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
	$(".login-box").remove();
});

function showLogin() {
	$(".login-box").show();
}
</script>
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
.contents
{
	width: 100%;
	height: 100%;
	display: table;
	margin: auto;
	padding: auto;
	/*
	background-image: url("https://images.unsplash.com/photo-1520643187271-06df1162815e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1266&q=80");
	background-repeat: no-repeat;
	background-size: cover;*/
}
.contents-box
{
	display: table-cell;
    vertical-align: middle;
	text-align: center;
}

.footer
{
	height: 100px;
	background-color: #EEEEEE;
	text-align: center;
	padding-top: 50px;
}
.footer a
{
	color: #000;
	font-size: 18px;
	text-decoration: none;
	padding: 0px 15px 0px 15px;
}
.footer p
{
	margin-top: 5px;
	padding: 0;
}

#keyword
{
	width: 500px;
	color: #000000;
	font-size: 18px;
	text-align: left;
	margin-bottom: 180px;
	padding: 15px 10px 15px 50px;
	text-decoration: none;
	border: 1px solid #BDBDBD;
	border-radius: 15px;
	background-image: url("https://image.flaticon.com/icons/svg/484/484167.svg");
	background-size: 25px;
	background-position: 17px 12px;
    background-repeat: no-repeat;
}

#logo
{
	font-size: 60px;
	margin: 0px 0px 15px 0px;
	color: #000000;
}

#enter
{
	position: absolute;
	width: 80px;
	height: 45px;
	background-color: #00B4FF;
	color: #FFFFFF;
	font-size: 20px;
	border-radius: 15px;
	border: 0px;
	margin-top: 80px;
	margin-left: -80px;
	cursor: pointer;
}
#enter:after
{
	border-top:0px solid transparent;
 	border-left: 7px solid transparent;
 	border-right: 7px solid transparent;
 	border-bottom: 10px solid #00B4FF;
 	content: "";
 	position: absolute;
 	top: -10px;
 	left: 33px;
}

.login-box
{
	z-index: 99;
	position: absolute;
	border:1px solid gray;
	background-color: #FFFFFF;
	width: 500px;
	height: 500px;
	top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
#login-form
{
	margin-top: 100px;
	text-align: center;
}

#login-form input
{
	width: 200px;
	height : 40px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="header">
		<a href="javascript:void(0);" onclick="showLogin()">로그인</a>
		<a href="javascript:void(0);" onclick="showRegister()">회원가입</a>
	</div>
	<div class="login-box">
		<form name="" id="login-form" action="" method="">
			<input type="text" name="userid" placeholder="아이디"/><br>
			<input type="password" name="passwd" placeholder="패스워드"/><br>
			<input type="submit" value="로그인"/>
		</form>
	</div>
	<div class="contents">
		<div class="contents-box">
			<p id="logo"><a href="#" style="text-decoration: none; color: #000">C O M A</a></p>
			<input type="text" id="keyword" placeholder="서울시 은평구 진관동"/>
			<button type="button" id="enter">Enter!</button>
		</div>
		<div class="modal" style="display: none">
		
		</div>
	</div>
	<div class="footer">
		<a href="#">공지사항</a>
		<a href="#">Q&A</a>
		<a href="#">이용약관</a>
		<a href="#">개인정보처리취급방침</a>
		<p>Copyright ⓒ 2020 pyeeun & seongbins All Rights Reserved</p>
	</div>
</body>
</html>