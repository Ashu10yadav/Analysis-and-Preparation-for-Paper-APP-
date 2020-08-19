<%@ include file="../dbconnect.jsp" %>
<%@ include file="pheader.jsp" %>
<form action = "uploaddoc.jsp" method = "post" enctype = "multipart/form-data">
		<label>Select document for upload</label>
		<input type="file" name="docupload" value="Choose Files" required />
		<input type="submit" value="Next">
</form>
<%@ include file="../footer.jsp" %>