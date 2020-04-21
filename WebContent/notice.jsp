<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Notice</title>
<style>
	table
	{
		width: 100%;
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
		width: 60%;
	}
	#th-rdate
	{
		width: 10%;
	}
	#th-writer
	{
		width: 15%;
	}
	#th-views
	{
		width: 10%;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th id="th-id"></th>
			<th id="th-title">제목</th>
			<th id="th-rdate">작성일시</th>
			<th id="th-writer">작성자</th>
			<th id="th-views">조회수</th>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td><a href="notice.jsp?id=1">sample</a></td>
			<td>2020-04-21</td>
			<td>yepark</td>
			<td>5</td>
		</tr>
	</table>
</body>
</html>