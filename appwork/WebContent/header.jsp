<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to APP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/style.css?v=2"/>
<link rel="stylesheet" href="./css/aboutfeedback.css?v=2"/>
</head>
<body>
<div class="header">
	<h1>ANALYSIS AND PREPARATION FOR PAPER</h1>
	</div>
    <div class = "main"> 
    <marquee class="marq" > 
        <div class="marqtxt">WITH GREAT POWER COMES GREAT RESPONSIBILITIES</div> 
    </marquee> 
    </div> 	

<ul>
  <li class="menuitem"><a href="index.jsp">Home</a></li>
  <li class="menuitem"><a href="#" onclick="openPre()">Practice Set</a>  </li>
  <li class="menuitem"><a href="" onclick="prompt()">Tutorials</a></li>
  <li class="menuitem"><a href="topers.jsp">Top Rankers</a></li>
  <li class="menuitem"><a href="about.jsp">About</a></li>
  <li class="menuitem"><a href="" onclick="prompt()">Contact Us</a></li>
    <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Login</a>
    <div class="dropdown-content">
      <button class="open-button" onclick="openForm()">Login</button>
      <a href="registration.jsp" class="">Register Your Self</a>
      </div>
  </li>
   
</ul>




<script>
function openForm() {
  document.getElementById("transp").style.display = "block";
}
function closeForm() {
  document.getElementById("transp").style.display = "none";
}
function prompt() {
	  alert("You have to register/login to access this features");
	}
function underconst() {
	  alert("Sorry!! This page is in under construction");
	}
function openPre() {
	  document.getElementById("transa").style.display = "block";
	}
	function closePre() {
	  document.getElementById("transa").style.display = "none";
	}
</script>
