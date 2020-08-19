<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="pheader.jsp" %>
<%@ include file="../dbconnect.jsp" %>

<style>
input[type=textarea] {
  width: 96%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: white;
  box-sizing : border-box;
  border : solid #ccc;
}
</style>
	${type1}
	
	<form action="que.jsp" method="post">   
	<div class="bck">
	<div class="col-50">
    <label>Selected SemID :*</label>
	</div>
	<div class="right">
    <sql:query var="semdetails" dataSource="${mydb}">
    	SELECT SemID FROM semester where Branches="${param.listbranch}" and Semester="${param.selsemester}"  ;
	</sql:query>
	<select name="selectedSemid" style="width: 96%; margin-top :10px;">
	<core:forEach var="row10" items="${semdetails.rows}">
		 <option value="${row10.SemID}">${row10.SemID}</option>
	</core:forEach>
	</select> 
    </div>
    <div class="col-50">
	<label>Select Subject *</label>
	</div>
	
	
		<sql:query var="list_subject1" dataSource="${mydb}">
    	SELECT SName,SemId FROM subject where SemId in (SELECT SemID FROM semester where Branches="${param.listbranch}" and Semester="${param.selsemester}");
	</sql:query>
	<div class=right>
	<select name="selectedSubject" style="width: 96%; margin-top :10px;">
    	<core:forEach var="row3" items="${list_subject1.rows}">
			<option value="${row3.SName}">${row3.SName} - ${row3.SemId}</option>
			
		</core:forEach>
    </select>
    
    </div>
    </div>
    
    <div class="bck">
    <div class="col-25">
    	<label>Question Type *</label>
       </div>
    	<div class="col-20">
    	<input type="radio" name="Type" value="MCQ" /><label>MCQ</label> 
    	<input type="radio" name="Type" value="MSQ" /><label>MSQ</label>
    	<input type="radio" name="Type" value="FUB" /><label>FILL UP THE BLANKS</label>
    </div>
    <div class="col-25">
    	<label>Question Level *</label>
       </div>
    	<div class="col-20">
    	<input type="radio" name="Level" value="Easy" /><label>Easy</label> 
    	<input type="radio" name="Level" value="Medium" /><label>Medium</label>
    	<input type="radio" name="Level" value="Hard" /><label>Hard</label>
    </div>
    </div>
    <div class="bck">
   <div style="margin-left: 39`%;width: 100%">
		<label>Enter the question in the given area</label>
		</div>				
		<div>			<textarea name="addque" placeholder="Enter question here...">  </textarea> </div>
					
					<div style="margin-left: 45%;width: 100%">
					<label>Enter option1 </label>
						</div>
		<div>		
			<textarea name="addop1" placeholder="Enter first option(option1)"> </textarea> </div>
					
					
					<div style="margin-left: 45%;width: 100%">
					<label>Enter option2 </label>
					</div>
		<div>			<textarea name="addop2" placeholder="Enter second option(option2)"> </textarea></div>
				
					<div style="margin-left: 45%;width: 100%">
					<label>Enter option3 </label>
					</div>
		<div>			<textarea name="addop3" placeholder="Enter third option(option3)"> </textarea></div>
					
					<div style="margin-left: 45%;width: 100%">
					<label>Enter option4 </label>
					</div>
		<div>			<textarea name="addop4" placeholder="Enter fourst option(option4)"> </textarea></div>
					
					<div style="margin-left: 45%;width: 100%">
					<label>Enter Answer </label>
					</div>
		<div>			<textarea name="addans" placeholder="Enter the whole answer here as mentioned above"> </textarea></div>
						
				
    	</div>
    	 <div class="row">
       <div style="margin-left: 35%;width: 100%">
  					<input type="submit" class="contactbt" value="Next" />
   </div>
	</div>
	</form>
<%@ include file="../footer.jsp" %>