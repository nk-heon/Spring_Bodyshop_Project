<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
		
		$("#updateBtn").click(function(){
			
			var pname = $("#pname").val();
			var pprice = $("#pprice").val();
			var pstock = $("#pstock").val();
			var pdesc = $("#pdesc").val();
			
			if(pname = ""){
				
				alert("상품명을 입력하세요.")
				pname.focus();
				
			}else if(pprice == ""){
				
				alert("상품 가격을 입력하세요.")
				pprice.focus();
				
			}else if(pstock==""){
				
				alert("상품 수량을 입력하세요.")
				pstock.focus();
				
			}else if(pdesc == ""){
				
				alert("상품 소개를 입력하세요.")
				pdesc.focus();
			}
			document.form1.action="productuptateprocess"
			document.form1.submit();
			
		});
		$("#deleteBtn").click(function(){
			
			if(comfirm("상품 삭제를 하시겠습니까?")){
				
				document.form1.action="productdelete";
				document.form1.submit();
				
				
			}
			
		});
		$("#listBtn").click(function(){
			
			location.href="productlist";
			
		});
		
		
	});




</script>







</head>
<body>
<h2 align="center">상품수정 페이지</h2>
<form id="form1" name="form1" enctype="multipart/form-data" method="post">
	<table border="1" align="center">
		<tr>
		<td>상품 카테고리</td>
		<td>
		<select id="pproduct" name="pproduct">
		<option value="전체">전체</option>
		<option value="식품">식품</option>
		<option value="의류">의류</option>
		<option value="장비">장비</option>
		</select>
		</td>
		</tr>
		<tr>
		<td>상품ID</td>
		<td>
		<input type="text" id="pid" name="pid" value="${productUpdate.pid}" readonly>
		</td>
		</tr>
		<tr>
		<td>상품 이미지</td>
		<td>
			<img src = "resources/img/${productUpdate.pfilename}" width="700px" height="500px" >
			<br>
			<input type="file" id="pfile" name="pfile">
		</td>
		</tr>
		<tr>
		<td>상품명</td>
		<td><input type="text" id="pname" name="pname" value="${productUpdate.pname}"></td>
		</tr>
		<tr>
		<td>가격</td>
		<td><input type="text" id="pprice" name="pprice" value="${productUpdate.pprice}"></td>
		</tr>
		<tr>
		<td>수량</td>
		<td><input type="text" id="pstock" name="pstock" value="${productUpdate.pstock}"></td>
		</tr>
		<tr>
		<td>소개</td>
		<td><input type="text" id="pdesc" name="pdesc" value="${productUpdate.pdesc}"></td>
		</tr>
		<tr>
			<td colsapn="2" align="center">
				<input type="button" id="updateBtn" value="수정">
				<input type="button" id="deleteBtn" value="삭제">
				<input type="button" id="listBtn" value="상품목록">
			</td>	
		</tr>
	</table>
</form>
</body>
</html>