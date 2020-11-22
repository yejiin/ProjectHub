<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProjectHub</title>
<link rel="stylesheet" href="/resources/css/login.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sandstone/bootstrap.min.css" integrity="sha384-zEpdAL7W11eTKeoBJK1g79kgl9qjP7g84KfK3AZsuonx38n8ad+f5ZgXtoSDxPOh" crossorigin="anonymous">
</head>
<body>
<%@ include file ="./common/header.jsp" %>
    <div class="form-wrap">
        <div class="form-html">
            <input id="tab-1" type="radio" name="tab" class="title" checked><label for="tab-1" class="tab">Login</label>
            <form action="login" method="post" class="form">
            	<p style="color:red">${message}</p>
                <div class="group">
                    <label for="id" class="label">Id</label>
                    <input type="text" id="id" class="input" name="id" required/>
                </div>
                <div class="group">
                    <label for="pass" class="label">Password</label>
                    <input type="password" id="pass" class="input" name="password" required>
                    </div>
                <div class="group">
                    <input type="submit" class="loginbutton" value="Login">
                </div>
                <div class="group">
                    <button class="signupbutton" onclick="location.href='/signup'">Sign up</button>
                </div>
            </form>
        </div>
    </div>
<%@ include file ="./common/footer.jsp" %>