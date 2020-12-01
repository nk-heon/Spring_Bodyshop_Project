<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>문의내용</h3>
<h3>Q : ${pcview.pcontents}</h3>
<c:if test="${pcview.pcresult != null}">
<h3>A : ${pcview.pcresult}</h3>
<h6>판매자${pcview.pcpmid}<br> 답변일자:${pcview.pcredate}</h6>
</c:if>
<c:if test="${sessionScope.loginId eq pcview.pcpmid}">
<a href="pcommentre?pcnumber=${pcview.pcnumber}&pcpid=${pcview.pcpid}">답변하기</a>
</c:if>

</body>
</html>