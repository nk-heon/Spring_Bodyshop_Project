<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>상품문의</h2>
<form action="pcomment1" method="post">
<input type="checkbox" name="secret" id="secret" value=1>비밀글<br>
<input type="hidden" name="pcpid" id="pcpid" value="${pcomment.pid}">
<input type="hidden" name="pcpmid" id="pcpmid" value="${pcomment.pmid}">
<input type="hidden" name="pcmid" id="pcmid" value="${sessionScope.loginId}">
내용:<br>
<textarea name="pcontents" id="pcontents" cols="30" rows="10"  ></textarea><br>
<button>문의하기</button>
</form>


</body>
</html>