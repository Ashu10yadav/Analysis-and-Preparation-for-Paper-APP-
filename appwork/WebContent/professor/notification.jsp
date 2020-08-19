<%@ include file="../dbconnect.jsp" %>
<%@ include file="pheader.jsp" %>
<div class="bgmodule">
	<div class="mod" style="height: -webkit-fill-available;">
	  <h2>${msgf1}</h2>
		<core:remove var="msg"/>
			<div class="inside" style="height: 200px">
			  <form action="uploadnotice.jsp" method = "post">
				<div class"col-25">
					<label>Posted By:</label>
				</div>
				<div>
					<label>${type1}</label>
				</div>
				<div>
					<label>Posted Date</label>
				</div>
				
				
				<div><input type="checkbox" id="checkme" onclick="myFunction()"/> <label>If any attachment is to be done then checked it out</label></div>
				<div><h2>${msgg}</h2></div>
				<div>
					<input type="button" onclick="window.location.href = 'file.jsp';" name="sendNewSms" class="contactbt" id="sendNewSms" value="Click on checkbox" disabled/>
				</div>
				<div>
					<label>Notification</label>
				</div>
				<div>
					<input type="text" name="titles" style="text-align: initial; height:30px; width:100%;  padding-left: 0px;"/>
				</div>
				
				<div class="contactbtn">
    				<input type="submit" class="contactbt" value="Go Live" />
    				</div>
			</form>
		</div>
	</div>
</div>
  

<script>
var checker = document.getElementById('checkme');
var sendbtn = document.getElementById('sendNewSms');
checker.onchange = function() {
  sendbtn.disabled = !this.checked;
};
function myFunction() {
	var checker = document.getElementById('checkme');
	 var x = document.getElementById('sendNewSms');
	  if (checker.checked) {
		  x.disabled== false;
		  x.value="Ready for upload";
	  } else {
		  x.disabled == true;
		  x.value="Click on checkbox";
	  }
	}

</script>


<%@ include file="../footer.jsp" %>