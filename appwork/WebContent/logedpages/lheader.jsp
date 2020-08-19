<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to APP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/style.css?v=2"/>
<link rel="stylesheet" href="../css/aboutfeedback.css?v=2"/>
<script src="../js/jquery-3.4.1.min.js"></script>
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
  <li class="menuitem"><a href="home.jsp">Home</a></li>
  <li class="menuitem"><a href="#" onclick="openPre()">Prectice Sets</a></li>
    <li class="menuitem"><a href="tutorial.jsp"	>Tutorials</a></li>
    <li class="menuitem"><a href="#">Top Rankers</a></li>
   <li class="menuitem"><a href="labout.jsp">About</a></li>
   <li class="menuitem"><a href="feedback.jsp">Contact Us</a></li>
    <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">My Account</a>
    <div class="dropdown-content">
        <button class="open-button" onclick="openForm()">Appear in Exam</button>
        <a href="#" onclick="underconst()" class="">My Results</a>
        <a href="mydetails.jsp">Edit Details</a>
        <a href="#" onclick="underconst()" class="">Experts Tips</a>
        <a href="topsuggest.jsp" class="">Topper's Suggestion</a>
    </div>
  </li>
  <li class="menuitem"  style="float:right"><a href="logout.jsp">Logout</a></li>
  <li class="menuitem"  style="float:right"><a href="#">${type1}</a></li>
 </ul>
<script>
function openForm() {
  document.getElementById("transp").style.display = "block";
}
function closeForm() {
  document.getElementById("transp").style.display = "none";
}
function openPre() {
	  document.getElementById("transa").style.display = "block";
	}
	function closePre() {
	  document.getElementById("transa").style.display = "none";
	}
function underconst() {
	  alert("Sorry!! This page is in under construction");
	}
</script>
