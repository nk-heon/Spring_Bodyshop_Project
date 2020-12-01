<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  height: 200px;
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
/*       글작성  css       */

.wrap {
    width: 1280px;
    margin: 0 auto;
}

.board_write {
    padding-top: 67px;
    
}

.header {
    overflow: hidden;
    height: 50px;
    margin-bottom: 20px;
}

.tit {
    float: left;
    font-size: 28px;
    color: #151432;
    margin-bottom: 30px;
    line-height: 50px;
}

.category_selector {
    margin-left: 30px;
    display: inline-block;
    position: relative;
    height: 54px;
}

.typer1{
	float: left;
    margin-right: 30px;
}


button, input, select, textarea {
    font-size: 100%;
    vertical-align: middle;
}

.radio_wrap {
    padding-top: 18px;
}

.radioSort01 {
    color: #aca394;
    margin-right: 10px;
}

.title {
    border-top: 10px solid #3e3d55;
    border-bottom: 1px solid #e8e8e8;
    overflow: hidden;
    
    padding: 16px 32px;
}

.title strong {
    float: left;
    width: 56px;
    display: inline-block;
    font-size: 18px;
    line-height: 30px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.atitle {
    float: left;
    width: 650px;
    display: inline-block;
    font-size: 18px;
    line-height: 28px;
    color: #919199;
}

.edSelectStyleBar {
    overflow: hidden;
    position: relative;
    padding: 5px 0 16px 32px;
    border-bottom: 1px solid #e8e8e8;
    background-color: #fefefe;
    
}

.edWSec {
    position: relative;
    border-bottom: 1px solid #e7e7ea;
}

.editWindow {
	clear: both;
    box-sizing: border-box;
    width: 100%;
    height: 580px;
    line-height: 1;
    padding: 10px;
    background-color: transparent;
    border: 0;
}

.btn-register {
    background: #aca394;
}

.btn-register {
    display: inline-block;
    width: 320px;
    font-size: 22px;
    height: 80px;
    background: #a4a4a4;
    line-height: 80px;
    color: #fff;
    text-align: center;
    margin-right: 10px;
    border: 0px;
    outline: 0px;
}

.btn_area {
    padding-top: 60px;
    text-align: center;
    padding-bottom: 150px;
}


</style>
<body>
<!-- 글쓰기 등록 버튼 스크립트  -->	
<script>
	function boardWrite(){
		boardwriteform.submit();
}
</script>
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
						<a href="#section1"> 페이지 이름 쓸 것 </a>
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

<!-- 화면  -->
<div class="main" id="section1">
<form action="boardwritefile" method="post" name="boardwriteform" enctype="multipart/form-data">
	<input type="hidden" name="amid" id="amid" value="${sessionScope.loginId}" readonly><br>
	<div class="wrap">
		<div class="board_write">
			<div class="header">
				<div class="tit">글쓰기</div>
				<div class="category_selector">
					<div class="heading">
						<div class="radio_wrap"> 
							<div class="typer1">
								<input type="radio" id="radioSort01" name="atype" value="자유">
								<label class="radiotext"><span></span>자유</label>
								<input type="radio" id="radioSort02" name="atype" value="상품">
								<label class="radiotext"><span></span>상품</label>
			 					<input type="radio" id="radioSort02" name="atype" value="운동">
			 					<label class="radiotext"><span></span>운동</label>
							</div>
						</div> 
					</div>
				</div>
			</div>
			<div class="content">
				<div class="write_wrap">
					<div class="editor" id="editor">
						<p class="title">
							<strong>제목</strong>
							<input type="text" class="atitle" placeholder="제목을 입력해 주세요!" name="atitle" >
						</p>
						<div id="selectBar" class="edSelectStyleBar" style="display: block;">
							<input class="afile"type="file" name="afile" id="afile"><br>
						</div>
						<div class="edWSec">
							<textarea class="editWindow" name="acontents" rows="10" cols="50" placeholder="내용을 입력해 주세요!"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="btn_area">
				<button class="btn-register" onclick="boardWrite()">글등록</button>
			</div>
		</div>
	</div>
</form>	
</div>
<div class="main" id="section2">
</div>
			

	
	
<!-- 글 등록 스크립트  -->
<script>
	function boardWrite(){
		boardwriteform.submit();
	}
</script>		

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
</body>
</html>