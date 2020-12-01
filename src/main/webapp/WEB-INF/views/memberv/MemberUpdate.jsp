<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
  width:60%;
  margin-left:20%;
  margin-height:0%;
}


/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
.a1 {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
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

<form action="memberupdateprocess" method="post" name="updateform" enctype="multipart/form-data">
  <div class="container">
    <h1>정보 수정</h1>
    <p>BodyShop MemberUpdate</p>
    <hr>
   <c:if test="${sessionScope.mclass eq '트레이너'}">
    <label for="mfile"><b>프로필</b></label>
	       <img src="resources/uploadfile/${memberupdate.mfilename}" width="200" height="200"><br>
	       <input type="file" name="mfile" id="mfile" value="${memberupdate.mfilename}"><br>
   </c:if>
   <c:if test="${sessionScope.mclass eq '일반' or sessionScope.mclass eq '판매'}">
	       <input type="file" name="mfile" id="mfile" value="${memberupdate.mfilename}" style="display:none">
   </c:if>
   <label for="mid"><b>아이디</b></label>
   		   <input type="text" name="mid" id="mid" value="${memberupdate.mid}" readonly><br>
   	<label for="mname"><b>이름</b></label>
	  	   <input type="text" name="mname" id="mname" value="${memberupdate.mname}"><br>
	<label for="memail"><b>이메일</b></label>
	 	   <input type="text" name="memail" id="memail" value="${memberupdate.memail}"><br>
	<label for="mphone"><b>휴대폰 번호</b></label>
		   <input type="text" name="mphone" id="mphone" value="${memberupdate.mphone}"><br>

    <label for="maddress"><b>주소</b></label>
    		 <input type="text" name="mpostnum" id="sample6_postcode" value="${memberupdate.mpostnum}" placeholder="우편번호">
             <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
             <input type="text" name="maddress1" id="sample6_address" value="${memberupdate.maddress1}" placeholder="주소"><br>
             <input type="text" name="maddress2" id="sample6_detailAddress" value="${memberupdate.maddress2}" placeholder="상세주소">
             <input type="text" name="maddress3" id="sample6_extraAddress" value="${memberupdate.maddress3}" placeholder="참고항목"><br>
     <label for="mclass"><b>회원등급</b></label>         
                 ${memberupdate.mclass}<br>

    <label for="mfavorite"><b>관심분야</b></label>
    <c:if test="${sessionScope.mclass eq '일반' or sessionScope.mclass eq '트레이너'}">
          		<select name="mfavorite" id="mfavorite">
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
                      <label for="psw-repeat"><b>자기소개</b></label>
                      <textarea rows="10" cols="10" name="mcontents" id="mcontents">${memberupdate.mcontents}</textarea><br>
                       </c:if>
                       <c:if test="${sessionScope.mclass eq '일반' or sessionScope.mclass eq'판매'}">
                       <input type="hidden" name="mcontents" id="mcontents">
                       </c:if>

    <hr>
    <p>상품을 문의하시겠습니까?? <a href="#" class="a1">상품문의</a>.</p>

    <button type="submit" class="registerbtn">정보 수정</button>
  </div>
  
  <div class="container signin">
    <p>고객센터로 이동하시겠습니까?? <a href="#" class="a1">고객센터</a>.</p>
  </div>
</form>

</body>
</html>
