<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>

#header{
	z-index: 3;
	position: fixed;
  	top: 0;
  	left: 0;
  	right: 0;
}

#sidebar-wrapper{
	background-color: white;
	z-index: 2;
    position: fixed;
    height: 100%;
    width: 250px;
    margin-left: -250px;
	border-right: 1px solid gray;

}

.sidebar-nav {
	position: fixed;
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
    width:100%;
}
  
#page-content-wrapper {
	padding-top: 20px;
    padding-left: 200px;
    width: 100%;
}

#name{
	margin-top: 50px;
}

.alert{
	width: 800px;
}
.card{
	z-index: 1;
	width: 800px;
	vertical-align: middle;
}


#close{
	width: 5px;
	border: 0;
	outline: 0;
}

#modify{
	margin-right: 20px;
	width: 10px;
	border: 0;
	outline: 0;
}

#modify1{
	margin-right: 10px;
	width: 10px;
	border: 0;
}

#modify2{
	margin-right: 10px;
	width: 10px;
	border: 0;
}

#add{
	margin-left: 5px;
}

#file{
	width: 800px;
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
<script type="text/javascript">

	$(document).ready(function(){
		$(".custom-file-input").on("change", function(){
			var fileName = $(this).val().split("\\").pop();
			$(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});

	});
	
	function upweb(no){
		var chk = confirm("수정하시겠습니까?");
		if(chk){
			location.href="/project/detail/updatewebView/<c:out value="${projectNo}"/>/" + no;
		}
	}
	function upmemo(no){
		var chk = confirm("수정하시겠습니까?");
		if(chk){
			location.href="/project/detail/updatememoView/<c:out value="${projectNo}"/>/" + no;
		}
	}
	
	function del(no){
		var chk = confirm("삭제하시겠습니까?");
		if (chk){
			location.href="delete/<c:out value="${projectNo}"/>/" + no;
		}
	}
	
	function delfile(no){
		var chk = confirm("삭제하시겠습니까?");
		if (chk){
			location.href="deletefile/<c:out value="${projectNo}"/>/" + no;
		}
	}


</script>
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
  	<h1 id="name"><c:out value="${project.name}"/></h1>
  	<p><c:out value="${project.des}"/></p>
  <div id="website" >
  	<h3 style="margin-top: 50px;">웹사이트
  	<button type="button" class="btn btn-outline-secondary" id="add" onclick="location.href='/project/detail/insertwebView/<c:out value="${projectNo}"/>'">&plus;</button>
  	</h3>
  	<c:forEach items="${websiteList}" var = "list">
	<div class="card border-secondary mb-3" style="user-select: auto;">
  		<div class="card-header" style="user-select: auto;">
  			<button type="button" class="close" data-dismiss="alert" style="user-select: auto;" onclick="del(${list.no})">&times;</button>
  			<button type="button" class="close" id="modify1" data-dismiss="alert" style="user-select: auto;" onclick="upweb(${list.no})">&VerticalSeparator;</button>
  			<h4><a href="#" class="alert-link" style="user-select: auto;"><c:out value="${list.url}"/></a></h4>
  		</div>
  		<div class="card-body" style="user-select: auto;">
    		<p class="card-text" style="user-select: auto;"><c:out value="${list.memo}"/></p>
  		</div>
	</div>
	</c:forEach>
  </div>
  
  <div id="memo">
  	<h3 style="margin-top: 50px;">메모
  	<button type="button" class="btn btn-outline-secondary" id="add" onclick="location.href='/project/detail/insertmemoView/<c:out value="${projectNo}"/>'">&plus;</button>
  	</h3>
  	<c:forEach items="${memoList}" var = "memolist">
  	<div class="alert alert-dismissible alert-light" style="user-select: auto;">
  	<button type="button" class="close" id="modify" data-dismiss="alert" style="user-select: auto;" onclick="upmemo(${memolist.no})">&VerticalSeparator;</button>
  	<button type="button" class="close" id="close" onclick="del(${memolist.no})">&times;</button>
  	<p class="mb-0" style="user-select: auto;"><c:out value="${memolist.memo}"/></p>
	</div>
	</c:forEach>
  </div>
  
  <div class="form-group" id="file" style="user-select: auto;">
    <h3 style="margin-top: 50px;">파일</h3>
       <form action="uploadfile/<c:out value="${projectNo}"/>" enctype="multipart/form-data" method="post" class="input-group mb-3" style="user-select: auto;">      <div class="custom-file" style="user-select: auto;">
        <input type="file" class="custom-file-input" id="customFile" name="files" style="user-select: auto;">
        <label class="custom-file-label" for="customFile" style="user-select: auto;">Choose file</label>
      </div>
      <div class="input-group-append" style="user-select: auto;">
        <input type="submit" class="input-group-text" style="user-select: auto;" value="Upload">
      </div>
    </form>
  </div>
  <table class="table" id="file">
  <c:forEach items="${fileList}" var = "filelist">
    <tr style="user-select: auto;">
      <th scope="row" style="user-select: auto;">파일</th>
      <td style="user-select: auto;"><a href='/project/detail/fileDownload?fileOriName=${filelist.oriname}&fileName=${filelist.name}&path=${filelist.path}'>${filelist.oriname}</a>
  		<button type="button" class="close" onclick="delfile(${filelist.no})">&times;</button>
  	  </td> 
    </tr>
    </c:forEach>
</table>
 </div>
</div>
 
<%@ include file ="../common/footer.jsp" %>