<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.js">
</script>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* style the container */
.container {
  position: relative;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 0 30px 0;
  width:70%;
  margin:auto;
  margin-height:50px;
  height:70%;
} 

.container1 {
  position: relative;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 0 30px 0;
  width:70%;
  margin:auto;
 	
} 

/* style inputs and link buttons */
input,
.btn {
  width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 20px;
  text-decoration: none; /* remove underline from anchors */
}

input:hover,
.btn:hover {
  opacity: 1;
}

/* style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Two-column layout */
.col {
  float: left;
  width: 50%;
  margin: auto;
  padding: 0 50px;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* hide some text on medium and large screens */
.hide-md-lg {
  display: none;
}

/* bottom container */
.bottom-container {
  text-align: center;
  background-color: #666;
  border-radius: 0px 0px 4px 4px;
   width:70%;
  margin:auto; 
  margin-bottom:100px;
  
}


/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 650px) {
  .col {
    width: 100%;
    margin-top: 0;
  }
  /* show the hidden text on small screens */
  .hide-md-lg {
    display: block;
    text-align: center;
  }
}

</style>
<script>
	$(document).ready(function(){
		
		$("#addBtn").click(function(){
			var pproduct = $("#pproduct").val();
			var pproduct2 = $("#pproduct2").val();
			var pid = $("#pid").val();
			var pname = $("#pname").val();
			var pprice = $("#pprice").val();
			var pstock = $("#pstock").val();
			var pdesc = $("#pdesc").val();
			var pfile = $("#pfile").val();
			
			
			
		 	if(pid == ""){
				
				alert("상품아이디를 입력해주세요.")
				pid.focus();
				
			}else if(pname == ""){
				
				alert("상품명을 입력해주세요.")
				pname.focus();
				
			}else if(pprice == ""){
				
				alert("상품 가격을 입력해주세요.")
				pprice.focus();
				
			}else if(pstock == ""){
				
				alert("상품 수량을 입력해주세요.")
				pstock.focus();
				
				
			}else if(pdesc == ""){
				
				alert("상품 설명을 입력해주세요.")
				pdesc.focus();
				
				
			}else if(pproduct == "전체"){
				
				alert("상품 카테고리를 선택해주세요.")
				pproduct.focus();
				
			}else if(pproduct2 == "전체"){
				
				alert("두번째 카테고리를 선택해주세요.")
				pproduct2.focus();
				
			}else if(pfile == ""){
				
				alert("상품 이미지를 등록해주세요.")
				pfile.focus();
				
			}	
			
			document.form1.action="productwrite";
			document.form1.submit();	
				
			$("#listBtn").click(function(){
				
				location.href="productlist";
				
			});	
			
			
			
			
		});

	});

</script>
    <script>
        $(function() {
            $("#pfile").on('change', function(){
                readURL(this);
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }

              reader.readAsDataURL(input.files[0]);
            }
        }


    </script>
    <style>
    /*  메뉴 바    */

/* 메뉴바 위치 이미지 */
.banner {
    background-image: url(resources/images/banner.jpg);
    background-position: center top;
    background-repeat: no-repeat;
    -moz-background-size: cover;
    -o-background-size: cover;
    -webkit-background-size: cover;
    background-size: cover;
    min-height: 40px;
}

#header {
    position: fixed;
    width: 100%;
    z-index: 999;
}

/* --------------------------------------------------------- */

article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
    display: block;
}

#header .header-content {
    border-bottom: 1px solid rgba(255, 255, 255, 0.15);
    margin: 0 auto;
    max-width: 1170px;
    padding: 40px 0;
    width: 100%;
    -moz-transition: padding 0.3s;
    -o-transition: padding 0.3s;
    -webkit-transition: padding 0.3s;
    transition: padding 0.3s;
}

#header.fixed {
    background-color: #aaacb5;
}

#header.fixed .header-content {
    border-bottom: 0;
    padding: 14px 0;
}

/* ---------------------------------------------------------------------------------------------------- */

/* 메뉴 바 목록  */

.navigation {
    float: right;
}

ul, ol {
    margin: 0;
    padding: 0;
    float: right;
}

ol, ul {
    margin-top: 0;
    margin-bottom: 10px;
    float: right;
}

.navigation li {
    display: inline-block;
}

ul li {
    list-style: none;
}

/* ------------------------ */

/* 바 목록 문자  */

.navigation a {
    color: rgba(255, 255, 255, 0.75);
    font-size: 15px;
    font-weight: 700;
    margin-left: 40px;
    text-transform: uppercase;
}

a {
    color: #ffffff;
    text-decoration: none;
    vertical-align: top;
}

a {
    background-color: transparent;
}


/* ------------ */

/* 메뉴 (품목 목록) */

#comment_top.fixed .section1 .category_box {
    width: 23px;
    height: 23px;
    position: absolute;
    top: 30%;
    left: 8px;
    font-size: 0px;
    -webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
    -ms-transition: all 0.5s;
    -o-transition: all 0.5s;
    transition: all 0.5s;
}

#layout_header a[href='#category'] {
    position: absolute;
    left: 10px;
    top: 8px;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #fff;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

.cboth {
    clear: both;
}

.section1 {
    margin: 15px auto 20px;
}

#layout_side .section2 .tab_inner a.open {
    color: #000;
    border-bottom: 1px solid #fff;
    background-color: #fff;
    color: #000;
}

.tab_inner :first-child {
    border-left: 0;
}

.tab_inner{
    
    line-height: 40px;
    font-size: 12px;
    color: #8f8f8f;
    font-weight: bold;
    border-left: 1px solid #c3c3c3;
    border-bottom: 1px solid #c3c3c3;
    border-top: 0;

}


/* ------------ */

/*  (메뉴) 회원가입   */

.dropbtn {
  background-color: #ffffff;
  color: #aaacb5;
  padding: 15px  100px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #ffffff;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #ffffff;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: #aaacb5;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}


body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  margin: auto;
  text-align: center;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 50px;
  transition: 0.3s;
  font-size: 17px;
  margin: auto;
  color: #828282;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

.menu {
	cursor: pointer;
}

/* ------------------------------------------ */

/* 메인 각  페이지 위치  싸이즈  */

#section1 {
  height: 885px;
  background-color: white;
}

#section2 {
  height: 885px;
  background-color: white;
}

#section3 {
  height: 885px;
  background-color: white;
}
#section4 {
  height: 885px;
  background-color: white;
  
}

/* ----------------------- */

/* 언더 바  */

#quick_layer {
    position: fixed;
    z-index: 100;
    bottom: 0px;
    left: 0px;
    width: 100%;
}

#quick_layer table.common_quick {
    width: 100%;
    border-collapse: collapse;
    border-top: 2px solid #c5c6c7;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

#quick_layer table.common_quick {
    width: 100%;
    border-collapse: collapse;
    border-top: 2px solid #c5c6c7;
}

tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

#quick_layer table.common_quick td {
    border: 1px solid #d2d3d4;
    background-color: #e1e2e3;
    height: 50px;
}

td {
    display: table-cell;
    vertical-align: inherit;
}

#quick_layer table.common_quick td a {
    display: block;
    width: 100%;
    vertical-align: middle;
    color: #7a8285;
    text-align: center;
    font-size: 13px;
    letter-spacing: -1px;
}

/* ---------------------------------------- */

/*   이미지  1   */

* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
/*  -----------------  */
    
    
    
    
</style>
<style>
.btnproduct {
  border: none;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}

.btnproduct {background-color: #4CAF50;} /* Green */
.btnproduct:hover {background-color: #46a049;}






</style>
<script>
$(function () {
 
$('#productimg').click(function (e) {
 
e.preventDefault();
 
$('#pfile').click();
 
});
 
});
 
     
 
            function changeValue(obj){
 
                alert(obj.value);
 
            }
 
</script>

<style>
 
#pfile { 
display:none; 
}
 
</style>





</head>
<body>
<!-- 메뉴 바 회원가입 부분  -->
<section class="banner" role="banner">
	<div id="mySidenav" class="sidenav">
  		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="padding: 4%;">&times;</a>
  		<div class="cboth section" style = "text-align: center;">
			<c:if test="${sessionScope.loginId == null}">
			<div class="dropdown">
  				<button onclick="location.href='Joinform'" class="dropbtn" style = "font-size: 25px;">회원가입</button>
			</div>
			<button onclick="location.href='memberloginform'" class="dropbtn" style = "font-size: 25px;">로그인</button>
			</c:if>
			<c:if test="${sessionScope.loginId != null}">
			<button onclick="location.href='memberlogout'"class="dropbtn" style = "font-size: 25px;">로그아웃</button>
			</c:if>
		</div>
		<!--  메뉴 바 이미지 부분  -->
		<div class="cboth section1">
			<a href="  장바구니    ">
				<img src="resources/images/bt_icon01.gif">
			</a>
			<a href="      ">
				<img src="resources/images/bt_icon02.gif">
			</a>
			<a href="cartlist">
				<img src="resources/images/bt_icon03.gif">
			</a>
			<a href="      ">
				<img src="resources/images/bt_icon04.gif">
			</a>
		</div>
		<!-- 메뉴 바 카테고르 부분  -->
		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'Boardmenu')">게시판</button>
  			<button class="tablinks" onclick="openCity(event, 'Category')">카테고리</button>
  			<button class="tablinks" onclick="openCity(event, 'Community')">커뮤니티</button>
  			<button class="tablinks" onclick="openCity(event, 'Mypage')">마이페이지</button>
		</div>
		<!-- 메뉴 바 게시판 부분  -->
		<div id="Boardmenu" class="tabcontent">
			<a class="menu" href="boardlistpaging?atype=자유">자유게시판</a><br>
			<a class="menu" href="boardlistpaging?atype=상품">상품게시판</a><br>
			<a class="menu" href="boardlistpaging?atype=운동">운동게시판</a><br>
		</div>
		<!-- 메뉴 바 카테고리 부분  -->
		<div id="Category" class="tabcontent">
			<a href="productlist" class="menu">상품 전체</a><br>
			<a href="productlistpaging?pproduct=의류" class="menu">의류</a><br>
			<a href="productlistpaging?pproduct=기구" class="menu">기구</a><br>
			<a href="productlistpaging?pproduct=식품" class="menu">식품</a><br>
			<a class="menu">트레이너</a><br>
		</div>
		<!-- 메뉴 바 커뮤니티 부분  -->
		<div id="Community" class="tabcontent">
			<c:if test="${sessionScope.mclass eq '판매'}">
  			<a href="ProductWriteForm" class="menu">상품등록</a><br>
  			</c:if>
  			<a class="menu">상품문의</a><br>
			<a class="menu">상품후기</a><br>
			<a class="menu">1대1상담</a><br>
		</div>
		<!-- 메뉴 바 마이페이지 부분  -->
		<div id="Mypage" class="tabcontent">
			<c:if test="${sessionScope.loginId != null}">
  			<a class="menu" onclick="location.href='memberupdate?mid=${sessionScope.loginId}'">내 정보수정</a><br>
  			</c:if>
  			<c:if test="${sessionScope.loginId eq 'admin'}">
  			<a class="menu" onclick="location.href='memberlist'">회원목록</a><br>
  			</c:if>
			<a class="menu">주문/배송</a><br>
			<a class="menu">고객센터</a><br>
		</div>	
	</div>
	
	<!-- 상단 바 전체 부분 -->
	<header id="header" class="fixed">
		<div class="category_box" id="layout_header" style="border:none;">
			<a href="#category" >
				<span style="font-size:25px;cursor:pointer " onclick="openNav()">&#9776;</span>
			</a>
		</div>
		<!-- 상단 바 오른쪽 글 부분   -->		
		<div class="header-content clearfix" style="margin-right: 60px;">
			<nav class="navigation" role="navigation">
				<ul class="primary-nav">
				    <li>
						<a href="chatform">채팅방 </a>
					</li>
					<li>
						<a href="#section1">운동 후기 </a>
					</li>
					<li>
						<a href="#section2">베스트 상품 </a>
					</li>
					<li>	
						<a href="#section3">트레이너 </a>
					</li>
					<li>	
						<a href="#section4">운동 유튜브 </a>
					</li>
					<!--  검색     -->
					<li>
						<div class="search_box" style="border:none;">
							<a href="#search" class="top_search" id="top_search">
								<img src="resources/images/icon_search_48px.png" style="width: 20px;">				
							</a>
						</div>
					</li>	
				</ul>	
			</nav>
		</div>
	</header>
	
</section>





 <form id="form1" name="form1" method="post" enctype="multipart/form-data">
<div class="container">
    <div class="row">
      <h2 style="position: relative; left:50px">상품 정보</h2>
      <div class="col">
        <div class="hide-md-lg">
        </div>  
                  상품 ID<input type="text" name="pid" id="pid" placeholder="상품 ID" required>
    	  상품 명  <input type="text" name="pname" id="pname" placeholder="상품 명" required>
                  상품 가격<input type="text" name="pprice" id="pprice" placeholder="상품 가격" required>
		  상품 수량 <input type="text" name="pstock" id="pstock" placeholder="상품 수량" required>
                  상품 설명<input type="text" name="pdesc" id="pdesc" placeholder="상품 설명" required>          
      </div>
      
    </div>
</div>

<div class="container1">
    <div class="row">
      <h2 style="position: relative; left:50px">상품 옵션</h2>
      <div class="col">
        <div class="hide-md-lg">
        </div>
        <select id="pproduct" name="pproduct">
		<option>전체</option>
		<option value="식품">식품</option>
		<option value="의류">의류</option>
		<option value="장비">장비</option>
		</select>
		
        <select id="pproduct2" name="pproduct2">
		<option>전체</option>
		<option>웨이프로틴</option>
		<option>벌크업프로틴</option>
		<option>상의</option>
		<option>하의</option>
		<option>보호장비</option>
		</select>
		<br><br>
		 <input type="hidden" name="pmid" id="pmid" value="${sessionScope.loginId}">
		 <input type="file" name="pfile" id="pfile" placeholder="상품 이미지 등록" required>
		 		<button id="productimg" class="btnproduct">이미지등록</button><br>
                <img id="blah" src="resources\img\" width="300px" height="200px">

      </div>    
    </div>
</div>
</form>
<div class="bottom-container">
  <div class="row">
    <div class="col">
      <a href="#" id="addBtn" style="color:white" class="btn">상품 등록</a>
    </div>
    <div class="col">
      <a href="mainForm" style="color:white" class="btn">바디샵메인</a>
    </div>
  </div>
</div>





<!-- 왼쪽 슬라이드 메뉴 스크립트  -->
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "1150px";
}

function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	}
</script>

<!--  메뉴  카테고리 스크립트   -->
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>



<!-- 이미지 스크립트   -->
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
</body>
</html>
