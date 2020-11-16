<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>답변</h2>
<form action="pcommentre1" method="post">
상품코드 : <input type="text" name="pcpid" id="pcpid" value='${pcomment.pcpid}' readonly><br>
댓글번호: <input type="text" name="pcnumber" id="pcnumber" value='${pcomment.pcnumber}' readonly><br>
질문내용: ${pcomment.pcontents}<br>
답변내용:<br>
<textarea name="pcresult" id="pcresult" cols="30" rows="10"  ></textarea><br>
<input type="hidden" name="result" id="result" value="답변완료">
<button>답변</button>
</form>

</body>
</html>