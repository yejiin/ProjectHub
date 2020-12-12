<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
#header{
	z-index: 3;
	position: fixed;
  	top: 0;
  	left: 0;
  	right: 0;
}

#page-wrapper {
    margin-top: 140px;
    width:100%;
}

#page-content-wrapper {
    width: 100%;
    margin-left: 230px;
    margin-top: 50px;
}
.list-group{
z-index: 4;
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
</head>
<body>
<%@ include file ="./common/header1.jsp" %>
<div id="page-wrapper">
<div id="page-content-wrapper">
   	<div class="page-header">
        <h1><c:out value="${id}"/> Project List</h1>
   	</div>
     <div class="jumbotron" style="width: 1000px">
     <c:forEach items="${projectList}" var="list">
  		<p class="lead" style="font-weight: bold;"><a href="/project/detail/<c:out value="${list.no}"/>" style="color: black; text-decoration: none;"><c:out value="${list.name}"/></a></p>
  		<p><c:out value="${list.des}"/></p>
  		<hr class="my-4">
  	</c:forEach>
  	</div>
</div>
</div>
<%@ include file ="./common/footer.jsp" %>