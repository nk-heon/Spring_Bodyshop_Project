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
<h2>회원목록</h2>
<table border="1">
	<tr>
		<th>아이디</th> <th>이름</th> <th>생년월일</th>
	    <th>전화번호</th> <th>이메일</th> <th>주소</th>
	    <th>회원등급</th> 
	    <th>조회</th> <th>조회(ajax)</th><th>삭제</th></tr>
		<c:forEach var="member" items="${memberlist}">
			<tr>
			<td>${member.mid}</td>
			<td>${member.mname}</td>
			<td>${member.mbirth}</td>
			<td>${member.mphone}</td>
			<td>${member.memail}</td>
			<td>(${member.mpostnum})${member.maddress1}${member.maddress2}${member.maddress3}</td>
			<td>${member.mclass}</td>
			<td><a href="memberview?mid=${member.mid}">조회</a></td>
			<td><button onclick="memberViewAjax('${member.mid}')">상세조회</button></td>
			<td><a href="memberdelete?mid=${member.mid}">삭제</a></td>
			</tr><br>
		</c:forEach>
	</table>

</body>
</html>