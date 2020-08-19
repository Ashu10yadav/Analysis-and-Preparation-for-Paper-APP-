<%@ include file="lheader.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="logout.jsp"/>
</core:if>
<form action="uploadtopsuggest.jsp" method="post">
	<div>
		<label>Topper's Email-id </label>
		<label name="mails">${type1}</label>			
	</div>
	<div>
		<label>Suggestion</label>
	</div>
	<div>
		<input type="text" name="suggest" style="text-align: initial; height:30px; width:100%;  padding-left: 0px;"/>
	</div>
	
				<div class="contactbtn">
    				<input type="submit" class="contactbt" value="SUGGEST" />
    				</div>
</form>

<%@ include file="../footer.jsp" %>
