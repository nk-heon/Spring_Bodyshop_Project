<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>

					<h3>아이디/비밀번호 찾기</h3>
					<p>인증된 이메일만 정보 찾기가 가능합니다 :)</p>
					<form action="idserch" method="post">
				이름:<input type="text" name="mname" id="mname"><br>
				휴대폰번호:<input type="text" name="mphone" id="mphone"><br>
				 <input type="button" value="확인" onclick="idSerch()"><br>
				</form>
				<h3>비번찾기</h3>
				<form action="pwserch" method="post">
				아이디:<input type="text" name="mid" id="mid"><br>
				이메일:<input type="text" name="memail" id="memail"><br>
				<input type="button" value="확인" onclick="pwSerch()"><br>
				</form>
				
				
				<script>
				
				function idSerch(){
			     	
			    	 var inputname = document.getElementById("mname").value;
			    	 var inputphone = document.getElementById("mphone").value;

			    	 $.ajax({
			    		 type : "post",
			    		 url : "idserch",
			    		 data : {"mname" : inputname,
			    			     "mphone" : inputphone},
			    	     dataType : "text",
			    	     success : function(result){
			    	    	 if(result == "no"){
			    	    		 alert("존재하지않은 회원 입니다.");
			    	    		 
			    	    	 }else{
			    	    		 alert("아이디는"+result+"입니다.");
			    	    	 }
			    	     },
			    	     error : function(){
			    	    	 alert("ajax 실패!!");
			    	     }
			    	 });
			     }
				function pwSerch(){
			     	
			    	 var inputid = document.getElementById("mid").value;
			    	 var inputemail = document.getElementById("memail").value;

			    	 $.ajax({
			    		 type : "post",
			    		 url : "pwserch",
			    		 data : {"mid" : inputid,
			    			     "memail" : inputemail},
			    	     dataType : "text",
			    	     success : function(result){
			    	    	 if(result == "ok"){
			    	    		 alert("입력된 메일로 임시비밀번호가 발급되었습니다");
			    	    		 
			    	    	 }else{
			    	    		 alert("입력한 정보가 틀렸거나 존재하지 않는 회원입니다.");
			    	    	 }
			    	     },
			    	     error : function(){
			    	    	 alert("ajax 실패!!");
			    	     }
			    	 });
			     }
				</script>



</body>
</html>