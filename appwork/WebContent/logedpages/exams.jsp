<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/style.css"/>
<title>Insert title here</title>
<style>
.sidenav {
  height: 100%;
  width: 450px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: darkgrey;
  overflow-x: hidden;
  padding-top: 20px;
  color: black;
}
.main1 {
  margin-left: 450px; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
}
.button5 {background-color: #555555;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;;
 } 
 div{
 font-size: large;
 }
 .container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  }
  .container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

.container input:checked ~ .checkmark:after {
  display: block;
}

.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
#side{
background-color:#f1f1f1;
}
p {
  text-align: inherit;
  font-size: 40px;
  margin-top: 0px;
}
</style>
</head>
<body>
<div class="sidenav">
  <div>
        <h2>Exam Details</h2>
        <div>
         The exam details will be shown here like how much time is left etc. 
        </div>
      </div>
      <div style="padding-top:20px">
         <h2>Timer</h2>
         </div>
         <div>
         <p id="demo"></p>

<script>
// Set the date we're counting down to
var countDownDate = new Date("jul 19, 2019 12:47:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = /*days + "d " */+ hours + "h "
  + minutes + "m " + seconds + "s ";
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>
         </div>
       <div>
        <h2>Questions</h2>
         <div>
          Number of attempted and attempted/not attempted questions will be shown here!
         </div>
       </div>
        <div style="padding-top: 40px;">
        <button class="button5">Submit</button>
        <button class="button5">Cancel</button>
        </div>
</div>

<div class="main1">
<div>
  <label>
 Q1) Explain the main purpose of an operating system?
 </label>
  </div>
  <div>
  <textarea rows="30" cols="100">
  </textarea>
  </div>
  <div>
  <label>
  Q2) What is demand paging?
  </label>
  </div>
  <div>
  <textarea rows="30" cols="100">
  </textarea>
  </div>
   <div>
    <label>
   Q3)The expenditure on the project __________ as follows: equipment Rs.20 lakhs, salaries Rs.12 lakhs, and contingency Rs.3 lakhs.</label>
    </div>
     <label class="container">Break Down
       <span class="checkmark">
       <input type="radio" name="radio1">
       </span>
     </label>
     <label class="container">Break
       <span class="checkmark">
       <input type="radio" name="radio1">
       </span>
     </label>
     <label class="container">Breaks Down
       <span class="checkmark">
       <input type="radio" name="radio1">
       </span>
     </label>
     <label class="container">Breaks
       <span class="checkmark">
       <input type="radio" name="radio1">
      </span>
     </label>
    <div>
     <label>
     Q4)The search engines business model ________ around the fulcrum of trust.</label>
    </div>
     <label class="container">Revolves
       <span class="checkmark">
       <input type="radio" name="radio2">
       </span>
     </label>
     <label class="container">Plays
       <span class="checkmark">
       <input type="radio" name="radio2">
      </span>
     </label>
     <label class="container">Sinks
       <span class="checkmark">
       <input type="radio" name="radio2">
      </span>
     </label>
     <label class="container">Bursts
       <span class="checkmark">
       <input type="radio" name="radio2">
     </span>
     </label>
    </div>
</div>
</body>
</html>