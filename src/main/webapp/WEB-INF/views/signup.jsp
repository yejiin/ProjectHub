<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="/resources/css/signup.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#cancel").on("click", function(){
			location.href = "/";
		})
		
		$("#submit").on("click", function(){
			if($("#id").val()==""){
				alert("아이디를 입력해주세요.");
				$("#id").focus();
				return false;
			}
			if($("#pass").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#pass").focus();
				return false;
			}
			if($("#username").val()==""){
				alert("이름을 입력해주세요.");
				$("#username").focus();
				return false;
			}
			if($("#pass").val() != $("#pass2").val()){
				alert("비밀번호가 일치하지 않습니다.");
				$("#").focus();
				return false;
			}
			
			var idChkVal = $("#idChk").val();
			if(idChkVal=="N"){
				alert("중복확인 버튼을 눌러주세요.");
			}else if(idChkVal == "Y"){
				$("#signupForm").submit();
			}
		});
		
	})
	
	function fn_idChk(){
	$.ajax({
			url : "/idChk",
			type : "post",
			dataType : "json",
			data : {"id" : $("#id").val()},
			success : function(result){
				if(result == 1){
					alert("중복된 아이디입니다.");
				} else if(result == 0){
					$("#idChk").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		});
	}
</script>
</head>
<body>
<%@ include file ="./common/header.jsp" %>
<main>
   <div class="form-wrap">
        <div class="form-html">
            <input id="tab-1" type="radio" name="tab" class="title" checked><label for="tab-1" class="tab">Sign up</label>
            <form action="signup" method="post" class="form" id="signupForm">
                <div class="group">
                    <label for="pass" class="label">Id</label>  
                    <input id="id" type="text" class="input" name="id">
                    <button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>                    
                </div>
                <div class="group">
                    <label for="pass" class="label">Password</label>
                    <input id="pass" type="password" class="input" data-type="password" name="password">
                </div>
                <div class="group">
                    <label for="pass" class="label">Repeat Password</label>
                    <input id="pass2" type="password" class="input" data-type="password">
                </div>
                <div class="group">
                    <label for="user" class="label">Username</label>
                    <input id="username" type="text" class="input" name="username">
                </div>
            </form>
                <form class="form">
                <div class="group">
                    <button type="button" class="loginbutton" id="submit">Sign Up</button>
                </div>
                <div class="group">
                    <button type="button" class="signupbutton" id="cancel">cancel</button>
                </div>
            </form>
        </div>
    </div>
   </main>
<%@ include file ="./common/footer.jsp" %>