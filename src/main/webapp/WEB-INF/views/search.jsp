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
<div id="sidebar-wrapper">
  <div class="list-group" style="user-select: auto;">
  <a href="#" class="list-group-item list-group-item-action">전체
    <span class="badge badge-primary badge-pill" style="float: right;"><c:out value="${searchAllCount}"/></span></a>
  <a href="#" class="list-group-item list-group-item-action">계정
    <span class="badge badge-primary badge-pill" style="float: right;"><c:out value="${searchUserCount}"/></span></a>
  <a href="#" class="list-group-item list-group-item-action">웹사이트
  	<span class="badge badge-primary badge-pill" style="float: right;"><c:out value="${searchWebCount}"/></span></a>
</div>
</div>
</div>

<div id="page-content-wrapper">
   <div class="page-header">
        <h1>"<c:out value="${keyword}"/>" 검색결과</h1>
   </div>
      <h4 style="margin-top: 20px;">계정</h4>
      <table class="table table-hover" style="max-width: 300px;">
      <tbody>
      <c:forEach items="${searchUser}" var="userlist">
       <tr class="table-active"><th scope="row"><a href="/search/user?id=<c:out value="${userlist}"/>" style="color: black;">@ <c:out value="${userlist}"/></a></th></tr>
    	</c:forEach>
    	</tbody>
    	</table>
      	<div class="row">
        	<div class="col-sm-4">
        	<h4 style="margin-top: 20px;">웹사이트</h4>
        	<c:forEach items="${searchWebList}" var="list">
          	<div class="card border-primary mb-3" style="max-width: 800px;">
  				<div class="card-header"><c:out value="${list.url}"/></div>
  				<div class="card-body">
    			<p class="card-text"><c:out value="${list.memo}"/></p>
 				</div>
 			</div>
          </c:forEach>
        	</div> 
      </div>
</div>
<%@ include file ="./common/footer.jsp" %>