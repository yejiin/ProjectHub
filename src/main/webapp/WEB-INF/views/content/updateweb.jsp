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

footer{
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  margin-top: auto;
  text-align: center;
  color: gray;
  font-size: 12px;
}
</style>

</head>
<body>
<%@ include file ="../common/header1.jsp" %>
<form action="/project/detail/updateweb/<c:out value="${projectNo}"/>/${content.no}" method="post">
  <fieldset id="main">
    <legend>웹사이트 수정</legend>
    <div class="form-group">
      <label>URL</label>
      <input class="form-control" name="url" placeholder="Enter URL" value="${content.url}"></input>
    </div>
    <div class="form-group">
      <label for="exampleTextarea">메모</label>
      <textarea class="form-control" name="memo" rows="3">${content.memo}</textarea>
    </div>
    <button type="submit" class="btn btn-primary">수정하기</button>
  </fieldset>
</form>
<%@ include file ="../common/footer.jsp" %>