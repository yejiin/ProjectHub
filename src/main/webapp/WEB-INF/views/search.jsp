<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
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
 <h2>검색 결과</h2>
<table class="table table-hover" style="user-select: auto;">
  <thead style="user-select: auto;">
    <tr style="user-select: auto;">
      <th scope="col" style="user-select: auto;">Type</th>
      <th scope="col" style="user-select: auto;">Column heading</th>
      <th scope="col" style="user-select: auto;">Column heading</th>
      <th scope="col" style="user-select: auto;">Column heading</th>
    </tr>
  </thead>
  <tbody style="user-select: auto;">
    <tr class="table-active" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Active</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Default</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-primary" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Primary</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-secondary" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Secondary</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-success" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Success</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-danger" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Danger</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-warning" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Warning</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-info" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Info</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-light" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Light</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
    <tr class="table-dark" style="user-select: auto;">
      <th scope="row" style="user-select: auto;">Dark</th>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
      <td style="user-select: auto;">Column content</td>
    </tr>
  </tbody>
</table>
 
</div>
</div>
</body>
</html>