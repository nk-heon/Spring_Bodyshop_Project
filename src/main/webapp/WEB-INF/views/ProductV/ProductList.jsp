<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}


</style>

<style>

body, select, button, table {
    font-family: 'Roboto', 'Nanum Gothic', 'Malgun Gothic', "돋움",Dotum,tahoma,AppleGothic,sans-serif;
    background: none;
}
body, select, button, table {
    font-family: '돋움',Dotum,tahoma,AppleGothic,sans-serif;
    font-size: 11px;
    color: #515151;
}


ul {
    list-style: none;
    padding-left: 0px;
    float:left;
}

section#content ul li {
 	display:inline-block;
 	margin:10px; 	
}
section#content div.Thumb img{
width:200px;
height:200px;

}
section#content div.Name{
padding:10px 0;text-align:center;

}



</style>




</head>
<body>

<!-- MAIN (Center website) -->
<div class="main">

<h1>BodyShop</h1>
<hr>

<h2>상품목록</h2>

<div id="myBtnContainer">
  <button class="btn active"> 상품전체</button>
  <button class="btn" onclick="location.href='productlistpaging?pproduct=식품'"> 식품</button>
  <button class="btn" onclick="location.href='productlistpaging?pproduct=장비'"> 장비</button>
  <button class="btn" onclick="location.href='productlistpaging?pproduct=의류'"> 의류</button>
</div>

    <section id="content">
    <ul>
    <c:forEach var="product" items="${productList}">
    <li>
    <div class="Thumb">
    <img src="resources/uploadfile/${product.pfilename}" width="30%" height="30%">
	</div>
	<div class="Name">
    <a href="productview?pid=${product.pid}">${product.pname}</a>
	</div>
   	<div class="Name">
    ${product.pprice} 원
    </div>
   </li>
    </c:forEach>
    </ul>
    </section>
    </div>
<script>

// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>