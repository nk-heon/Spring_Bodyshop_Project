<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
function kakaopay(){
	form1.submit();
	
	
}
</script>
<body>

<h2>구매</h2><br>
<h3>배송정보</h3>
<form action="buyc" method="post" id="form1" name="form1">
<input type="radio" class="custom-control-input" id="serch_1" name="serch_total" onclick="search_check(1)" checked="checked">
				<label class="custom-control-label font-weight-bold text-white" for="search_1">기본배송지</label>
				<input type="radio" class="custom-control-input" id="serch_2" name="serch_total" onclick="search_check(2)">
				<label class="custom-control-label font-weight-bold text-white" for="search_2">직접입력</label>
				<div id="searchI">
${memberview.mname}<br>
(${memberview.mpostnum}) ${memberview.maddress1} ${memberview.maddress2} ${memberview.maddress3}<br>
${memberview.mphone}<br>
배송시 요청사항 : <input type="text">
</div>

<div id="searchP" style="display: none;">
				       
				      
				       
				           <input type="text" name="mname" id="mname" placeholder="받는사람"><br>
				           <input type="text" name="mpostnum" id="sample6_postcode" placeholder="우편번호" size="7" >
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<div style="margin-top: 3px;">
						<input type="text" name="maddress1" id="sample6_address" placeholder="주소"  class="address "  > 
						<input type="text" name="maddress2" id="sample6_detailAddress" placeholder="상세주소" class="address_street hide">
					</div> <span id="address_view" style="display: none; padding-top: 5px;"></span>
					<div style="margin-top: 3px;">
						<input type="text" name="maddress3" id="sample6_extraAddress" placeholder="참고항목"  size="40">
					</div>
					<input type="text" placeholder="휴대폰번호"><br>
					배송시 요청사항 : <input type="text">
				           </div>
				         
주소:${'#sample6_postcode'}				     
<script>
				//체크 버튼에 따라 아이디/비밀번호 기능이 달라진다
				function search_check(num) {
					if (num == '1') {
						document.getElementById("searchP").style.display = "none";
						document.getElementById("searchI").style.display = "";	
					} else {
						document.getElementById("searchI").style.display = "none";
						document.getElementById("searchP").style.display = "";
					}
				}
				</script>


주문상품
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
		<input type="hidden" name="pbpid" id="pbpid" value="${cart.product_id}"><!-- 상품코드 -->
		<input type="hidden" name="pbprice" id="pbprice" value="${cart.pprice}"><!-- 상품가격 -->
		<input type="hidden" name="pbmid" id="pbmid" value="${cart.user_id}"><!-- 구매자아이디 -->
		<input type="hidden" name="pbpmid" id="pbpmid" value="${cart.sale_id}"><!-- 판매자아이디 -->
		<input type="hidden" name="pbphone" value="${memberview.mphone}"><!-- 휴대폰번호 -->
		<input type="hidden" name="pbmname" value="${memberview.mname}"><!-- 이름 -->
		<input type="hidden" name="pbamout" id="pbamout" value="${cart.amount}"><!-- 상품수량 -->	
		<input type="hidden" name="allprice" value="${map.allSum}"><!-- 총 상품 가격 -->
		<input type="hidden" name="pbaddress" value="(${memberview.mpostnum}) ${memberview.maddress1} ${memberview.maddress2} ${memberview.maddress3}"><!-- 주소 -->
		<input type="hidden" name="pbfilename" value="${cart.pfilename}"><!-- 구매상품 이미지 -->		
		</c:forEach>
		
		<tr>
			<td colspan="6" align="right">
				장바구니 금액 합계 : ${map.sumMoney}
				배송료 : ${map.fee}
				전체 주문 금액: ${map.allSum}
			</td>
		</tr>
	</table>
	</form>
	 <button onclick="kakaopay()">결제하기</button>



</body>
</html>