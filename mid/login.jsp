<!-- 20171078 백지연 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" type="text/css" href="all.css">
</head>
<body>
<%@ include file="menubar.jsp" %>
<center>
<h2>LOGIN</h2>
<form action="login_process.jsp">
<br>
ID : <input type="text" name="id"><br><br>
<input type="submit" value="로그인">
</form>
</center>
</body>
</html>