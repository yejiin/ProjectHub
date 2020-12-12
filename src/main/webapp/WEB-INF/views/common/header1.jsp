<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="header" style="height: 65px;">
  	<a class="navbar-brand" href="/project">ProjectHub</a>
	<a href='/rank' style="text-decoration: none; margin-left: 20px; margin-right: 15px; color: white;">Rank</a>
	<form action="/search" method="post" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" name="keyword">
	  <button id="search" class="btn btn-secondary my-2 my-sm-0" type="submit"">Search</button>
    </form>
    <div class="navbar-brand" style="margin-left: 700px;">
    	<div>${loginId} 님 환영합니다. | <a class="navbar-brand" href="/logout">로그아웃</a></div>
    </div>
</nav>
</header>