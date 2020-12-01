<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>

html {
  scroll-behavior: smooth;
}

:after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

/* 전체 바디   */

body {
    font-family: "Raleway", sans-serif;
    font-family: "Lato", sans-serif;
    font-weight: 400;
    color: #6c7279;
    
}

body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}

/* --------------------------------------------------------- */

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

/*  회원가입 부분   */
#wrap {
	position: relative;
	min-width: 320px;
	transition: width ease-in-out 0.5s 0.1s;
}

div {
	display: block;
}

body, select, button, table {
	font-family: '나눔고딕', NanumGothic, '맑은 고딕', Malgun Gothic, '돋움', Dotum,
		'굴림', Gulim, HelveticaNeue-Light, AppleSDGothicNeo-Light, sans-serif;
	font-size: 12px;
	color: #515151;
}

#layout_wrap {
	position: relative;
	top: 0;
	left: 0;
}

/*  */
form {
	clear: both;
}

form {
	display: block;
}

/*--------------  */
colgroup {
	display: table-column-group;
}

table.join_information {
	box-sizing: border-box;
	width: 100%;
	border: 1px solid #ddd;
	background-color: #fff;
	border-collapse: collapse;
}

table {
	border-collapse: separate;
	border-spacing: 2px;
}
/*------------  */
tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: inherit;
}



table {
	border-spacing: 2px;
}

/* ---------------------------------- */

.text_1 {
	width: 100%;
	padding: 0px !important;
	margin: 0px !important;
}



table.join_information th {
	text-align: left;
	padding-left: 30px;
	color: #000;
}

table.join_information td {
	padding: 8px 10px 8px 0;
	min-height: 30px;
}

table.join_information th, table.join_information td {
	border-top: 1px solid #ddd;
}

table.join_information input[type='text'], table.join_information input[type='tel'],
	table.join_information input[type='password'] {
	margin: 0px;
	padding: 0px;
	text-indent: 5px;
	border: 1px solid #ddd;
	background-color: #fff;
	height: 30px;
	line-height: 30px;
}

table.join_information tr:first-child td {
	border-top: none
}

.btn_important_large {
	display: inline-block;
	background-color: #303030;
	border: none;
	border-bottom: 6px solid #565656;
	height: 48px;
	line-height: 48px;
	font-size: 18px;
	font-family: dotum;
	font-weight: bold;
	color: #ffffff;
	letter-spacing: -1px;
}

element.style {
    width: 100%;
}

.btn_important_large {
    display: inline-block;
    background-color: #303030;
    border: none;
    border-bottom: 6px solid #565656;
    height: 48px;
    line-height: 48px;
    font-size: 18px;
    font-family: dotum;
    font-weight: bold;
    color: #ffffff;
    letter-spacing: -1px;
}
/*----------------------------------  */
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
			<a href="      ">
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
			<a class="menu">의류</a><br>
			<a class="menu">기구</a><br>
			<a class="menu">식품</a><br>
			<a class="menu">트레이너</a><br>
		</div>
		<!-- 메뉴 바 커뮤니티 부분  -->
		<div id="Community" class="tabcontent">
		
  			<a class="menu">상품등록</a><br>
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
						<a href="#section1">판매자 회원가입 </a>
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
	
	<!-- 언더 바 부분   -->	
	<div id="quick_layer" style="display: block;">
		<table class="common_quick">
			<tbody>
				<tr>
					<td>
					<a href="http://localhost:8093/main/" class="relative">
						<img src="resources/images/ftr_home.png" width="26" height="20" vspace="2">
						
					</a>
					</td>
					<td>
						<a href="https://www.youtube.com/" >
							<img src="resources/images/ftr_cart.png" width="26" height="20" vspace="2">
							
						</a>
					</td>
					<td>
						<a href="https://www.youtube.com/" >
							<img src="resources/images/ftr_delivery.png" width="26" height="20" vspace="2">
							
						</a>
					</td>
					<td>
						<a href="https://www.youtube.com/" >
							<img src="resources/images/ftr_mypage.png" width="26" height="24" vspace="2">
							
						</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</section>

<!-- 판매자 회원가입 메인 화면  -->
<div class="main" id="section1">
	<form action="memberjoin" method="post" enctype="multipart/form-data" style="padding-top: 20px;">
		<table class="join_information" style="width: 100%" >
			<colgroup>		
				<col width="95">
				<col width="0">
				<col>
			</colgroup>
		<tbody>
			<tr>
				<th>아이디</th>
				<td width="5"></td>
				<td><c:choose>
						<c:when test="${kakaoId ne null}">
							<input type="text" name="mid" id="mid" style="width: 100%" onkeyup="idOverlap()">
							<input type="hidden" name="kakaoId" style="width: 100%" value="${kakaoId}"><br>
							<span id="idch"></span><br>
						</c:when>
						<c:when test="${naverId ne null}">
							<input type="text" name="mid" id="mid" style="width: 100%; ime-mode: disabled;" onkeyup="idOverlap()">
							<input type="hidden" name="naverId" style="width: 100%; ime-mode: disabled;" value="${naverId}"><br>
							<span id="idch"></span><br>
	      				</c:when>
						<c:otherwise>
							<input type="text" name="mid" id="mid" Style="width: 100%; ime-mode: disabled;" onkeyup="idOverlap()"><br>
							<span id="idch"></span><br>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td width="5"></td>
				<td><input type="password" name="mpassword" id="mpassword"  style="width: 100%; ime-mode: disabled;"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td width="5"></td>
				<td><input type="text" name="mname" id="mname" size="15" style="width: 100%"></td>
			</tr>
			
			<tr>
				<th>생년월일</th>
				<td width="5"></td>
				<td><input type="date" name="mbirth"id="mbirth" maxlength="10" size="15" style="width:100%;"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td width="5"></td>
				<td>
					<div class="pdb5">
						<input type="text" name="memailid" id="memailid" style="width: 30%">@<input type="text" name="medomain" id="medomain" style="width: 60%">
					</div>
					<div class="pdb5">
						<select  name="select_email" onChange="selectEmail(this)">
							<option value="" selected>직접선택</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.net">hanmail.net</option>
						</select>
						<input type="button" value="중복확인" onclick="meOverlap()">
						<span id="emch"></span><br>
					</div>
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td width="5"></td>
				<td><input type="text" name="mphone" id="mphone" size="15" style="width:100%;"><br></td>	
			</tr>
			<tr>
				<th>주소 </th>
				<td width="5"></td>
				<td><input type="text" name="mpostnum" id="sample6_postcode" placeholder="우편번호" size="7" >
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<div style="margin-top: 3px;">
						<input type="text" name="maddress1" id="sample6_address" placeholder="주소"  class="address " style="width: 100%;" > 
						<input type="text" name="maddress2" id="sample6_detailAddress" placeholder="상세주소" class="address_street hide" style="width: 100%;" >
					</div> <span id="address_view" style="display: none; padding-top: 5px;"></span>
					<div style="margin-top: 3px;">
						<input type="text" name="maddress3" id="sample6_extraAddress" placeholder="참고항목"  size="40" style="width: 100%;">
					</div>
				</td>
			</tr>
		</tbody>
		</table>
		<input type="hidden" name="mfavorite" id="mfavorite">
		<input type="hidden" name="mcontents" id="mcontents">
		<input type="hidden" name="mclass" id="mclass" value="판매">	
		<input type="file" name="mfile" id="mfile" style="display:none">
		<button class="btn_important_large" style="width: 100%">회원가입</button>
	</form>
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

<!-- 회원가입 아이디 이메일 인증 스크립트  -->
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
function selectEmail(ele){ 
	 var $ele = $(ele); 
	 var $medomain = $('input[name=medomain]'); 
	 
	 // '1'인 경우 직접입력 
	 if($ele.val() == "1"){
		 $medomain.attr('readonly', false);
		 $medomain.val(''); 
		 } else { 
			 $medomain.attr('readonly', true);
			 $medomain.val($ele.val()); 
			 }
	 }


     function idOverlap(){
    	 //var inputid = $("#mid").val();
    	 var inputId = document.getElementById("mid").value;
    	 var inch = document.getElementById("idch");
    	 //ajax(Asynchoronous javascript and XML)
    	 //JSON("javascript object notation")
    	 $.ajax({
    		 type : "post",
    		 url : "idoverlap",
    		 data : {"mid" : inputId},
    	     dataType : "text",
    	     success : function(result){
    	    	 if(result == "OK"){
    	    		 idch.innerHTML = "사용가능한ID 입니다";
    	    		 //alert("사용가능한ID 입니다.");
    	     }else{
    	    	 idch.innerHTML = "이미 사용중인 ID 입니다.";
    	    	 //alert("이미 사용중인 ID 입니다.");
    	     }
    	 },
    	 error : function(){
    		 alert("ajax 실패!!");
    	 }
     });
  }
     function meOverlap(){
    	
    	 var inputem = document.getElementById("memailid").value;
    	 //var inputed = document.getElementById("medomain").value;
    	 var inputed = $("#medomain").val();
    	 var inch = document.getElementById("emch");
    	 console.log(inputed);
    	 $.ajax({
    		 type : "post",
    		 url : "emoverlap",
    		 data : {"memailid" : inputem,
    			     "medomain" : inputed},
    	     dataType : "text",
    	     success : function(result){
    	    	 if(result == "OK"){
    	    		 emch.innerHTML = "사용가능한 이메일 입니다.";
    	    	 }else{
    	    		 emch.innerHTML = "이미 사용중인 이메일 입니다"
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