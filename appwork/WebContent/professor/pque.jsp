<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="../dbconnect.jsp" %>
<%@ include file="pheader.jsp" %>
<sql:query var="list_branch" dataSource="${mydb}">
		select * from branch;
	</sql:query>
	<sql:query var="list_semester" dataSource="${mydb}">
		select * from semester;
	</sql:query>

<form action="profques.jsp" method="post">
    <div class="bck">
    <div class="col-50">
    <label>Selected Module :*</label>
	</div>
    <sql:query var="std_details" dataSource="${mydb}">
    	SELECT distinct ModName FROM module;
	</sql:query>
	<div class="col-50">
	<core:forEach var="row1" items="${std_details.rows}">
		<label>${row1.ModName} <br></label>
	</core:forEach> 
    </div>
    <div class="col-50">
    <label>Select Branch and Semester  *</label>
    </div>
    <div class="right">
    <select name="listbranch" style="width: 96%; margin-top :10px;">
    <core:forEach var="row2" items="${list_semester.rows}">
		<option value="${row2.Branches}">${row2.Branches} - ${row2.Semester}</option>
	</core:forEach>
    </select>
    </div>
    <div class="col-50">
    <label>Select semester as mentioned above</label>
	    </div>    
	    <sql:query var="list_semester1" dataSource="${mydb}">
			select distinct Semester from semester
		</sql:query> 
		<div class="right">
    	<select name="selsemester">
			<core:forEach var="sem1" items="${list_semester1.rows}">
    			<option value="${sem1.Semester}">${sem1.Semester}</option>
    		</core:forEach>
		</select>
	</div>
	</div>
	 <div class="row">
       <div style="margin-left: 35%;width: 100%">
  					<input type="submit" class="contactbt" value="Next" />
   </div>
	</div>
	</form>
	<%@ include file="../footer.jsp" %>
	