<%@ include file="header.jsp" %>
<%@ include file="loginform.jsp" %>
<%@ include file="selectexam.jsp" %>
<style>
.upbg{
	width:100%;
	background-color:aliceblue;
	margin: 5% 5% 5% 5%;
}
.ipcontainer{
    width: 90%;
    margin: 2%;
}
input [type=file]{
    margin: 5%;
}
input [type=submit]{
	margin: 5%;
}
</style>
<core:if test="${msgf1== null}">
	<core:set var="msgf1" value="Upload"/>
</core:if>
<core:if test="${msgf2== null}">
	<core:set var="msgf2" value="Upload"/>
</core:if>
<core:if test="${msgf3== null}">
	<core:set var="msgf3" value="Upload"/>
</core:if>
<core:if test="${msgf4== null}">
	<core:set var="msgf4" value="Upload"/>
</core:if>

<div class="upbg">
	<h2>${msg}</h2>
	<div class="ipcontainer">
		<form action = "./fileupload/upload1.jsp" method = "post" enctype = "multipart/form-data">
		<label>Upload file for address verification</label>
		<input type="file" name="doc1" value="Choose Files" accept="image/*" required />
		<input type="submit" value="${msgf1}">
		</form>
	</div>
	<div class="ipcontainer">
		<form action = "./fileupload/upload2.jsp" method = "post" enctype = "multipart/form-data">
		<label>Upload file for institute verification</label>
		<input type="file" name="doc1" value="Choose Files" accept="image/*" required />
		<input type="submit" value="${msgf2}">
		</form>
	</div>	
	<div class="ipcontainer">
		<form action = "./fileupload/upload3.jsp" method = "post" enctype = "multipart/form-data">
		<label>Upload passport size image</label>
		<input type="file" name="doc1" value="Choose Files" accept="image/*" required />
		<input type="submit" value="${msgf3}">
		</form>
	</div>	
	<div class="ipcontainer">
		<form action = "./fileupload/upload4.jsp" method = "post" enctype = "multipart/form-data">
		<label>Upload signature</label>
		<input type="file" name="doc1" value="Choose Files" accept="image/*" required />
		<input type="submit" value="${msgf4}">
		</form>
	</div>	
</div>

	<core:remove var="logfailed"/>
	
<%@ include file="footer.jsp" %>
</body>
</html>