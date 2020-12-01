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
	 function poOpen(){
		   console.log(pcpid);
		   console.log(pcnumber);
		   var a = pcpid;
		   var b = pcnumber;
		   console.log(a);
			var popUrl = "pcommenview?pcnumber="+b+"&pcpid="+a;	//팝업창에 출력될 페이지 URL

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



<!-- 이미지 확대  -->
<style>
* {box-sizing: border-box;}

.img-zoom-container {
  position: relative;
}

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 40px;
  height: 40px;
}

.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 300px;
  height: 300px;
    padding:70px;
}
</style>
<script>
function imageZoom(imgID, resultID) {
  var img, lens, result, cx, cy;
  img = document.getElementById(imgID);
  result = document.getElementById(resultID);
  /*create lens:*/
  lens = document.createElement("DIV");
  lens.setAttribute("class", "img-zoom-lens");
  /*insert lens:*/
  img.parentElement.insertBefore(lens, img);
  /*calculate the ratio between result DIV and lens:*/
  cx = result.offsetWidth / lens.offsetWidth;
  cy = result.offsetHeight / lens.offsetHeight;
  /*set background properties for the result DIV:*/
  result.style.backgroundImage = "url('" + img.src + "')";
  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
  /*execute a function when someone moves the cursor over the image, or the lens:*/
  lens.addEventListener("mousemove", moveLens);
  img.addEventListener("mousemove", moveLens);
  /*and also for touch screens:*/
  lens.addEventListener("touchmove", moveLens);
  img.addEventListener("touchmove", moveLens);
  function moveLens(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image:*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    /*calculate the position of the lens:*/
    x = pos.x - (lens.offsetWidth / 2);
    y = pos.y - (lens.offsetHeight / 2);
    /*prevent the lens from being positioned outside the image:*/
    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
    if (x < 0) {x = 0;}
    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
    if (y < 0) {y = 0;}
    /*set the position of the lens:*/
    lens.style.left = x + "px";
    lens.style.top = y + "px";
    /*display what the lens "sees":*/
    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>

<!-- 전체  -->
<style>

.clearbox:after {
    content: "";
    display: block;
    clear: both;
}




body, select, button, table {
    font-family: Roboto, "Nanum Gothic", "Malgun Gothic", 돋움, Dotum, tahoma, AppleGothic, sans-serif;
    background: none;
}

body, select, button, table {
    font-family: '돋움',Dotum,tahoma,AppleGothic,sans-serif;
    font-size: 11px;
    color: #515151;
}

</style>

<!-- 메인 -->

<style>

element.style {
    width: 1280px;
    margin: auto;
}
.main_width {
    width: 100% !important;
}

div {
    display: block;
}

</style>





<style>
.Main {
    height: auto;
    min-height: 500px;
    overflow-y: auto;
    -webkit-transition: .2s;
    transition: .2s;
    width:100%;
}
.Main {
    padding: 48px 40px 36px;
}
.Main {
    -webkit-box-flex: 1;
    box-flex: 1;
    -webkit-flex-grow: 1;
    flex-grow: 1;
    overflow: hidden;
    padding: 24px 24px 36px;
}

</style>
<style type="text/css">
.RAYh1e {
    -webkit-border-radius: 8px;
    border-radius: 8px;
    border: 1px solid #dadce0;
    display: block;
    -webkit-flex-shrink: 0;
    flex-shrink: 0;
    margin: 0 auto;
    min-height: 0;
    -webkit-transition: .2s;
    transition: .2s;
    width: 60%;
}
.RAYh1e {
    background: #fff;
    display: -webkit-box;
    display: -webkit-flex;
    display: flex;
    -webkit-flex-direction: column;
    flex-direction: column;
    max-width: 100%;
    position: relative;
    z-index: 2;

</style>

<style>
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}



table[Attributes Style] {
    width: 100%;
    -webkit-border-horizontal-spacing: 0px;
    -webkit-border-vertical-spacing: 0px;
    border-top-width: 0px;
    border-right-width: 0px;
    border-bottom-width: 0px;
    border-left-width: 0px;
}

table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    border-spacing: 2px;
    border-color: grey;
}

table {
    border-collapse: separate;
    border-spacing: 2px;
}
</style>

<style>
.goods_wrap:after {
    content: "";
    display: block;
    clear: both;
}
.cboth:after {
    content: " ";
    display: block;
    clear: both;
}

.goods_wrap {
    background-color: #fff;
    width: 1258px;
    margin: 0 auto;
    border: 1px solid #e9e9e9;
    padding: 60px 0;
    margin-top: 20px;
}
.cboth {
    clear: both;
    *zoom: 1;
}
.cboth {
    clear: both;
}
.goods_wrap .view_info {
    width: 500px;
    padding: 0;
    margin: 10px;
    display: block !important;
}


</style>
<style>
.goods_name {
    color: #999;
    font-size: 16px;
    letter-spacing: -1px;
    font-weight: bold;
}

.goods_wrap .view_info .goods_name {
    font-size: 24px;
    color: #222;
    font-weight: 500;
    letter-spacing: -0.5px;
    text-align: left;
}
.goods_spec_table td {
    text-align: left;
    color: #858585;
    font-size: 12px;
    letter-spacing: -1px;
    
   } 
th{
  
  text-align:left;
  }  
    
    
</style>


<style>
	 .price {
    font-size: 26px;
    font-family: "sans-serif";
    color: #999;
    font-weight: light;
}

</style>

<style>

.goods_option_table .desc {
    font-size: 11px;
    color: #9a9a9a;
}
.goods_option_table td {
    text-align: left;
    color: #616161;
    padding-left: 4px;
}
.desc {
    font-size: 13px;
    font-family: dotum;
    color: #848484;
    letter-spacing: -1px;
}

td {
    display: table-cell;
    vertical-align: inherit;
}
.goods_option_table {
    border-bottom: 1px solid #d0d0d0;
    padding: 10px 0;
    line-height: 1.8;
    background-color: #fff;
}



</style>

<style>

.fx12 {
    font-size: 12px;
}
#total_goods_price, .total_goods_price, .goods_spec_table .price {
    color: #111 !important;
}
.total_goods_price {
    font-size: 18px;
    font-family: "tahoma","dotum";
    font-weight: Bold;
    color: #ed2b07;
}
.total_goods_price {
    font-size: 18px;
    font-family: "tahoma","dotum";
    font-weight: Bold;
    color: #ed2b07;
}

</style>

</head>





<body>
<div class="clearbox">
<div class="main_width">
<div style=";">
<!-- 이미지 확대 -->
<div class="RAYh1e">
<div class="Main">
<table style="margin:auto;width: 100%;" class="cboth goods_wrap">
<tbody>
<tr>
<td>
<div class="img-zoom-container">
  <img id="myimage" src="resources/uploadfile/${productView.pfilename}" width="300" height="300">
  	<div id="myresult" class="img-zoom-result">
  	<script>
	imageZoom("myimage", "myresult");
	</script>
	</div>
</div>  
</td>
<td valign="top" class="view_info">
<div class="view_info_inner">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody>
<tr>
<td height="1" bgcolor="cccccc">
</td>
</tr>

<tr>
<td height="0">

</td>
</tr>
<tr><td height="10"></td></tr>
<!-- 상품명 시작 -->
<tr>
<td>
	<span class="goods_name">${productView.pname}</span>
</td>
</tr>

<tr><td height="10"></td></tr>
<tr><td height="1" bgcolor="f2f2f2"></td></tr>
<tr><td height="10"></td></tr>
<tr>
<td>
<table class="goods_spec_table" width="100%" cellpadding="0" cellspacing="3" >
	<tbody>
		<tr>
			<th>판매가</th>
			<td>
				<b class="price">${productView.pprice}</b><b style="font-size:12px;  color:#111">원</b>
			</td>
		</tr>
		<!-- 배송 시작 -->
		<tr><td colspan="2" height="3"></td>
		</tr>

		<tr><td colspan="2" height="3"></td>
			</tr>
		<tr>
			<th>상품설명</th>
			<td>${productView.pdesc}</td>
		</tr>
		<!-- 고객평가 시작 -->
		<tr><td colspan="2" height="3"></td></tr>

		<!-- 고객평가 끝 -->
		<tr><td colspan="2" height="3"></td>
		</tr>
		<tr>
			<th>브랜드</th>
			<td>바디샵</td>
		</tr>
	</tbody>
</table>
</td>
</tr>
	<!-- 옵션 선택 영역 시작 -->
	<table class="goods_option_table" width="100%" cellpadding="0" cellspacing="5" border="0">
	<tbody>
	<colgroup>
		<col width="70" />
		<col />
		<col width="15" />
	</colgroup>
		<!-- 필수옵션 시작 -->
	<tr class="optionTr">
		<td class="optionTitle">${productView.pproduct}</td>
		<td colspan="2">
		<form name="form1" method="post" action="cartinsert">
		<input type="hidden" name="product_id" value="${productView.pid}"> 
		<select name="amount">
			<c:forEach begin="1" end="10" var="i">
				<option value="${i}">${i}</option>
			</c:forEach>
		</select>&nbsp개
		<span><input type ="submit" value="장바구니에 담기"></span>
	</form>
		</td>
	</tr>
	<tr id="viewoptionsInfoTr" class="hide">
		<td></td>
		<td id="viewOptionsInfo" style="word-break:break-all;"></td>
	</tr>
		</tbody>
	</table>

</tbody>	
</table>
<c:if test="${notVerify}">
<script>
alert("장바구니담기 완료");
</script>
</c:if>
			
	<table align="right" cellpadding="0" cellspacing="0" border="0">
		<tbody>
			<tr>
				<td valign="bottom" class="fx12"><b>총 상품금액</b></td>
				<td width="25"></td>
				<td class="total_goods_price">
					<span id="total_goods_price">169,000</span><font>원</font>
				</td>
			</tr>
		</tbody>
	</table>
</div>
</td>
	</tr>	
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>

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
					  output += "<th>내용</th>";
					  output += "<th>작성일</th>";
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
						  output += "<td>"+result[i].prdate+"</td>";
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

<!-- 평점 댓글 구간 -->
<div id="commentArea">
	<table border='1'>
	<tr>
	<th>평점</th>
	<th>작성자</th>
	<th>내용</th>
	<th>작성일</th></tr>
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
	<td>${pr.prdate}</td>
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
	

	<!-- 상품 문의 구간     -->
	<h3>상품문의</h3>
	<table border='1'>
	<tr>
	<th>상태</th>
	<th>문의/답변</th>
	<th>작성자</th>
	<th>작성일</th></tr>
	
	<c:forEach var="pc" items="${pcList}">
	<c:choose>
	<c:when test="${pc.secret == 1}">
	<c:choose>
    <c:when test="${sessionScope.loginId eq pc.pcmid}">
	<td>${pc.result}</td>
	<td><a href="javascript:poOpen(pcpid='${pc.pcpid}',pcnumber=${pc.pcnumber});">내용:${pc.pcontents}</a></td>
	<td>${pc.pcmid}</td>
	<td>${pc.pcdate}</td>
	</c:when>
	<c:otherwise>
	<tr>
	<td>${pc.result}</td> 
	<td>비밀글입니다.</td>
	<td>${pc.pcmid}</td>
	<td>${pc.pcdate}</td></tr>
	</c:otherwise>
	</c:choose>
	</c:when>
	<c:otherwise>
	<tr>
	<td>${pc.result}</td>
	<td><a href="javascript:poOpen(pcpid='${pc.pcpid}',pcnumber=${pc.pcnumber});">내용:${pc.pcontents}</a></td>
	<td>${pc.pcmid}</td>
	<td>${pc.pcdate}</td></tr>
	</c:otherwise>
	</c:choose>
	</c:forEach>
	</table>
	<a href="javascript:popupOpen();" > 문의하기 </a>
	
</body>