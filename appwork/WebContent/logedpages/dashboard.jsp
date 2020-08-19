<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>
<sql:query var="std_details" dataSource="${mydb}">
    SELECT * FROM registration where Email = "${type1}";
</sql:query>
<sql:query var="std_img" dataSource="${mydb}">
    SELECT * FROM document where Email = "${type1}";
</sql:query>
<core:forEach var="row1" items="${std_img.rows}">
<core:set var = "string1" value = "${row1.Image}"/>
<core:set var = "string2" value = "${fn:substringAfter(string1, 'WebContent')}" />
<core:set var = "string3" value = "${row1.Signature}"/>
<core:set var = "string4" value = "${fn:substringAfter(string3, 'WebContent')}" />
</core:forEach>


<div class="dbmain">
<div class="row">
  <div class="column middle">
    <h2>Welcome to Student Dash-board of Analysis and Preparation for Paper</h2>
    <table class="dbtable">
    	<tr>
    		
    		<td width="20%"><img src="..${string2}" class="dbimg"></td>
    		<td width="80%" rowspan="2" style="text-align: center;">
    			<core:forEach var="row" items="${std_details.rows}">
    				<h2>${row.FirstName} ${row.MiddleName} ${row.LastName}</h2>
				</core:forEach>
    		</td>
    	</tr>
    	<tr>
    		<td width="20%"><img src="..${string4}" class="dbimg"></td>
    	</tr>
    	<tr>
    		<td colspan="2" style="text-align: center;">
    			<core:forEach var="row" items="${std_details.rows}">
					<div><label>Parant/Guardian/Husband Name : ${row.Guardians}</label></div>
					<div><label>Institute Details : ${row.InstID} ${row.InstName} ${row.Branch} ${row.Sem}</label></div>
				</core:forEach>
    		</td>
    	</tr>
    </table>
  </div>
  <div class="column side">
    <h2>Current Affairs</h2>
    <marquee direction="up" behavior="scroll" scrolldelay="150ms" height="200px">Under Construction</marquee>
  </div>
</div>
</div>