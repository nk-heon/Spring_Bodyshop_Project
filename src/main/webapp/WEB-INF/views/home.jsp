<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
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
article, aside, details, figcaption, figure, footer, header, hgroup,
	main, menu, nav, section, summary {
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
	/*   display: block; */
	transition: 0.3s;
	/*   text-align: center; */
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	/* margin-left: 50px; */
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
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

.tab_inner {
	line-height: 40px;
	font-size: 12px;
	color: #8f8f8f;
	font-weight: bold;
	border-left: 1px solid #c3c3c3;
	border-bottom: 1px solid #c3c3c3;
	border-top: 0;
}

/* ------------ */

/*  회원가입   */
.dropbtn {
	background-color: #ffffff;
	color: #aaacb5;
	padding: 15px 100px;
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
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: #aaacb5;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	background-color: #ddd;
}

.show {
	display: block;
}

body {
	font-family: Arial;
}

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
* {
	box-sizing: border-box
}

body {
	font-family: Verdana, sans-serif;
	margin: 0
}

.mySlides {
	display: none
}

img {
	vertical-align: middle;
}

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
	background-color: rgba(0, 0, 0, 0.8);
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

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.prev, .next, .text {
		font-size: 11px
	}
}

/*  -----------------  */
</style>


<body>
	<section class="banner" role="banner">
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()"
				style="padding: 4%;">&times;</a>
			<div class="cboth section" style="text-align: center;">
				<div class="dropdown">
					<c:if test="${sessionScope.loginId == null}">
						<button type="button" onclick="location.href='Join'"
							class="dropbtn" style="font-size: 25px;">회원가입</button>
					</c:if>
				</div>
				<c:choose>
					<c:when test="${sessionScope.loginId == null}">
						<button onclick="location.href='memberloginform'" class="dropbtn"
							style="font-size: 25px;">로그인</button>
					</c:when>
					<c:otherwise>
					<a class="dropbtn" style = "font-size: 25px;">${sessionScope.loginId} 님 환영합니다.</a><br>
						<button onclick="location.href='memberlogout'" class="dropbtn"
							style="font-size: 25px;">로그아웃</button>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="cboth section1">
				<a href="      "> <img src="resources/images/bt_icon01.gif">
				</a> <a href="      "> <img src="resources/images/bt_icon02.gif">
				</a> <a href="      "> <img src="resources/images/bt_icon03.gif">
				</a> <a href="      "> <img src="resources/images/bt_icon04.gif">
				</a>
			</div>
			<div class="tab">
				<button class="tablinks" onclick="openCity(event, 'Board')">게시판</button>
				<button class="tablinks" onclick="openCity(event, 'Category')">카테고리</button>
				<button class="tablinks" onclick="openCity(event, 'Community')">상담문의</button>
				<button class="tablinks" onclick="openCity(event, 'Mypage')">마이페이지</button>
				<c:if
					test="${sessionScope.mclass eq '판매'or sessionScope.mclass eq '트레이너'}">
					<button class="tablinks" onclick="openCity(event, 'Registration')">상품등록</button>
				</c:if>
			</div>
			<div id="Board" class="tabcontent">
				<a class="menu">상품게시판</a><br> <a class="menu">운동게시판</a><br>
				<a class="menu">자유게시판</a><br>
			</div>
			<div id="Category" class="tabcontent">
				<a class="menu">의류</a><br> <a class="menu">기구</a><br> <a
					class="menu">식품</a><br> <a class="menu">트레이너</a><br>
			</div>

			<div id="Community" class="tabcontent">
				<a class="menu">상품문의</a><br> <a class="menu">상품후기</a><br>
				<a class="menu">1대1상담</a><br>
			</div>

			<div id="Mypage" class="tabcontent">
				<a class="menu" onclick="location.href='memberview'">내 정보</a><br>
				<a class="menu">주문/배송</a><br>
				<a class="menu">고객센터</a><br>
			</div>
			<div id="Registration" class="tabcontent">
				<c:if test="${sessionScope.mclass eq '판매'}">
					<a class="menu" onclick="location.href='ProductWriteForm'">상품등록</a><br>
				</c:if>
				<c:if test="${sessionScope.mclass eq '트레이너'}">
					<a class="menu">트레이너등록</a><br>
				</c:if>
			</div>
		</div>
		<header id="header" class="fixed">
			<div class="category_box" id="layout_header" style="border: none;">
				<a href="#category"> <span
					style="font-size: 25px; cursor: pointer" onclick="openNav()">&#9776;</span>
				</a>
			</div>
			<div class="header-content clearfix" style="margin-right: 60px;">
				<nav class="navigation" role="navigation">
					<ul class="primary-nav">
						<li><a href="#section1">운동 후기 </a></li>
						<li><a href="#section2">베스트 상품 </a></li>
						<li><a href="#section3">트레이너 </a></li>
						<li><a href="#section4">운동 유튜브 </a></li>

						<li>
							<div class="search_box" style="border: none;">
								<a href="#search" class="top_search" id="top_search">
									<!--  검색     --> <img
									src="resources/images/icon_search_48px.png"
									style="width: 20px;">

								</a>
							</div>
						</li>
					</ul>

				</nav>
			</div>
		</header>
		<div id="quick_layer" style="display: block;">
			<table class="common_quick">
				<tbody>
					<tr>
						<td><a href="http://localhost:8093/main" class="relative"> <img
								src="resources/images/ftr_home.png" width="26" height="20"
								vspace="2">

						</a></td>
						<td><a href=""> <img
								src="resources/images/ftr_cart.png" width="26" height="20"
								vspace="2">

						</a></td>
						<td><a href="https://www.youtube.com/"> <img
								src="resources/images/ftr_delivery.png" width="26" height="20"
								vspace="2">

						</a></td>
						<td><a href="https://www.youtube.com/"> <img
								src="resources/images/ftr_mypage.png" width="26" height="24"
								vspace="2">

						</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>

	<div class="main" id="section1">
		<div class="slideshow-container">

			<div class="mySlides fade">
				<div class="numbertext">1 / 3</div>
				<img src="resources/images/images_1.jpg" style="width: 100%">
				<div class="text">Caption Text</div>
			</div>

			<div class="mySlides fade">
				<div class="numbertext">2 / 3</div>
				<img src="resources/images/images_2.jpg" style="width: 100%">
				<div class="text">Caption Two</div>
			</div>

			<div class="mySlides fade">
				<div class="numbertext">3 / 3</div>
				<img src="resources/images/images_3.jpg" style="width: 100%">
				<div class="text">Caption Three</div>
			</div>

			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
				onclick="plusSlides(1)">&#10095;</a>

		</div>
		<br>

		<div style="text-align: center">
			<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span> <span class="dot"
				onclick="currentSlide(3)"></span>
		</div>

	</div>
	<div class="main" id="section2"></div>
	<div class="main" id="section3">
		<a href=""> <img src="resources/images/Trainer.PNG"
			style="display: block; margin: 0px auto;">
		</a>

	</div>
	<div class="main" id="section4">
		<a href="https://www.youtube.com/channel/UCrFFbADYO1jrXxefP9MivWA">
			<img src="resources/images/main_c01.png" style="width: 100%">
		</a>

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
	<!-- 회원가입 메뉴 스크립트   -->
	<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {
				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
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
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
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
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
		}
	</script>

</body>
</html>