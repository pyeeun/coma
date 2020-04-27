<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write_notice</title>
</head>
<body>
	<div>
		<form method="post" action="handle_write_notice.jsp" name="form1">
			<input type="title" name="title" id="title" placeholder="제목"/><br>
			<input type="content" name="content" id="content" placeholder="내용"/><br>
			<input type="submit" id="btn-register" value="작성"/>
		</form>
	</div>
</body>
</html>