<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to APP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/style.css?v=2"/>
<link rel="stylesheet" href="../css/aboutfeedback.css?v=2"/>
<link rel="stylesheet" href="../css/admin.css?v=4"/>
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
  <li class="menuitem"><a href="aprof.jsp">Home</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Record</a>
    <div class="dropdown-content">
      <a href="notification.jsp" >Notice</a>
      <a href="#" onclick="underconst()">Conduct Exam</a>
      <a href="pque.jsp">Insert Question</a>
      <a href="tutorial1.jsp">Add Tutorial</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Manage</a>
    <div class="dropdown-content">
        <a href="#" onclick="underconst()" class="">My Students</a>
        <a href="#" onclick="underconst()" class="">My Details</a>
        <a href="#" onclick="underconst()" class="">My Interest</a>
        <a href="#" onclick="underconst()" class="">Control Exam</a>
    </div>
  </li>
  <li  class="menuitem" style="float:right"><a href="../logedpages/logout.jsp">Logout</a></li>
  <li  var ="email"class="menuitem" style="float:right"><a href="#">${type1}</a></li>
  
   
</ul>
<script>
function openForm() {
  document.getElementById("transp").style.display = "block";
}
function closeForm() {
  document.getElementById("transp").style.display = "none";
}
function underconst() {
	  alert("Sorry!! This page is in under construction");
	}
</script>
