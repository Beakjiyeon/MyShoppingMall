<!-- 20171078 백지연 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세 정보_2</title>
<link rel="stylesheet" type="text/css" href="all.css">
<style>

</style>
</head>
<body>
<%@ include file="menubar.jsp" %>
<div class="detailbox">
<h2> 핑크 스트라이프 티셔츠 </h2>
<img src="C:\Users\백지연\Desktop\im\c2.PNG" width="300" height="400" alt="옷 이미지1"/>



<div class="price">
<br>
<br>


<form action="add.jsp" method="post" style="display:inline;">
<select name="count">

<option>핑크 스트라이프 티셔츠 FREE</optionD>



</select> 
<br><br>
<input type="submit" value="장바구니에 담기">
</form>

<hr>
<p>시원한 느낌의 핑크 스트라이프 티셔츠</p>
<p>통풍이 잘되는 면소재로 여름을 나아봐요 우리~</p>
<p>가격 : 10000원</p><br>
<img src="C:\Users\백지연\Desktop\im\info.PNG" width="300" height="400" alt="사이즈표"/>
<br>

</div>
</div>
<hr>
<jsp:include page="review_2.jsp"></jsp:include>
</body>
</html>