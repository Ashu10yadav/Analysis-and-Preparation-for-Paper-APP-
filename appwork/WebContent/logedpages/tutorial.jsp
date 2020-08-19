 <%@ include file="../dbconnect.jsp" %>
 <%@ include file="lheader.jsp" %>
<%@ include file="lselectexam.jsp" %>
<%@ include file="selectprectice.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>

<h2>Welcome to the tutorials of APP</h2>
<select class="exselect" id="pdfSelector">
				<option value="#">Select One</option>
  			  	<option value="AAA.pdf">Tutorial 1</option>
  			  	<option value="BBB.pdf">Tutorial 2</option>
</select>
    <iframe src="" width="100%" height="500px" id="tutorialfrm">
    </iframe>
    
<script>
	$(document).ready(function(){
		$('#pdfSelector').change(function(){
			$('#tutorialfrm').attr('src','../tutorials/'+$('#pdfSelector').val())
		})
	});
</script>
    
<%@ include file="../footer.jsp" %>