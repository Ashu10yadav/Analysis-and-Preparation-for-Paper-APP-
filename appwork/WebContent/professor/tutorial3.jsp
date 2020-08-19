<%@ include file="../dbconnect.jsp" %>
<%@ include file="pheader.jsp" %>
<core:set var="selectedsubjectname11" value="${param.selectedSu1}" scope="session"/>
<core:set var="tutorialnotes" value="${param.blah}" scope="session"/>

	<form action="tutorialfile.jsp" method = "post" enctype = "multipart/form-data">
	 <div>
    <label>Select document for upload</label>
		<input type="file" name="tupload" value="Choose Files" required />
    </div>
	
	<div class="row">
       <div style="margin-left: 35%;width: 100%">
  					<input type="submit" class="contactbt" value="SUBMIT" />
   </div>
	</div>
	
	</form>

<%@ include file="../footer.jsp" %>