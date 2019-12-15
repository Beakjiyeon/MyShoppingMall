<!-- 20171078 백지연 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>져니네 옷가게</title>
<link rel="stylesheet" type="text/css" href="all.css">
</head>
<body>

<br>세션에 저장된 정보 : <%=session.getAttribute("username") %>

<%@ include file="menubar.jsp" %>
<br><br>
<!-- 추천 상품 -->
<center>
<div class="rec">
<table border=1>
<tr>
<td><a href="go2detail.jsp"><img src="C:\Users\백지연\Desktop\im\c1.PNG" alt="옷 이미지1"/></a></td>
<td><a href="go2detail_2.jsp"><img src="C:\Users\백지연\Desktop\im\c2.PNG" alt="옷 이미지2"/></a></td>
<td><img src="C:\Users\백지연\Desktop\im\soldout.PNG"/></td>

</tr>

<tr>
<td class="main"><center><a class="link" href="go2detail.jsp">체크 투피스 원피스</a></center></td>
<td class="main"><center><a class="link" href="go2detail_2.jsp">핑크 스트라이프 티셔츠</a></center></td>
<td class="main">품절 상품</td>
</tr>

<tr>
<td><img src="C:\Users\백지연\Desktop\im\soldout.PNG"/></td>
<td><img src="C:\Users\백지연\Desktop\im\soldout.PNG"/></td>
<td><img src="C:\Users\백지연\Desktop\im\soldout.PNG"/></td>
</tr>

<tr>
<td class="main">품절 상품</td>
<td class="main">품절 상품</td>
<td class="main">품절 상품</td>
</tr>

</table>
</div>
</center>
</body>
</html>