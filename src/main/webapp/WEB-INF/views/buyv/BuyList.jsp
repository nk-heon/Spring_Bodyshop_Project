<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>구매내역</h2>
<table border="1">
<c:forEach var="buy" items="${buylist}">

		<tr>
			<th>상품명</th>
			<th>수량</th>
			<th>가격</th>
			<th>이미지</th>
			<th>취소</th>
		</tr>
	
			<tr>
			<td>${buy.pbname}
			</td>
			<td>
				${buy.pbamout}
			</td>
			<td>
				${buy.pbprice}
		
			</td>
			
			<td>
				<img src = "resources/img/${buy.pbfilename}" width="120px" height="110px">
			</td>
			<td>
				<a href="cartdelete?cart_id=${buy.pbnum}">취소</a>
			</td>
		</tr>
</c:forEach>
</table>

</body>
</html>