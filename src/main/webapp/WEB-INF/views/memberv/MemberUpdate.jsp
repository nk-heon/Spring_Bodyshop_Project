<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
</script>
</head>
<body>
<h2>MemberUpdate.jsp</h2>
	<form action="memberupdateprocess" method="post" name="updateform" enctype="multipart/form-data">
	<c:if test="${sessionScope.mclass eq '트레이너'}">
	        프로필사진 : <img src="resources/uploadfile/${memberupdate.mfilename}" width="200" height="200"><br>
	       사진변경 : <input type="file" name="mfile" id="mfile" value="${memberupdate.mfilename}"><br>
	       </c:if>
	       <c:if test="${sessionScope.mclass eq '일반' or sessionScope.mclass eq '판매'}">
	       <input type="file" name="mfile" id="mfile" value="${memberupdate.mfilename}" style="display:none">
		</c:if>
		아이디 : <input type="text" name="mid" id="mid" value="${memberupdate.mid}" readonly><br>
		이름 : <input type="text" name="mname" id="mname" value="${memberupdate.mname}"><br>
		이메일 : <input type="text" name="memail" id="memail" value="${memberupdate.memail}"><br>
		휴대폰 번호 : <input type="text" name="mphone" id="mphone" value="${memberupdate.mphone}"><br>
		주소: <input type="text" name="mpostnum" id="sample6_postcode" value="${memberupdate.mpostnum}" placeholder="우편번호">
             <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
             <input type="text" name="maddress1" id="sample6_address" value="${memberupdate.maddress1}" placeholder="주소"><br>
             <input type="text" name="maddress2" id="sample6_detailAddress" value="${memberupdate.maddress2}" placeholder="상세주소">
             <input type="text" name="maddress3" id="sample6_extraAddress" value="${memberupdate.maddress3}" placeholder="참고항목"><br>
                 회원등급 : ${memberupdate.mclass}<br>
               <c:if test="${sessionScope.mclass eq '일반' or sessionScope.mclass eq '트레이너'}">
               관심분야 : <select name="mfavorite" id="mfavorite">
                       <option value = "${memberupdate.mfavorite}" selected="selected">${memberupdate.mfavorite}</option>
                       <option value = "유산소">유산소</option>
                       <option value = "무산소">무산소</option>
                       <option value = "기타">기타</option>
                       </select><br> 
                       </c:if>
               <c:if test="${sessionScope.mclass eq '판매'}">
               <input type="hidden" name="mfavorite" id="mfavorite">
                       </c:if>
                       <c:if test="${sessionScope.mclass eq '트레이너'}">
                       자기 소개 : <textarea rows="10" cols="10" name="mcontents" id="mcontents">${memberupdate.mcontents}</textarea><br>
                       </c:if>
                       <c:if test="${sessionScope.mclass eq '일반' or sessionScope.mclass eq'판매'}">
                       <input type="hidden" name="mcontents" id="mcontents">
                       </c:if>
    
    <button>정보수정</button>             
	</form>
	

</body>
</html>