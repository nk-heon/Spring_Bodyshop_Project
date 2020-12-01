<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<title>Insert title here</title>
<script>
function kakaopay(){
	form1.submit();
	
	
}

</script>

</head>
<body>
<h2>장바구니 확인</h2>
<c:choose>
	<c:when test="${map.count == 0}">
		장바구니가 비어있습니다.
	</c:when>
<c:otherwise>

<form name="form1" id="form1" method="post" action="buy">
	<table border="1">
		<tr>
			<th>상품명</th>
			<th>단가</th>
			<th>수량</th>
			<th>금액</th>
			<th>이미지</th>
			<th>취소</th>
		</tr>
		<c:forEach var="cart" items="${map.list}" varStatus="i">
			<tr>
			<td>${cart.pname}
			</td>
			<td style="width:80px" align="right">
				${cart.pprice}
			</td>
			<td>
				<input type="number" style="width:40px" name="amount" value="${cart.amount}" min="1">
				<input type="hidden" name="product_id" value="${cart.product_id}">
			</td>
			<td style="width:100px" align="right">
				${cart.money}
			</td>
			<td>
				<img src = "resources/img/${cart.pfilename}" width="120px" height="110px">
			</td>
			<td>
				<a href="cartdelete?cart_id=${cart.cart_id}">취소</a>
			</td>
		</tr>
		<input type="hidden" name="pbnum" id="pbnum" value="${cart.cart_id}"><!-- 장바구니 넘버 -->
		<input type="hidden" name="pbname" id="pbname" value="${cart.pname}"><!-- 상품이름 -->
		<input type="hidden" name="pbprice" id="pbprice" value="${cart.pprice}"><!-- 상품가격 -->
		<input type="hidden" name="pbpid" id="pbpid" value="${cart.product_id}"><!-- 상품코드 -->
		<input type="hidden" name="pbmid" id="pbmid" value="${cart.user_id}"><!-- 구매자아이디 -->
		<input type="hidden" name="pbpmid" id="pbpmid" value="${cart.sale_id}"><!-- 판매자아이디 -->
		<input type="hidden" name="pbfilename" id="pbfilename" value="${cart.pfilename}"><!-- 상품 이미지 -->
		<input type="hidden" name="pbamount" id="pbamout" value="${cart.amount}"><!-- 상품수량 -->
	
				
		</c:forEach>
		<tr>
			<td colspan="6" align="right">
				장바구니 금액 합계 : ${map.sumMoney}
				배송료 : ${map.fee}
				전체 주문 금액: ${map.allSum }
			</td>
		</tr>
	</table>
	<input type="hidden" name="count" value="${map.count}">
	<button type="submit" id="btnUpdate">수정</button>
</form>

</c:otherwise>
</c:choose>

<button type="button" onclick="location.href='productlist'">상품목록</button>

 <button onclick="location.href='kakaopay'">결제하기1</button>
 <button onclick="kakaopay()">결제하기</button>


</body>
</html>