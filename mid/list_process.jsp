<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니 페이지</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	String prouctname=request.getParameter("item");
	String count=request.getParameter("count");
	
	ArrayList list=(ArrayList)session.getAttribute("productlist");
	if(list==null){
	list=new ArrayList();
	session.setAttribute("productlist",list);
	}
	list.add("productname");
	
	ArrayList list_c=(ArrayList)session.getAttribute("countlist");
	if(list_c==null){
	list=new ArrayList();
	session.setAttribute("countlist",list);
	}
	list_c.add("count");
%>
<script>
alert("<%=productname%>이(가) <%=count%>개 추가되었습니다.");
history.go(-1);
</script>

</body>
</html>