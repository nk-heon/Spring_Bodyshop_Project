<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원상세정보</h2>
<c:if test="${memberview.mclass eq '트레이너'}">
프로필사진 : <img src="resources/uploadfile/${memberview.mfilename}" width="200" height="200"><br>
</c:if>
아이디: ${memberview.mid}<br>
이름: ${memberview.mname}<br>
주소 : (${memberview.mpostnum})${memberview.maddress1}${memberview.maddress2}${memberview.maddress3}<br>
휴대폰번호: ${memberview.mphone}<br>
이메일: ${memberview.memail}<br>
생년월일 ${memberview.mbirth}<br>
회원등급:${memberview.mclass}<br>
<c:if test="${memberview.mclass eq '트레이너' or memberview.mclass eq '일반'}">
관심분야 :${memberview.mfavorite}<br>
</c:if>

</body>
</html>