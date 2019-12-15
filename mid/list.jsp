<!-- 20171078 백지연  list.jsp-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
</head>
<body>
<%--메뉴바 --%>>
<%@ include file="menubar.jsp" %>
<link rel="stylesheet" type="text/css" href="all.css">


<%! String x; %>

<% 
String id=(String)session.getAttribute("username"); 
int []arr={0,0,0};//홈페이지에서 제공하는 상품들의 개수 현재는 3개
if(id==null) 
	response.sendRedirect("login.jsp");


else
{
%>
<div class="detailbox">
<h2>'<%=id %>' 님의 장바구니</h2>
<h3>[선택한 상품 목록]</h3><br>
<%

ArrayList list2=(ArrayList)session.getAttribute("countlist");

if(list2==null) out.println("선택한 상품이 없습니다.");
else{
%>
	<table border=1 class="list_table">
	<tr>
	<td>상품명</td>
	<td>수량</td>
	<td>수량 제거</td>
	<td>수량 추가</td>
	<td>삭제</td>
	</tr>
<%
	for(Object count :list2)
	{
		x=(String)count;
		//out.print(x+"네요!<br>");
		//out.print(x+"가 체크 투피스가 맞다면,+<br>");
		
		if(x.equals("체크 투피스 S")) 
			{
			//out.print("지금은"+arr[0]+"개인데 1개를 더할 게요~<br>");
			arr[0]++;
			//out.print("1개를 더해서 지금은 "+arr[0]+"개에요<br>");
			} 
		if(x.equals("체크 투피스 M")) arr[1]++;
		if(x.equals("핑크 스트라이프 티셔츠 FREE")) arr[2]++;
		
		
		
	}
	

	int write=0;int write2=0;int write3=0;
	for(Object count :list2)
	{	
%>
	<tr>
<% 		
		String x=(String)count;
		
		if(x.equals("체크 투피스 S")) 
		{
			if(write==0)
			{
				out.print("<td>"+count+"</td>");
				out.print("<td>"+arr[0]+"</td>");
				write=1;
%>		
			<td>
<form action="delete.jsp" method="post">
<input type="checkbox" required name="item" value="<%=x %>">
<input type="submit" value="-1">
</form>
</td>
<td>
<form action="insert.jsp" method="post">
<input type="checkbox" required name="more" value="<%=x %>">
<input type="submit" value="+1">
</form>
</td>
<td>
<form action="remove.jsp" method="post">
<input type="checkbox" required name="zero" value="<%=x %>">
<input type="submit" value="삭제">
</form>
</td>

<%
			}
		}//IF괄호
		
		if(x.equals("체크 투피스 M")) 
		{
			if(write2==0)
			{
				out.print("<td>"+count+"</td>");
				out.print("<td>"+arr[1]+"</td>");
				write2=1;
%>		
<td>
<form action="delete.jsp" method="post">
<input type="checkbox" required name="item" value="<%=x %>">
<input type="submit" value="-1">
</form>
</td>
<td>
<form action="insert.jsp" method="post">
<input type="checkbox" required name="more" value="<%=x %>">
<input type="submit" value="+1">
</form>
</td>
<td>
<form action="remove.jsp" method="post">
<input type="checkbox" required name="zero" value="<%=x %>">
<input type="submit" value="삭제">
</form>
</td>
<% 			}
		}
		
		if(x.equals("핑크 스트라이프 티셔츠 FREE")) 
		{
			if(write3==0)
			{
				out.print("<td>"+count+"</td>");
				out.print("<td>"+arr[2]+"</td>");
				write3=1;
%>		
<td>
<form action="delete.jsp" method="post">
<input type="checkbox" required name="item" value="<%=x %>">
<input type="submit" value="-1">
</form>
</td>
<td>
<form action="insert.jsp" method="post">
<input type="checkbox" required name="more" value="<%=x %>">
<input type="submit" value="+1">
</form>
</td>
<td>
<form action="remove.jsp" method="post">
<input type="checkbox" required name="zero" value="<%=x %>">
<input type="submit" value="삭제">
</form>
</td>
<% 			}
		}%>
		</tr>
	<% }//FOR문 괄호	%>

</table>
<%}}

//ELSE괄호%> 

<br>
<a class="later" href="main.jsp">더 쇼핑하다 올래요~</a>
   
</div>
</body>
</html>