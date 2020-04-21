<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COMA</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<style>
	html, body, .wrap 
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
	
	#logo
	{
		font-size: 60px;
		margin: 0px 0px 15px 0px;
		color: #000000;
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
	.login-box, .register-box, .terms-box
	{
		position: absolute;
		background-color: #FFFFFF;
		border: 1px solid #EEEEEE;
		text-align: center;
		top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    z-index: 99;
	}
	#btn-lgn-close, #btn-rgst-close, #btn-terms-close
	{
		margin-top: 10px;
		margin-left: 350px;
		padding-bottom: 0px;
		border: none;
		font-size: 20px;
		background-color: #FFFFFF;
		cursor: pointer;
	}
</style>
<script>
	function showLogin()
	{
		$(".wrap").hide();
		$("body").css("background-color","#5D5D5D");
		$(".login-box").show();
	}
	function showRegister()
	{
		$(".wrap").hide();
		$("body").css("background-color","#5D5D5D");
		$(".register-box").show();
	}
	function showTerms()
	{
		$(".wrap").hide();
		$("body").css("background-color","#5D5D5D");
		$(".terms-box").show();
	}
	function removeData()
	{
		$("input[type=text]").val("");
		$("input[type=password]").val("");
	}
	$(document).ready(function() 
	{
		$(".login-box").hide();
		$(".register-box").hide();
		$(".terms-box").hide();
		
		// closing login form
		$("#btn-lgn-close").click(function() 
		{
			removeData();
			$(".wrap").show();
			$("body").css("background-color","#FFFFFF");
			$(".login-box").hide();
		});
		
		// closing register form
		$("#btn-rgst-close").click(function() 
		{
			removeData();
			$(".wrap").show();
			$("body").css("background-color","#FFFFFF");
			$(".register-box").hide();
		});
		
		// closing terms form
		$("#btn-terms-close").click(function() 
		{
			removeData();
			$(".wrap").show();
			$("body").css("background-color","#FFFFFF");
			$(".terms-box").hide();
		});
	});
	
</script>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<a href="javascript:void(0);" onclick="showLogin()">로그인</a>
			<a href="javascript:void(0);" onclick="showRegister()">회원가입</a>
		</div>
		<div class="contents">
			<div class="contents-box">
				<a href="index.jsp" id="logo" style="text-decoration: none; color: #000">
					<img src="images\logo.png" width="300px"/>
				</a>
				<br>
				<input type="text" id="keyword" placeholder="서울특별시 은평구 진관동"/>
				<button type="button" id="enter">Enter!</button>
			</div>
		</div>
		<div class="footer">
			<a href="#">공지사항</a>/
			<a href="#">Q&A</a>/
			<a href="javascript:void(0);" onclick="showTerms()">이용약관</a>/
			<a href="#">개인정보처리방침</a>
			<p>Copyright ⓒ 2020 pyeeun & seongbins All Rights Reserved</p>
		</div>
	</div>
	<div class="login-box" style="width:400px; height:400px; text-align: center;">
		<input type="button" id="btn-lgn-close" value="X"/>
		<jsp:include page="login.jsp"/>
	</div>
	<div class="register-box" style="width:400px; height:600px">
		<input type="button" id="btn-rgst-close" value="X"/>
		<jsp:include page="register.jsp"/>
	</div>
	<div class="terms-box" style="width:800px; height:720px">
		<input type="button" id="btn-terms-close" value="X" style="margin-left: 750px"/>
		<jsp:include page="terms.jsp"/>
	</div>
</body>
</html>