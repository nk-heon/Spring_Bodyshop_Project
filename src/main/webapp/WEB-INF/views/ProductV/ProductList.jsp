<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<h2 align="center">상품목록 페이지</h2>
	<table border="1" align="center">
	<tr>
	<th>상품ID</th>
	<th>카테고리</th>
	<th>상품 이미지</th>
	<th>상품 명</th>
	<th>가격</th>
	</tr>
	<c:forEach var="product" items="${productList}">
	<tr>
	<td>
	${product.pid}
	</td>
	<td>
	${product.pproduct}
	</td>
	<td>
	<img src = "resources/img/${product.pfilename}" width="120px" height="110px">
	</td>
	<td>
	<a href="productview?pid=${product.pid}">${product.pname}</a>
	</td>
	<td>
	${product.pprice}
	</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>