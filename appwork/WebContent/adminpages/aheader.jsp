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
  <li class="menuitem"><a href="ahome.jsp">Home</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">User Control</a>
    <div class="dropdown-content">
      <a href="newrequest.jsp">New Request</a>
      <a href="blockuser.jsp">Block Account</a>
      <a href="registereduser.jsp">Registered Users</a>
      <a href="#" onclick="underconst()">Allot Professor</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Manage</a>
    <div class="dropdown-content">
        <a href="#" onclick="underconst()" class="">Top Rankers</a>
        <a href="#" onclick="underconst()" class="">Expert Tips and Suggestion</a>
        <a href="upltutorial.jsp" class="">Tutorials and Notes</a>
        <a href="module.jsp" class="">Modules</a>
    </div>
  </li>
  <li  class="menuitem" style="float:right"><a href="logout.jsp">Logout</a></li>
  <li  class="menuitem" style="float:right"><a href="#">${type1}</a></li>
  
   
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
