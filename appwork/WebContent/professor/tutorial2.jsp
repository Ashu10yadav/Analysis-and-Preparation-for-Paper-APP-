<%@ include file="../dbconnect.jsp" %>
<%@ include file="pheader.jsp" %>
<core:set var="selectedbranchname" value="${param.lbranchtutorial}" scope="session"/>
<core:set var="selectedsemestername" value="${param.selsemestername}" scope="session"/>

	<form action="tutorial3.jsp" method = "post">
	<div>
	<label>Entered Branch Is</label>
					<input type="text" name="go" value="${selectedbranchname} "style="text-align: initial; height:30px; width:100%;  padding-left: 0px;" readonly/>
	</div>
	
	<div class="col-50">
		<label>Select Subject *</label>
	</div>	
	<sql:query var="list_subject1" dataSource="${mydb}">
    	SELECT SName,SemId FROM subject where SemId in (SELECT SemID FROM semester where Branches="${selectedbranchname}" and Semester="${selectedsemestername}");
	</sql:query>
	<div>
	<select name="selectedSu1" style="width: 96%; margin-top :10px;">
    	<core:forEach var="row3" items="${list_subject1.rows}">
			<option value="${row3.SName}">${row3.SName} - ${row3.SemId}</option>
		</core:forEach>
    </select>
    </div>
    <div>
		<label>Descrition</label>
	</div>
	<div>
		<input type="text" name="blah" style="text-align: initial; height:30px; width:100%;  padding-left: 0px;"/>
	</div>
   
	<div class="row">
       <div style="margin-left: 35%;width: 100%">
  					<input type="submit" class="contactbt" value="SUBMIT" />
   </div>
	</div>
	
	</form>

<%@ include file="../footer.jsp" %>