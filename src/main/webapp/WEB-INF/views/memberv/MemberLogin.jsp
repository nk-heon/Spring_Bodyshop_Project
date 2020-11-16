<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
/*  layout body  */
#layout_body {
	width: 100%;
	margin: 0 auto;
}

#layout_body {
	background-color: #ffffff;
}

#layout_body {
	
}


/* ------------------------ */
#wrap {
	position: relative;
	min-width: 500px;
	-moz-transition: width ease-in-out 0.5s 0.1s;
	-webkit-transition: width ease-in-out 0.5s 0.1s;
	transition: width ease-in-out 0.5s 0.1s;
}

* {
	
}



body, select, button, table {
	font-family: '나눔고딕', NanumGothic, '맑은 고딕', Malgun Gothic, '돋움', Dotum,
		'굴림', Gulim, HelveticaNeue-Light, AppleSDGothicNeo-Light, sans-serif;
	font-size: 12px;
	color: #515151;
}
/* ------------------ */
#layout_wrap {
	position: relative;
	top: 0;
	left: 0;
}




/*  */
#layout_body {
	width: 100%;
	margin: 0 auto;
}

#layout_body {
	background-color: #ffffff;
}

#layout_body {
	
}



/* -------------------- */
#layout_body body, #layout_body table, #layout_body div, #layout_body input,
	#layout_body textarea, #layout_body select, #layout_body span {
	
}

.keyboard_guide {
	position: relative;
	padding: 5px 5px 3px 5px;
	min-height: 10px;
	text-align: center;
}



/*로그인--------  */
#layout_body body, #layout_body table, #layout_body div, #layout_body input,
	#layout_body textarea, #layout_body select, #layout_body span {
	
}

.pd10 {
	padding: 15px !important;
}



user agent stylesheet
div {
	display: block;
}
/*로그인폼 박스 */
.login_form_box {
	
}



/*  */
form {
	clear: both;
}

form {
	display: block;
	margin-top: 0em;
}
/*-----------------  */


input[type="hidden" i] {
	display: none;
	appearance: initial;
	background-color: initial;
	cursor: default;
	padding: initial;
	border: initial;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: -internal-light-dark(black, white);
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	appearance: textfield;
	background-color: -internal-light-dark(rgb(255, 255, 255),
		rgb(59, 59, 59));
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 2px;
	border-width: 2px;
	border-style: inset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}


/* ----------- */
element.style {
	
}

img, fieldset {
	border: 0;
}



* {
	
}
\fieldset {
	display: block;
	margin-inline-start: 2px;
	margin-inline-end: 2px;
	padding-block-start: 0.35em;
	padding-inline-start: 0.75em;
	padding-inline-end: 0.75em;
	padding-block-end: 0.625em;
	min-inline-size: min-content;
	border-width: 2px;
	border-style: groove;
	border-color: threedface;
	border-image: initial;
}

/*-----------------------  */
.clearbox {
	*zoom: 1;
}

.pdt10 {
	padding-top: 10px !important;
}

.txt_spacing {
	letter-spacing: -1px;
}



/*----------  */
.fright {
	float: right;
}

=
div {
	display: block;
}

.txt_spacing {
	letter-spacing: -1px;
}
/*------------  */

a {
	text-decoration: none;
}

=
a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
	text-decoration: underline;
}

.txt_spacing {
	letter-spacing: -1px;
}
/*-----------  */
element.style {
	width: 100%;
}

#layout_body body, #layout_body table, #layout_body div, #layout_body input,
	#layout_body textarea, #layout_body select, #layout_body span {
	
}

.login_form_box input.login_btn {
	margin-top: 10px;
}

input[type=button], input[type=image], input[type=submit], button {
	border-radius: 0;
	-webkit-appearance: none;
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





input[type="submit" i] {
	appearance: push-button;
	user-select: none;
	white-space: pre;
	align-items: flex-start;
	text-align: center;
	cursor: default;
	color: -internal-light-dark(black, white);
	background-color: -internal-light-dark(rgb(239, 239, 239),
		rgb(59, 59, 59));
	box-sizing: border-box;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}


/* -------- */
element.style {
	color: #616161;
}



.fx14 {
	font-size: 14px;
}

.pdb10 {
	padding-bottom: 10px !important;
}

.pdt20 {
	padding-top: 20px !important;
}

* {
	
}

div {
	display: block;
}


/*------*/
element.style {
	width: 100%;
}


.btn_normal_large {
	display: inline-block;
	background-color: #ffffff;
	border: 1px solid #c0c0c0;
	/* border-radius: 5px !important; */
	height: 42px;
	line-height: 38px;
	font-size: 16px;
	font-weight: 600;
	color: #111;;
	letter-spacing: -1px;
}




body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, form, fieldset,
	legend, input, textarea, button, select {
	margin: 0;
	padding: 0;
	vertical-align: middle;
}

* {
	
}

button {
	appearance: button;
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: -internal-light-dark(black, white);
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	cursor: default;
	background-color: -internal-light-dark(rgb(239, 239, 239),
		rgb(59, 59, 59));
	box-sizing: border-box;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}
/*------  */
#layout_footer .section {
    margin: 0 auto;
    border: 1px solid #e9e9e9;
    border-left: 0px;
    border-right: 0px;
    padding: 15px 10px;
    margin-bottom: 25px;
}
.cboth {
    clear: both;
}
.cboth:after {
    content: " ";
    display: block;
    clear: both;
}
</style>


<body>
	<section class="banner" role="banner">
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()"
				style="padding: 4%;">&times;</a>
			<div class="cboth section" style="text-align: center;">
				<div class="dropdown">
					<button onclick="myFunction()" class="dropbtn"
						style="font-size: 25px;">회원가입</button>
				</div>
				<button class="dropbtn" style="font-size: 25px;">로그인</button>

			</div>
			<div class="cboth section1">
				<a href="  장바구니    "> <img src="resources/images/bt_icon01.gif">
				</a> <a href="      "> <img src="resources/images/bt_icon02.gif">
				</a> <a href="      "> <img src="resources/images/bt_icon03.gif">
				</a> <a href="      "> <img src="resources/images/bt_icon04.gif">
				</a>
			</div>
			<div class="tab">
				<button class="tablinks" onclick="openCity(event, 'Board')">게시판</button>
				<button class="tablinks" onclick="openCity(event, 'Category')">카테고리</button>
				<button class="tablinks" onclick="openCity(event, 'Community')">커뮤니티</button>
				<button class="tablinks" onclick="openCity(event, 'Mypage')">마이페이지</button>
				<button class="tablinks" onclick="openCity(event, 'Registration')">상품등록</button>

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
				<a class="menu">내 정보</a><br> <a class="menu">주문/배송</a><br>
				<a class="menu">고객센터</a><br>
			</div>
			<div id="Registration" class="tabcontent">
				<a class="menu">상품등록</a><br> <a class="menu">트레이너등록</a><br>
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
								<a href="#search" class="top_search" id="top_search"> <!--  검색     -->
									<img src="resources/images/icon_search_48px.png"
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
						<td><a href="http://localhost:8093/main/" class="relative"> <img
								src="resources/images/ftr_home.png" width="26" height="20"
								vspace="2">

						</a></td>
						<td><a href="https://www.youtube.com/"> <img
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
	<div id="layout_body">
		<style>
.keyboard_guide {
	position: relative;
	padding: 5px 5px 3px 5px;
	min-height: 10px;
	text-align: center;
}

.keyboard_guide a[href='#keyboard_specialchars'] {
	float: right;
	color: #999;
	margin-left: 10px;
}

.keyboard_guide a[href='#keyboard_specialchars'].opened {
	color: #000
}

.keyboard_guide a[href='#keyboard_specialchars'] span {
	padding-left: 3px;
	font-size: 7px;
}

.keyboard_guide a[href='#keyboard_hangul'] {
	float: right;
	color: #999
}

.keyboard_guide a[href='#keyboard_hangul'].opened {
	color: #000
}

.keyboard_guide a[href='#keyboard_hangul'] span {
	padding-left: 3px;
	font-size: 7px;
}

.keyboard_guide_img .keyboard_hangul {
	display: None;
	margin: 23px auto 0 auto;
	width: 290px;
	height: 80px;
	background:
		url('/data/skin/mobile_ver3_0118everest_1/images/common/keyboard.gif')
		no-repeat;
	background-size: 100% auto
}

.keyboard_guide_img .keyboard_specialchars {
	display: None;
	margin: 23px auto 0 auto;
	width: 290px;
	height: 55px;
	background:
		url('/data/skin/mobile_ver3_0118everest_1/images/common/keyboard.gif')
		no-repeat 0 -85px;
	background-size: 100% auto;
	display: none;
}

.login_form_box {
	
}

.login_form_box input[name='mid'] {
	display: block;
	width: 100%;
	border: 1px solid #ccc;
	height: 45px;
	line-height: 45px;
	text-indent: 15px;
	font-size: 14px; /*font-family:dotum;*/
}

.login_form_box input[name='mpassword'] {
	display: block;
	width: 100%;
	border: 1px solid #ccc;
	border-top: none;
	height: 45px;
	line-height: 45px;
	text-indent: 15px;
	font-size: 14px; /*font-family:dotum;*/
}

.login_form_box input.login_btn {
	margin-top: 10px;
}

.sns_login_ul {
	width: 100%;
	text-align: center;
	margin-top: 15px;
	padding: 0px;
}

.sns_login_ul li {
	display: inline-block;
	width: 55px;
	height: 63px;
	padding: 0px;
	margin: 0px;
	border-left: 1px solid #ccc;
	text-align: center;
}

.sns_login_ul li:first-child {
	border: 0px;
}

.sns_login_ul li img {
	width: 45px;
	height: 45px;
}

.sns_login_ul li span {
	line-height: 22px;
}

</style>
		<script>
			$(function() {
				$(
						"a[href='#keyboard_specialchars'], a[href='#keyboard_hangul']")
						.click(
								function() {
									if ($(this).is(".opened")) {
										$("span", this).html("▼");
									} else {
										$("span", this).html("▲");
									}

									if ($(this).attr('href') == '#keyboard_specialchars') {
										$("a[href='#keyboard_specialchars']")
												.toggleClass('opened');
										$("a[href='#keyboard_hangul']")
												.removeClass('opened');
										$("a[href='#keyboard_hangul'] span")
												.html("▼");
										$(".keyboard_hangul").hide();
										$(".keyboard_specialchars").toggle();
									} else {
										$("a[href='#keyboard_hangul']")
												.toggleClass('opened');
										$("a[href='#keyboard_specialchars']")
												.removeClass('opened');
										$(
												"a[href='#keyboard_specialchars'] span")
												.html("▼");
										$(".keyboard_specialchars").hide();
										$(".keyboard_hangul").toggle();
									}
								});
			});

			$(function() {
				$("form[name='loginForm'] input[name='userid']").focus();
			});

			function submitLoginForm(frm) {
				if ($("input[name='save_id']").is(":checked")) {
					$.cookie('save_userid', $("input[name='userid']", frm)
							.val(), {
						'expires' : 30,
						'path' : '/'
					});
				} else {
					$.cookie('save_userid', '', {
						'expires' : -1,
						'path' : '/'
					});
				}

				if ($("input[name='save_pw']").is(":checked")) {
					$.cookie('save_password', $("input[name='password']", frm)
							.val(), {
						'expires' : 30,
						'path' : '/'
					});
				} else {
					$.cookie('save_password', '', {
						'expires' : -1,
						'path' : '/'
					});
				}

				return true;
			}//t
		</script>
	</div>
	<div id="wrap">
		<div id="layout_wrap">
			<div id="layout_body">

				<div class="pd10">
					<!-- 로그인폼 -->
					<div class="login_form_box">
						<form name="loginForm" target="actionFrame" method="post"
							action="memberlogin"
							onsubmit="return submitLoginForm(this)">
							<input type="hidden" name="return_url" value="/member/login">
							<input type="hidden" name="order_auth" value="0">
							
							<fieldset>
							<form action="memberlogin" method="post">
							<input type="text" name="mid" id="mid" value=""
									placeholder="아이디" tabindex="1" required="required">
							 <input type="password" password="mpassword" name="mpassword"
									id="mpassword" placeholder="비밀번호" tabindex="2"
									required="required">
										<div class="fright">
									<a href="../member/find?mode=findid">아이디</a> /<a
										href="../member/find?mode=findpw">비밀번호 찾기</a>
								</div>
					</div>
					<input type="submit" value="로그인"
						class="login_btn btn_important_large" style="width: 100%;"
						tabindex="3">
							</form>
							</fieldset>
							
							</form>
				</div>
				<div class="mgt5"
					style="margin-top: 15px; border-top: 2px solid #ddd">
					<div class="pdt20 pdb10 fx14" style="color: #616161">아직 회원이
						아니세요?</div>
					<button class="btn_normal_large"
						onclick="location.href='Join'" 
						style="width: 100%">회원가입</button>
				</div>
			</div>

		</div>
		<div class="cboth section">
		<h3>카카오로 로그인</h3>
<a href="kakaologin">
   <img src="${pageContext.request.contextPath}/resources/img/카카오.png/">
</a>
<h3>네이버로 로그인</h3>
<a href="naverlogin">
   <img src="${pageContext.request.contextPath}/resources/img/네이버 아이디로 로그인_축약형_Green.png/">
</a>
		</div>
	</div>

<c:if test="${notVerify}">
<script>
alert("이메일이 인증이 되지 않았습니다 이메일을 확인하시고 인증해주시기 바랍니다");
</script>
</c:if>
<c:if test="${notExist}">
<script>
alert("아이디나 비밀번호가 일치하지 않습니다");
</script>
</c:if>



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


</body>
</html>