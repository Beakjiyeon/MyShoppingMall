<!-- 20171078 백지연 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	//session에 id를 저장한다.

	String id=request.getParameter("id"); 
	if((id!=null&&id.equals("admin"))||(id!=null&&id.equals("gildong")))
	{
		session.setAttribute("username",id);
%>
	
	<jsp:forward page="main.jsp"></jsp:forward>
<%
	}
	else %>
		<jsp:forward page="login.jsp"></jsp:forward>

</body>
</html>