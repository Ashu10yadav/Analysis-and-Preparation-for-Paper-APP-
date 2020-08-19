<%@ include file="../dbconnect.jsp" %>
 <%@ include file="aheader.jsp" %>
 <style>
 .contactbtr{
	float: right;
    background-color: limegreen;
    color: blue;
    padding: 1% 1% 1% 1%;
    margin: 0% 20% 0% 10%;
    cursor: pointer;
    width: 25%;
    font-weight: bolder;
    font-size: large;
    text-shadow: 3px 2px 5px red;
}
.info{
	color: blue;
    font-weight: bolder;
   
}
.lbinfo{
	margin: 0% 2% 0% 0%;
}
.lbdiv{
	padding: 1% 0% 0% 2%;
    font-size: large;
    text-align: justify;
}
 </style>
<core:set var = "ReqMail" scope = "session" value = "${param.newreq}"></core:set>

<sql:query var="list_mail" dataSource="${mydb}">
   					SELECT * FROM registration Where Email="${ReqMail}";
</sql:query>
<sql:query var="list_docs" dataSource="${mydb}">
   					SELECT * FROM document Where Email="${ReqMail}";
</sql:query>
<core:forEach var="row2" items="${list_docs.rows}">
<core:set var = "string5" value = "${row2.Doc1}"/>
<core:set var = "document1" value = "${fn:substringAfter(string5, 'uploaded/')}" />
<core:set var = "string7" value = "${row2.Doc2}"/>
<core:set var = "document2" value = "${fn:substringAfter(string7, 'uploaded/')}" />
</core:forEach>

<div class="bgmodule">
	<div class="mod" style="height:auto;">
		<div class="inside" style="height: 1000px">
		<div>
		<core:forEach var="row1" items="${list_mail.rows}">
				<div class="lbdiv">
					<label class="lbinfo">Student Name :<label class="info">${row1.FirstName} ${row1.MiddleName} ${row1.LastName}</label></label>
					<label class="lbinfo">Guardian's Name :<label class="info">${row1.Guardians}</label></label>
					<label class="lbinfo">Date of Birth :<label class="info">${row1.DOB}</label></label>
					<label class="lbinfo">Gender :<label class="info">${row1.Gender}</label></label>
				</div>
				<div class="lbdiv">
					<label class="lbinfo">Email :<label class="info">${row1.Email}</label></label>
					<label class="lbinfo">Contact Number :<label class="info">${row1.Contact}</label></label>
				</div>
				<div class="lbdiv">
					<label class="lbinfo">Address :<label class="info">${row1.ADD1} ${row1.ADD2} ${row1.District} ${row1.State} ${row1.Country} ${row1.Pincode}</label></label>
				</div>
				<div class="lbdiv">
					<label class="lbinfo">Roll Number/Enroll Number :<label class="info">${row1.InstID}</label></label>
					<label class="lbinfo">Name of the institute :<label class="info">${row1.InstName}</label></label>
				</div>
				<div class="lbdiv">
					<label class="lbinfo">Institute Joining Date :<label class="info">${row1.DOJ}</label></label>
					<label class="lbinfo">Course and Branch :<label class="info">${row1.Module} - ${row1.Branch} (${row1.Sem} Semester)</label></label>
				</div>
				</core:forEach>
			</div>
			<div>
				<select class="exselect" id="pdfSelector">
					<option value="logo.png">Select Document</option>
  			  		<option value="${document1}">Address Verification</option>
  			  		<option value="${document2}">institute Verification</option>
				</select>
				
			
			
   				<iframe src="" style="margin: 0% 0% 0% 1%; width:100%; height:500px; padding: 0% 0% 0% 2%;" id="tutorialfrm">
    			</iframe>
			</div>
			<form action="allowreq.jsp" method="post" class="form1">
				<div style="margin: 2% 10%;;float:left;">
					<input type="radio" name="permission" value="Allowed" /><label>Allow</label> 
    				<input type="radio" name="permission" value="Denyed" /><label>Deny</label>
				</div>
				<div>
					<input type="submit" class="contactbtr" value="Allow/Deny Request" />
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#pdfSelector').change(function(){
			$('#tutorialfrm').attr('src','../image/uploaded/'+$('#pdfSelector').val())
		})
	});
</script>


 <%@ include file="../footer.jsp" %>