<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
*,
*::before,
*::after {
  	box-sizing: border-box;
}

.main{
	color: #272727;
  	font-family: 'Merriweather', serif;
  	font-style: normal;
  	font-weight: 400;
  	letter-spacing: 0;
  	padding: 1rem;
  	max-width: 1200px;
  	margin: 0 auto;
}

h1 {
    font-weight: 400;
    text-align: center;
}

img {
  	height: auto;
  	max-width: 100%;
  	vertical-align: middle;
}

.btn1 {
  	color: #ffffff;
  	padding: 0.8rem;
  	font-size: 14px;
  	text-transform: uppercase;
  	border-radius: 4px;
  	font-weight: 400;
  	display: block;
  	width: 100%;
  	cursor: pointer;
  	border: 1px solid rgba(255, 255, 255, 0.2);
  	background: transparent;
}

.btn1:hover {
  	background-color: rgba(255, 255, 255, 0.12);
}

.cards {
  	display: flex;
  	flex-wrap: wrap;
  	list-style: none;
  	margin: 0;
  	padding: 0;
}

.cards_item {
  	display: flex;
  	padding: 1rem;
}

@media (min-width: 40rem) {
  .cards_item {
    width: 50%;
  }
}

@media (min-width: 56rem) {
  .cards_item {
    width: 33.3333%;
  }
}

.card {
  	background-color: white;
  	border-radius: 0.25rem;
  	box-shadow: 0 20px 40px -14px rgba(0, 0, 0, 0.25);
  	display: flex;
  	flex-direction: column;
  	overflow: hidden;
}

.card_content {
  	padding: 1rem;
  	background: linear-gradient(to bottom left, #EF8D9C 40%, #FFC39E 100%);
}

.card_title {
  	color: #ffffff;
  	font-size: 1.1rem;
  	font-weight: 700;
  	letter-spacing: 1px;
  	text-transform: capitalize;
  	margin: 0px;
}

.card_text {
  	color: #ffffff;
  	font-size: 0.875rem;
  	line-height: 1.5;
  	margin-bottom: 1.25rem;    
  	font-weight: 400;
}
.made_by{
  	font-weight: 400;
  	font-size: 13px;
  	margin-top: 35px;
  	text-align: center;
}

#insertProject{
	margin-left: 20px;
}

footer{
  left: 0;
  bottom: 0;
  width: 100%;
  margin-top: 95px;
  text-align: center;
  color: gray;
  font-size: 12px;
}

</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#insertProject").on("click", function(){
			location.href="./project/insertView";
		});
		
	});
	
</script>
</head>
<body>
<%@ include file ="../common/header1.jsp" %>
<div class="main">
 	<div class="header">
		<h1>My Project<button type="button" class="btn btn-secondary disabled" id="insertProject">+</button></h1>
	</div>
	
	<ul class="cards">
	<c:forEach items="${projectList}" var = "list">
	<li class="cards_item">
      <div class="card">
        <div class="card_image" style="background-color: black"><img src="https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg"></div>
        <div class="card_content">
          <h2 class="card_title">Project Name: <c:out value="${list.name}"/></h2>
          <p class="card_text">start date: <c:out value="${list.startdate}"/></p>
          <button class="btn1 card_btn" onclick="location.href='/project/detail/<c:out value="${list.no}"/>'" >Enter</button>
        </div>
      </div>
    </li>
	</c:forEach>
	</ul>
</div>
<%@ include file ="../common/footer.jsp" %>