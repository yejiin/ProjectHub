<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
<style>
.table{
	width: 900px;
	text-align: center;
	margin: 20px auto;
}

.page-wrapper{
	text-align: center;
	margin-top: 50px;
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
<div class="page-wrapper">
<h1>웹사이트 순위</h1>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">순위</th>
      <th scope="col">사이트</th>
      <th scope="col">URL</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${rankList}" var="list" varStatus="status">
    <tr class="table-active" style="background-color: white;">
      <th scope="row">${status.count}</th>
      <td><c:out value="${list.des}"/></td>
      <td><c:out value="${list.trans_url}"/></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
<%@ include file ="./common/footer.jsp" %>>