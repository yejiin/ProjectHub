<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">

<style>
#header{
position: fixed;
  top: 0;
  left: 0;
  right: 0;
}

#sidebar-wrapper{
    position: fixed;
    height: 100%;
    width: 250px;
    margin-left: -250px;
	border-right: 1px solid black;
	overflow-x: hidden;
    overflow-y: auto;
}

.sidebar-nav {
    width: 250px;
    margin: 0;
    padding: 0;
    margin-top: 68px;
    padding-right: 25px;
    text-align: center;
    font-size: 20px;
    font-weight: bold;
    list-style: none;
}

.sidebar-nav li {
  	margin-bottom: 50px;
    text-indent: 1.5em;
    line-height: 2.8em;
}
  
.sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999;
}
  
.sidebar-nav li a:hover {
    color: #fff;
    background: rgba(255, 255, 255, 0.2);
}
  
.sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
}

#page-wrapper {
    margin-top: 68px;
    padding-left: 250px;
    width:102%;
    margin-left:-1%
 }
  
#page-content-wrapper {
    margin-left: 50px;
    margin-right: 100px;
    width: 100%;
    padding: 20px;
}

#name{
	margin-top: 50px;
}

</style>
</head>
<body>
<%@ include file ="../common/header1.jsp" %>
 <div id="page-wrapper">
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li><a href="#">전체</a></li>
      <li><a href="#website">웹사이트</a></li>
      <li><a href="#memo">메모</a></li>
      <li><a href="#">파일</a></li>
    </ul>
  </div>
  <div id="page-content-wrapper">
  	<h1 id="name">Project 이름</h1>
  	<button>추가</button>
  <div id="website" >
  	<h3 style="margin-top: 50px;">웹사이트</h3>

  </div>
  
  <div id="memo">
  	<h3 style="margin-top: 50px;">메모</h3>

  </div>
  </div>
  
  </div>
<%@ include file ="../common/footer.jsp" %>