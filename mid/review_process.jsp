<!-- 20171078 백지연 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String msg=request.getParameter("msg");
//평점 받아오기
String score=request.getParameter("score");

Object username=session.getAttribute("username");

ArrayList<String> msgs=(ArrayList<String>)application.getAttribute("msgs");

if(msgs==null){
	msgs=new ArrayList<String>();
	application.setAttribute("msgs",msgs);
}

msgs.add("["+new java.util.Date()+"] "+username+ "님의 의견  <br>"+"♥ 평점 : "+score+"<br>♥ 상세 리뷰 <br>: "+msg);

//application.log(msg+"추가됨");
response.sendRedirect("go2detail.jsp");

%>

</body>
</html>