<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>

     #star_grade a{
        text-decoration: none;
        color: gray;
    }
    #star_grade a.on{
        color: red;
    }
    
    
     .star_grade1 a{
        text-decoration: none;
        color: gray;
    }
    .star_grade1 a.on{
        color: red;
    }
    
</style>
<script>
	$(document).ready(function(){
		
		$("#updateBtn").click(function(){
			
			location.href="productUpdate?pid=${productView.pid}";
			
		});
		
		$("#deleteBtn").click(function(){
			
			location.href="productdelete?pid=${productView.pid}";
			
		});
		
		
	});
	 function popupOpen(){

			var popUrl = "pcomment?pid=${productView.pid}";	//팝업창에 출력될 페이지 URL

			var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

				window.open(popUrl,"",popOption);

			}
	 function popOpen(){
		   console.log(pcpid);
		   console.log(pcnumber);
		   var a = pcpid;
		   var b = pcnumber;
		   console.log(a);
			var popUrl = "pcommentre?pcnumber="+b+"&pcpid="+a;	//팝업창에 출력될 페이지 URL

			var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

				window.open(popUrl,"",popOption);

			}
	 
	 $(function () {
	       // text로 시작하는 모든 id를 숨김
	       $("[id^=text]").hide();

	       // 클래스가 일치하는 버튼을 가지지만, float_l 클래스가 아닌 요소
	       $(".button").click(function (e) {

	           _eq = $(".button").index(this) ;

	           e.stopPropagation();

	           // index가 클릭한 것과 일치하는 요소를 찾음
	           $("[id^=text]").eq(_eq).toggle();
	       });
	   });




</script>





</head>
<body>
	<h2 align="center">상품상세 페이지</h2>
	<table border="1">
	<tr>
	<td>상품ID</td>
	<td>
	${productView.pid}
	</td>
	</tr>
	<tr>
	<td>상품 카테고리</td>
	<td>${productView.pproduct}</td>
	</tr>
	<tr>
	<td>상품 이미지</td>
	<td>
	<img src = "resources/img/${productView.pfilename}" width="700px" height="400px">
	</td>
	<tr>
	<td>가격</td>
	<td>
	${productView.pprice}
	</td>
	</tr>
	<tr>
	<td>수량</td>
	<td>
	${productView.pstock}
	</td>
	</tr>
	<tr>
	<td>상품 명</td>
	<td>
	${productView.pname}
	</td>
	</tr>
	<tr>
	<td>상품 설명</td>
	<td>
	${productView.pdesc}
	</td>
	</tr>
	<tr>
	<td>
	<input type="button" id="updateBtn" value="수정">
	<input type="button" id="deleteBtn" value="삭제">
	</td>
	</tr>
	</table>
	
	<div id="commentWrite">
	<p id="star_grade">
        <a href="#" value="1">★</a>
         <a href="#" value="2">★</a>
          <a href="#" value="3">★</a>
           <a href="#" value="4">★</a>
            <a href="#" value="5">★</a>
        
         
	
</p>

    <input type="hidden" id="prpmid" value="${productView.pmid}">
	<input type="hidden" id="prmid" value="${sessionScope.loginId}"><br>
	내용 : <input type="text" id="prcontents"><br>
	<button id="PreviewtWriteBtn">리뷰작성</button>
	</div>
	<script>
	 
	$(document).ready(function(){
		let _star;
		 $('#star_grade a').click(function(){
	          $(this).parent().children("a").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
	          $(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
	          console.log($(this).attr("value"));
	          _star = $(this).attr("value");
	          console.log(_star);
	       
	   $("#PreviewtWriteBtn").click(function(){
		  var prpmid = $("#prpmid").val();
		  var prmid = $("#prmid").val();
		  var prcontents = $("#prcontents").val();
		  var star = _star;
		  var prid = "${productView.pid}";
		  $.ajax({
			  type : "post",
			  url : "productreview/previewwrite",
			  data : {
				  "prpmid" : prpmid,
				  "prmid" : prmid,
				  "prcontents" : prcontents,
				  "star" : star,
				  "prid" : prid},
				  dateType : "json",
				  success : function(result){
					  console.log("댓글성공");
					  console.log(result);
					  var output = "<table border='1'>";
					  output += "<tr><th>평점</th>";
					  output += "<th>작성자</th>";
					  output += "<th>내용</th></tr>";
					  for(var i in result){
						  output += "<tr>";
						  output += "<td>" ;
			                output += '<p class="star_grade1" id="star_grade_result_'+i+'" data-star-num="'+result[i].star+'">' ;
			                output +=  '<a href="#" value="1">★</a>'  ;
			                output +=  '<a href="#" value="2">★</a>'  ;
			                output +=  '<a href="#" value="3">★</a>'  ;
			                output +=  '<a href="#" value="4">★</a>'  ;
			                output +=  '<a href="#" value="5">★</a>'  ;
			                output += '</p>' ;
			                output += "</td>" ;
						  output += "<td>"+result[i].prmid+"</td>";
						  output += "<td>"+result[i].prcontents+"</td>";  
						  output += "</tr>";
					  }
					  output += "</table>";
					  
					  $("#commentArea").html(output) ;
					  
					  console.log($("[id^='star_grade_result_']")) ;
					  
					  $("[id^='star_grade_result_']").each(function (k,v){
						  
						  let __star = $(v).attr("data-star-num") ;
						 
						  $(v).find("a").filter(function (kk,vv){
							  return $(vv).attr("value") <= __star ? $(vv).addClass("on") : $(v).removeClass("on") ;
						  }) ;
						 
					  }) ;
					  
					  
					 // $("#star_grade_result").find("a").filter(function (k,v){

                       //   console.log($(v)) ;
                         // return $(v).attr("value") <= _data.star ? $(v).addClass("on") : $(v).removeClass("on") ;
                     // }) ;
					  
					  
					  
					
					  $("#prmid").val("");
					  $("#prcontents").val("");
				  },
				  error : function(){
					  console.log("댓글 등록 실패");
			  }
		  });
	   });
   });
   });
  
</script>
<div id="commentArea">
	<table border='1'>
	<tr>
	<th>평점</th>
	<th>작성자</th>
	<th>내용</th></tr>
	<c:forEach var="pr" items="${prList}">
	<tr>
	<td><p class="star_grade1" id="star_grade_result_" data-star-num="${pr.star}">
			               <a href="#" value="1">★</a> 
			               <a href="#" value="2">★</a>  
			               <a href="#" value="3">★</a> 
			               <a href="#" value="4">★</a> 
			               <a href="#" value="5">★</a>
			               </p>

			                </td>
	<td>${pr.prmid}</td>
	<td>${pr.prcontents}</td>
	
						  </tr>
	</c:forEach>
	</table>
	
	
	
	</div><br>
	
	
	
	<script>
	
	$("#commentArea").ready(function (){
		$(".star_grade1").each(function (k,v){
			  
			  let __star = $(v).attr("data-star-num") ;
			 
			  $(v).find("a").filter(function (kk,vv){
				  return $(vv).attr("value") <= __star ? $(vv).addClass("on") : $(v).removeClass("on") ;
			  }) ;
			 
		  }) ;	
	}) ;
	
	
	</script>
	<h3>상품문의</h3>

	<c:forEach var="pc" items="${pcList}">
	<c:choose>
	<c:when test="${pc.secret == 1}">
	${pc.result} 비밀글입니다. 작성자:${pc.pcmid}<br>
	</c:when>
	<c:otherwise>
	<div class="button">
	<div class="button_inn float_1">
	${pc.result}
	작성자:${pc.pcmid}
	
	<a href="#">내용:${pc.pcontents}</a>
	</div>
	</div>
	<div id="text1" style="...">
	Q:${pc.pcontents}<br>
	<c:if test="${pc.pcresult != null}">
	A:${pc.pcresult}
	</c:if>
	</div>
	<a href="javascript:popOpen(pcpid='${pc.pcpid}',pcnumber=${pc.pcnumber});" > 답변하기 </a><br>
	</c:otherwise>
	</c:choose>
	</c:forEach>
	
	<a href="javascript:popupOpen();" > 상품문의 </a>
</body>