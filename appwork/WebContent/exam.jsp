<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="dbconnect.jsp" %>
<%@ page import="java.lang.String.*"%>  
  
<sql:query var="preQue" dataSource="${mydb}" scope="session">
    SELECT * FROM precticeset where Branch = "${param.selBranch}";
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 30%;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #11111140;
  overflow-x: hidden;
  padding-top: 20px;
  padding-left: 15px;
}

}
 
.main {
  margin-left: 30%; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  float:right;
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
</style>
</head>
<body>  
<div>
	<div>
		<form action="result.jsp" method="post">
		<div class="sidenav">
			<div>
        		<h2>Exam Details</h2>
        		<div>
         			The exam details will be shown here like how much time is left etc. 
       			 </div>
       			 <div style="padding-top:20px">
         			<h2>Timer</h2> 
       			</div>
      			 <div>
        			 <h2><p id="demo"> </p></h2>

					<script>
						// Set the date we're counting down to
						var countDownDate = (new Date().getTime())+(60*1000);

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
						document.getElementById("demo").innerHTML = /*days + "d " */+ hours + "h " + minutes + "m " + seconds + "s ";
    
  						// If the count down is over, write some text 
  						if (distance < 0) {
    						clearInterval(x);
    						document.getElementById("demo").innerHTML = window.location.replace("result.jsp");        
    					}
    				}, 1000);
						$(function () {
						    $("#submit").click(function () {
						    	var qty=($('#q${row.QNo}').val());
						    	var orderData = {
						    			"ans": $("#q${row.QNo}").val();
						    	}
						    } 
						  } // end function  
					</script>
				</div>
      		</div>
		</div>
		<div>
			<div class="main" style="padding-left:37%">

   			<core:forEach var="row" items="${preQue.rows}">
				<div>
   					<label>${row.QNo}</label>
					<label>${row.Que}</label>
					<div>
					
     					<label><span class="checkmark">
       					<input type="radio" name="q${row.QNo}" value="OP1">${row.OP1}</span></label>
       				</div>
					<div>
     					<label><span class="checkmark">
       					<input type="radio" name="q${row.QNo}"  value="OP2">${row.OP2}</span></label>
       				</div>
					<div>
     					<label><span class="checkmark">
       					<input type="radio" name="q${row.QNo}" value="OP3">${row.OP3}</span></label>
       				</div>
					<div>
     					<label><span class="checkmark">
       					<input type="radio" name="q${row.QNo}" value="OP4" >${row.OP4}</span></label>
       				</div>
  				</div>
  				
            	</core:forEach>
            	<div>
            		<input type="submit" value="View" id="submit">
				</div>
				
			</div>
		</div>
		</form>
	</div>
</div>
</body>
</html> 