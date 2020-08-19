<%@ include file="lheader.jsp" %>
<%@ include file="lselectexam.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>
<style>
.lbdiv{
	padding: 1% 0% 2% 0%;
	font-size: x-large;
}
input[type=text],input[type=password]{
	width: 100%;
    padding: 10px;
    margin: 5px 0px 10px 0px;
    display: inline-block;
    border: none;
    background: white;
    box-sizing: border-box;
    border: solid #ccc;
    text-align: center;
    font-size: larger;
}
.contactbt1{
	float: left;
    background-color: limegreen;
    color: blue;
    padding: 1% 1% 1% 1%;
    margin: 1% 37%;
    cursor: pointer;
    width: 25%;
    font-weight: bolder;
    font-size: large;
    text-shadow: 3px 2px 5px red;
}
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}
#message p {
  padding: 10px 35px;
  font-size: 18px;
}
.valid {
  color: green;
}
.valid:before {
  position: relative;
  left: -35px;
  content: "✔";
}
.invalid {
  color: red;
}
.invalid:before {
  position: relative;
  left: -35px;
  content: "✖";
}

</style>
    				


<div id="bgregform">
	<div id="regform">
		<div class="bck">
			<div class="lbdiv">
				<form action="chgpassword.jsp">
					<div>
						<input type="password" id="psw" name="psw"
						 pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						 title="Must contain at least one number and one uppercase and lowercase letter, 
						 and at least 8 or more characters"
						 placeholder="Enter your new password" scope="session" required>
					</div>
					<div>
						<input type="checkbox" onclick="myFunction()">Show Password
					</div>
					<div>
						<input type="text" id="retypepass" name="retypepass" placeholder="Re-enter your password" required>
					</div>
					
					<div id="message">
  						<h3>Password must contain the following:</h3>
  						<p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  						<p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  						<p id="number" class="invalid">A <b>number</b></p>
  						<p id="length" class="invalid">Minimum <b>8 characters</b></p>
					</div>
					<div>
						<input type="submit" class="contactbt1" value="Change Password" onclick="return matchPass()">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");
var myInput2 = document.getElementById("retypepass");

//show-hide password
function myFunction() {
	  var x = document.getElementById("psw");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}

//match password
function matchPass(){
	var password = document.getElementById("psw").value;
    var confirmPassword = document.getElementById("retypepass").value;
    if (password != confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}


// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>


<%@ include file="../footer.jsp" %>