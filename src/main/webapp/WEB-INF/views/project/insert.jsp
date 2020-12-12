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
 	margin-top: 40px;
	width: 100%;
} 

#form{
	width: 500px;
	margin: auto;
}
</style>
</head>
<body>
<%@ include file ="../common/header1.jsp" %>
 <div class="main">
<form action="insert" method="post" id="form">
  <fieldset>
    <legend>PROJECT</legend>
    <input type="hidden" name="userId" value="${loginId }"> 
    <div class="form-group">
      <label for="InputTitle">Project Name</label>
      <input type="text" class="form-control" name="name" placeholder="Project">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Start Date</label>
      <input type="date" class="form-control" name="startdate">
    </div>
    <div class="form-group">
      <label for="exampleTextarea">Describe</label>
      <textarea class="form-control" name="des" rows="3"></textarea>
    </div>
   <fieldset class="form-group">
      <label for="InputTitle">공개여부</label>
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1">
          	공개	
        </label>
      </div>
       <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">
          	비공개
          </label>
      </div> 
    </fieldset>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>
</div>
<%@ include file ="../common/footer.jsp" %>