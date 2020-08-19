<%@ include file="lheader.jsp" %>
<%@ include file="lselectexam.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>

<style>
.info{
	color: blue;
    font-weight: bolder;
   
}
.lbinfo{
	margin: 5% 5% 0% 5%;
}
.lbdiv{
	padding: 1% 0% 2% 0%;
	font-size: x-large;
}
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 23%;
  padding: 0% 5% 0% 0%;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: 120px;
}

div.desc {
  padding: 15px;
  text-align: center;
}
.contactbtl{
	float: left;
    background-color: limegreen;
    color: blue;
    padding: 1% 1% 1% 1%;
    margin: 1% 10%;
    cursor: pointer;
    width: 25%;
    font-weight: bolder;
    font-size: large;
    text-shadow: 3px 2px 5px red;
}
.contactbtr{
	float: right;
    background-color: limegreen;
    color: blue;
    padding: 1% 1% 1% 1%;
    margin: 1% 10%;
    cursor: pointer;
    width: 25%;
    font-weight: bolder;
    font-size: large;
    text-shadow: 3px 2px 5px red;
}
</style>

<sql:query var="std_img" dataSource="${mydb}">
    SELECT * FROM document where Email = "${type1}";
</sql:query>
<core:forEach var="row1" items="${std_img.rows}">
<core:set var = "string1" value = "${row1.Image}"/>
<core:set var = "image" value = "${fn:substringAfter(string1, 'WebContent')}" />
<core:set var = "string3" value = "${row1.Signature}"/>
<core:set var = "signature" value = "${fn:substringAfter(string3, 'WebContent')}" />
<core:set var = "string5" value = "${row1.Doc1}"/>
<core:set var = "document1" value = "${fn:substringAfter(string5, 'WebContent')}" />
<core:set var = "string7" value = "${row1.Doc2}"/>
<core:set var = "document2" value = "${fn:substringAfter(string7, 'WebContent')}" />
</core:forEach>

<sql:query var="std_details" dataSource="${mydb}">
    SELECT * FROM registration where Email = "${type1}";
</sql:query>
<core:forEach var="row1" items="${std_details.rows}">
<div id="bgregform">
	<div id="regform">
		<div class="bck">
			<div class="lbdiv">
				<label class="lbinfo">Student Name :<label class="info">${row1.FirstName} ${row1.MiddleName} ${row1.LastName}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Guardian's Name :<label class="info">${row1.Guardians}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Date of Birth :<label class="info">${row1.DOB}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Gender :<label class="info">${row1.Gender}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Email :<label class="info">${row1.Email}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Contact Number :<label class="info">${row1.Contact}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Address :<label class="info">${row1.ADD1} ${row1.ADD2} ${row1.District} ${row1.State} ${row1.Country} ${row1.Pincode}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Roll Number/Enroll Number :<label class="info">${row1.InstID}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Name of the institute :<label class="info">${row1.InstName}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Institute Joining Date :<label class="info">${row1.DOJ}</label></label>
			</div>
			<div class="lbdiv">
				<label class="lbinfo">Course and Branch :<label class="info">${row1.Module} - ${row1.Branch} (${row1.Sem} Semester)</label></label>
			</div>
			<div style="width:100%" class="lbdiv">
				<div class="gallery">
  					<a target="_blank" href="..${image}">
    					<img src="..${image}" alt="Image" width="600" height="400">
  					</a>
  					<div class="desc">Image</div>
				</div>

				<div class="gallery">
  					<a target="_blank" href="..${signature}">
    					<img src="..${signature}" alt="Signature" width="600" height="400">
  					</a>
  						<div class="desc">Signature</div>
					</div>

				<div class="gallery">
  					<a target="_blank" href="..${document1}">
    					<img src="..${document1}" alt="Document 1" width="600" height="400">
  					</a>
  						<div class="desc">Document 1</div>
				</div>

				<div class="gallery">
  					<a target="_blank" href="..${document2}">
    					<img src="..${document2}" alt="Document 2" width="600" height="400">
  					</a>
  					<div class="desc">Document 2</div>
				</div>
			</div>
			<div class="lbdiv">
				<form>
        			<input type="button" class="contactbtl" onclick="window.location.href = 'lregistration.jsp';" value="Edit Details"/>
      				<input type="button" class="contactbtr" onclick="window.location.href = 'changepassword.jsp';" value="Change Password"/>
      			</form>
      		</div>
		</div>
	</div>
</div>
</core:forEach>
<core:if test="${logfailed==1}">
<core:remove var="logfailed"/>
</core:if>
<%@ include file="../footer.jsp" %>