<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">

<style>
#main{
	margin-top: 30px;
	margin-left: 500px;
	margin-right: 500px;
}

</style>

</head>
<body>
<%@ include file ="../common/header1.jsp" %>
<form action="/project/detail/insertweb/<c:out value="${projectNo}"/>" method="post" style="user-select: auto;">
  <fieldset id="main" style="user-select: auto;">
  	<small id="emailHelp" class="form-text text-muted" style="user-select: auto;">웹사이트</small>
    <legend style="user-select: auto;">웹사이트 추가</legend>
    <div class="form-group" style="user-select: auto;">
      <label style="user-select: auto;">URL</label>
      <input class="form-control" name="url" placeholder="Enter URL" style="user-select: auto;">
    </div>
    <div class="form-group" style="user-select: auto;">
      <label for="exampleTextarea" style="user-select: auto;">메모</label>
      <textarea class="form-control" name="memo" rows="3" style="user-select: auto;"></textarea>
    </div>
    <button type="submit" class="btn btn-primary" style="user-select: auto;">Submit</button>
  </fieldset>
</form>
</body>
</html>