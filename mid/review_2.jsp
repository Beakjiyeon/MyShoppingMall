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

<% request.setCharacterEncoding("UTF-8");
	
%>
<center>
<h2>review</h2>
</center>

<div class="reviewbox">
<ul class="review_li">
<%
	ArrayList<String> msgs=(ArrayList<String>)application.getAttribute("msgs_2");
	if(msgs!=null)
	{
		for(String msg:msgs)
			{out.println("<div style='background-color:#E4F7BA;'><li>"+msg+"</li></div><br><br>");
			
			}
	}%>
</ul></div>
<%
String user=(String)session.getAttribute("username");
if(user==null) %> <p style="text-align:center">로그인하시면 리뷰를 쓰실 수 있습니다.</p><%
if(user!=null){
%>
<center>



<form action="review_process_2.jsp" method="post">
[ 회원님도 의견을 남겨주세요~! ]
<br> 
1. 평점 :<input type="range" min="0" max="5" name="score"><br>
2. 상세후기<br>
<textarea cols="70" rows="5" name="msg"></textarea>
<br><br><input type="submit" value="제출">
</form>
</center>
<%
} 
%>
</body>
</html>