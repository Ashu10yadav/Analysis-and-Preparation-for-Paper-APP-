<%@ include file="dbconnect.jsp" %>
<div class="transa" id="transa">
<sql:query var="list_module" dataSource="${mydb}">
    SELECT * FROM module;   
</sql:query>

<div class="examWindow" id="myExam">
	<div>
		<form action = 'exam.jsp' method='post' class="form-container">
		<select class="exselect">
  			  	<option value="Bachlor of Engineering">Bachlor of Engineering</option>
   			</select>
			<select class="exselect" name="selBranch">
  			  	<option value="Computer Science and Engineering">CSE</option>
  			  	<option value="IT">IT</option>
   			</select>
			<button type="submit" class="exbtn">Appear</button>
  		 	<button type="button" class="exbtncancel" onclick="closePre()">Close</button>
  		 </form>
	</div>
</div>
</div>