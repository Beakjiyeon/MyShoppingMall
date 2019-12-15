<!-- 20171078 백지연 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" type="text/css" href="all.css">
<style>

</style>
</head>
<body>
<%@ include file="menubar.jsp" %>
<div class="detailbox">
<h2> 체크 투피스 원피스 </h2>
<img src="C:\Users\백지연\Desktop\im\c1.PNG" width="300" height="400" alt="옷 이미지1"/>


<div class="price">
<br>
<br>


<form action="add.jsp" method="post" style="display:inline;">
<select name="count">

<option>체크 투피스 S</optionD>
<option>체크 투피스 M</option>


</select> 
<br><br>
<input type="submit" value="장바구니에 담기">
</form>

<hr>
<p>부담스럽지 않은 체크와 컬러감으로 단아한 분위기의 체크 원피스</p>
<p>슬림한 H라인으로 날씬한 바디라인 강조!</p>
<p>가격 : 35000원</p><br>
<img src="C:\Users\백지연\Desktop\im\info_1.PNG" width="300" height="400" alt="사이즈표"/>
<br>

</div>
</div>
<hr>
<jsp:include page="review.jsp"></jsp:include>
</body>
</html>