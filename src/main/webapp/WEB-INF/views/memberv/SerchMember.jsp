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
	
				<input type="radio" class="custom-control-input" id="serch_1" name="serch_total" onclick="search_check(1)" checked="checked">
				<label class="custom-control-label font-weight-bold text-white" for="search_1">아이디 찾기</label>
				<input type="radio" class="custom-control-input" id="serch_2" name="serch_total" onclick="search_check(2)">
				<label class="custom-control-label font-weight-bold text-white" for="search_2">비밀번호 찾기</label>
				<div id="searchI">
				   
				   <form action="idserch" method="post">
				   <label class="font-weight-bold text-white" for="mname">이름</label>
				    <div>
				     <input type="text" name="mname" id="mname" placeholder="ex) 홍길동">
				     </div>
				    
				
				    <label class="font-weight-bold text-white" for="mphone">휴대폰번호</label>
				    <div>
				    <input type="text" name="mphone" id="mphone" placeholder="ex) 010-0000-0000">
				    </div>
				   
				   <input type="button" value="확인" onclick="idSerch()">
				   </form>
				  </div>
				
				    <div id="searchP" style="display: none;">
				       
				       <form action="pwserch" method="post">
				       <label class="font-weight-bold text-white" for="mid">아이디</label>
				        <div>
				           <input type="text" name="mid" id="mid" placeholder="ex) leesunsin123">
				           </div>			  
				            <label class="font-weight-bole text-white" for="memail">이메일</label>
				            <div>
				               <input type="text" name="memail" id="memail" placeholder="ex) leesunsin123@xxxx.xxx">
				               </div>				          
				            <input type="button" value="확인" onclick="pwSerch()">
				            </form>
				            </div>
				<script>
				//체크 버튼에 따라 아이디/비밀번호 기능이 달라진다
				function search_check(num) {
					if (num == '1') {
						document.getElementById("searchP").style.display = "none";
						document.getElementById("searchI").style.display = "";	
					} else {
						document.getElementById("searchI").style.display = "none";
						document.getElementById("searchP").style.display = "";
					}
				}
			
				
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