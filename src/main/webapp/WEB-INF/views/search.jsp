<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
#sidebar-wrapper{
    position: fixed;
    height: 100%;
    width: 450px;
}	

.list-group{
	width: 250px;
	margin: 50px auto;
}

#page-content-wrapper {
    width: 100%;
    margin-left: 430px;
    margin-top: 50px;
}

.table{
	width: 800px;
}

</style>
</head>
<body>
<%@ include file ="./common/header1.jsp" %>
<div id="page-wrapper">
<div id="sidebar-wrapper">
<ul class="list-group" style="user-select: auto;">
  <li class="list-group-item d-flex justify-content-between align-items-center" style="user-select: auto;">
    전체
    <span class="badge badge-primary badge-pill" style="user-select: auto;">14</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center" style="user-select: auto;">
    계정
    <span class="badge badge-primary badge-pill" style="user-select: auto;">2</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center" style="user-select: auto;">
  	웹사이트
    <span class="badge badge-primary badge-pill" style="user-select: auto;">1</span>
  </li>
</ul>
</div>
<div id="page-content-wrapper">
   <div class="page-header">
        <h1>검색결과</h1>
      </div>
      <div class="row">
        <div class="col-sm-4">
        <c:forEach items="${searchWebList}" var = "list">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title"><c:out value="${list.url}"/></h3>
            </div>
            <div class="panel-body">
            	<c:out value="${list.memo}"/>
            </div>
          </div>
          </c:forEach>
        </div>
       
      </div>
</div>
</div>
</body>
</html>