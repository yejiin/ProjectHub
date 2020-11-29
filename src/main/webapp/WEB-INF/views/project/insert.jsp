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
 .main{
	margin: 40px 500px 25px;
} 
</style>
</head>
<body>
<%@ include file ="../common/header1.jsp" %>
 <div class="main">
<form action="insert" method="post" style="user-select: auto;">
  <fieldset style="user-select: auto;">
    <legend style="user-select: auto;">PROJECT</legend>
    <input type="hidden" name="userId" value="${loginId }"> 
    <div class="form-group" style="user-select: auto;">
      <label for="InputTitle" style="user-select: auto;">Project Name</label>
      <input type="text" class="form-control" name="name" placeholder="Project" style="user-select: auto;">
    </div>
    <div class="form-group" style="user-select: auto;">
      <label for="exampleInputPassword1" style="user-select: auto;">Start Date</label>
      <input type="date" class="form-control" name="startdate" style="user-select: auto;">
    </div>
    <div class="form-group" style="user-select: auto;">
      <label for="exampleTextarea" style="user-select: auto;">Describe</label>
      <textarea class="form-control" name="des" rows="3" style="user-select: auto;"></textarea>
    </div>
   <fieldset class="form-group" style="user-select: auto;">
      <legend style="user-select: auto;">Kinds</legend>
      <div class="form-check" style="user-select: auto;">
        <label class="form-check-label" style="user-select: auto;">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1" checked="" style="user-select: auto;">
          	웹프로젝트	
        </label>
      </div>
       <div class="form-check" style="user-select: auto;">
        <label class="form-check-label" style="user-select: auto;">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2" style="user-select: auto;">
          	앱프로젝트
          </label>
      </div>
      <div class="form-check disabled" style="user-select: auto;">
        <label class="form-check-label" style="user-select: auto;">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios3" value="option3" style="user-select: auto;">
          	기타
        </label>
      </div> 
    </fieldset>
    <button type="submit" class="btn btn-primary" style="user-select: auto;">Submit</button>
  </fieldset>
</form>
</div>
<%@ include file ="../common/footer.jsp" %>