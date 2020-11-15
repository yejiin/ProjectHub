<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/home.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
</head>
<body>
<%@ include file ="./common/header.jsp" %>
<div class="section">
  <div class="slider">
    <div class="container slidercontent">
      <h1 class="hero">Project Hub</h1>
      <h2 class="hero">편리한 프로젝트 관리 <br>지금 시작하세요.</h2>
      <button type="button" class="startbtn" onclick="location.href='/login'">시작하기</button>
    </div>
  </div>
</div>

<%@ include file ="./common/footer.jsp" %>