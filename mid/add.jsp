<!-- 20171078 백지연 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니 페이지</title>
</head>
<body>
<% 
	Object se=session.getAttribute("username");
	if(se==null){
		response.sendRedirect("login.jsp");
	}
	else{
	request.setCharacterEncoding("UTF-8");
	
	String counts=request.getParameter("count");
	
	ArrayList list=(ArrayList)session.getAttribute("countlist");
	if(list==null){
	list=new ArrayList();
	session.setAttribute("countlist",list);
	}
	
	list.add(counts);
			
	
	response.sendRedirect("list.jsp");	
	}
%>


</body>
</html>