<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function ProductWrite(){
			
			location.href="ProductWriteForm";
			
		}
	
	function ProductList(){
		
		location.href="productlist";
		
	}

</script>
</head>
<body>
<h2>메인</h2>
${sessionScope.loginId} 님 환영합니다. <br>
로그인회원 등급:${sessionScope.mclass}
<button onclick="location.href='memberlist'">회원목록</button>
<button onclick="location.href='memberupdate?mid=${sessionScope.loginId}'">내정보수정</button>
<button onclick="location.href='memberlogout'">로그아웃</button>
<button onclick="ProductWrite()">상품등록</button>
<button onclick="ProductList()">상품목록</button>
</body>
</html>