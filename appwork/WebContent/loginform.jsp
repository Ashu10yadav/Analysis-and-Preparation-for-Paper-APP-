<div class="transp" id="transp">
<div class="loginWindow" id="myForm">
<%@ include file="../dbconnect.jsp" %>

	<h2>${msg1}</h2>
	<core:remove var="msg"/>
	
	<div>
		<form action = 'loginverify.jsp' method='post' class="form-container">
		<select name="Acc" class="selbox">
			<option value="Student">Student</option>
			<option value="Professor">Professor</option>
			<option value="Administrator">Administrator</option>
		</select>
		<input type= 'text' name='username' placeholder= 'Enter your login Id/Email'>
		<input type= 'password' name='password' placeholder= 'Enter your password'>
		 <button type="submit" class="btn">Login</button>
  		 <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  		 <label for='form-switch'><a href="#" style="color:lightcyan;font-weight: bold;">Forget Password? Click here!!</a></label><br><br>
		<label for='form-switch'><a href="registration.jsp" style="color:floralwhite;font-weight: bold;">New Registration? Click here!!</a></label>
		</form>
	</div>
</div>
</div>

<core:if test="${logfailed==1}">
<script>
	openForm();
</script>
<core:remove var="logfailed"/>
</core:if>