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
		
		$("#addBtn").click(function(){
			var pproduct = $("#pproduct").val();
			var pid = $("#pid").val();
			var pname = $("#pname").val();
			var pprice = $("#pprice").val();
			var pstock = $("#pstock").val();
			var pdesc = $("#pdesc").val();
			var pfile = $("#pfile").val();
			
			if(pproduct == ""){
				
				alert("상품 카테고리를 선택해주세요.")
				pproduct.focus();
			
			}else if(pid == ""){
				
				alert("상품아이디를 입력해주세요.")
				pid.focus();
				
			}else if(pname == ""){
				
				alert("상품명을 입력해주세요.")
				pname.focus();
				
			}else if(pprice == ""){
				
				alert("상품 가격을 입력해주세요.")
				pprice.focus();
				
			}else if(pstock == ""){
				
				alert("상품 수량을 입력해주세요.")
				pstock.focus();
				
				
			}else if(pdesc == ""){
				
				alert("상품 설명을 입력해주세요.")
				pdesc.focus();
				
				
			}else if(pfile == ""){
				
				alert("상품 이미지를 등록해주세요.")
				pfile.focus();
				
			}
			
			document.form1.action="productwrite";
			document.form1.submit();	
				
			$("#listBtn").click(function(){
				
				location.href="productlist";
				
			});	
			
			
			
			
		});

	});


</script>
</head>
<body>
<h2 align="center">상품 등록 페이지</h2>
<form id="form1" name="form1" method="post" enctype="multipart/form-data">
<table border="1">
	<tr>
	<td>상품 선택</td>
	<td>
	<select id="pproduct" name="pproduct">
		<option>전체</option>
		<option value="식품">식품</option>
		<option value="의류">의류</option>
		<option value="장비">장비</option>
	</select>
	</td>
	</tr>
	<tr>
	<td>상품ID</td>
	<td><input type="text" name="pid" id="pid"></td>
	</tr>
	<tr>
	<td>상품명</td>
	<td><input type="text" name="pname" id="pname"></td>
	</tr>
	<tr>
	<td>상품가격</td>
	<td><input type="text" name="pprice" id="pprice"></td>
	</tr>
	<tr>
	<td>상품수량</td>
	<td><input type="text" name="pstock" id="pstock"></td>
	</tr>
	<tr>
	<td>상품설명</td>
	<td><input type="text" name="pdesc" id="pdesc"></td>
	</tr>
	<tr>
	<td>상품이미지</td>
	<td><input type="file" name="pfile" id="pfile"></td>
	</tr>
	<tr>
	<td>
	<input type="hidden" name="pmid" id="pmid" value="${sessionScope.loginId}">
	<input type="button" id="addBtn" value="등록">
	<input type="button" id="listBtn" value="목록">
	</td>
	</tr>

</table>
</form>




</body>
</html>