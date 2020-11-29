<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="user-select: auto;">
  <a class="navbar-brand" href="/" style="user-select: auto;">ProjectHub</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation" style="user-select: auto;">
    <span class="navbar-toggler-icon" style="user-select: auto;"></span>
  </button>
	
	<form class="form-inline my-2 my-lg-0" style="user-select: auto;">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" style="user-select: auto;">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit" style="user-select: auto;">Search</button>
    </form>
    
     <p class="navbar-brand"  style="user-select: auto; margin-left: 900px;">${loginId}님 환영합니다.</p>
  
</nav>