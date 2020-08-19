<%@ include file="../dbconnect.jsp" %>
<%@ include file="pheader.jsp" %>

	<form action="tutorial2.jsp" method="post">
	<sql:query var="list_semesters" dataSource="${mydb}">
		select * from semester;
	</sql:query>
		<div class="col-50">
    <label>Select Branch and Semester  *</label>
    </div>
    <div>
    <select name="lbranchtutorial" style="width: 96%; margin-top :10px;">
    <core:forEach var="row2" items="${list_semesters.rows}">
		<option value="${row2.Branches}">${row2.Branches} - (${row2.Semester} Semester)</option>
	</core:forEach>
    </select>
    </div>
    <div>
    <label>Select semester as mentioned above</label>
	    </div>    
	    <sql:query var="list_semesters1" dataSource="${mydb}">
			select distinct Semester from semester
		</sql:query> 
		<div>
    	<select name="selsemestername">
			<core:forEach var="sem1" items="${list_semesters1.rows}">
    			<option value="${sem1.Semester}">${sem1.Semester}</option>
    		</core:forEach>
		</select>
	</div>
	 <div class="row">
       <div style="margin-left: 35%;width: 100%">
  					<input type="submit" class="contactbt" value="Next" />
   </div>
   </div>
	</form>
<%@ include file="../footer.jsp" %>
