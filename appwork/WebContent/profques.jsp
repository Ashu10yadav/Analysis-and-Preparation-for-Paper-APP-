<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="dbconnect.jsp" %>

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
	
	
	<form action="que.jsp" method="post">   
	<div class="bck">
	<div class="que-25">
    <label>Selected SemID :*</label>
	</div>
	<div class="que-75">
    <sql:query var="semdetails" dataSource="${mydb}">
    	SELECT SemID FROM semester where Branches="${param.listbranch}" and Semester="${param.selsemester}"  ;
	</sql:query>
	<core:forEach var="row10" items="${semdetails.rows}">
		<label>${row10.SemID}<br></label>
	</core:forEach> 
    </div>
    
    <div class="que-25">
    <label>Select Subject</label>
	    </div>
	    <div class="que-75">
	    <sql:query var="sublist" dataSource="${mydb}">
    	SELECT SemID FROM semester where Branches="${param.listbranch}" and Semester="${param.selsemester}"  ;
	</sql:query>
	    <sql:query var="subjectlist" dataSource="${mydb}">
			select SName from subject where SemId="CSE001";
		</sql:query> 
    	<select name="selectedSubject" style="width: 96%; margin-top :10px;">
			<core:forEach var="subject3" items="${subjectlist.rows}">
    			<option value="${subject3.SName}">${subject3.SName}</option>
    		</core:forEach>
		</select>
	</div>
    
    <div class="que-25">
	<label>Select Subject *</label>
	</div>
	<div class="que-25">
		<sql:query var="list_subject1" dataSource="${mydb}">
    	SELECT SName FROM subject where SemId="${row10.SemID}";
	</sql:query>
	
	<select name="selectedSubject" style="width: 96%; margin-top :10px;">
    	<core:forEach var="row3" items="${list_subject1.rows}">
			<option value="${row3.SName}">${row3.SName} - ${row3.SemID}</option>
		</core:forEach>
    </select>
    </div>
    </div>
    
    <div class="bck">
    <div class="que-25">
    	<label>Question Type *</label>
       </div>
    	<div class="que-75">
    	<input type="radio" name="Type" value="MCQ" /><label>MCQ</label> 
    	<input type="radio" name="Type" value="MSQ" /><label>MSQ</label>
    	<input type="radio" name="Type" value="FUB" /><label>FILL UP THE BLANKS</label>
    </div>
    <div class="que-25">
    	<label>Question Level *</label>
       </div>
    	<div class="que-75">
    	<input type="radio" name="Level" value="Easy" /><label>Easy</label> 
    	<input type="radio" name="Level" value="Medium" /><label>Medium</label>
    	<input type="radio" name="Level" value="Hard" /><label>Hard</label>
    </div>
    </div>
    <div class="bck">
    <div class="qu">
		<label>Enter the question in the given area</label>				
		<div>			<textarea name="addque" placeholder="Enter question here...">  </textarea> </div>
					
					</div>
					<div class="qu">
					<label>Enter option1 </label>
		<div>		
			<textarea name="addop1" placeholder="Enter first option(option1)"> </textarea> </div>
					
					</div>	
					<div class="qu">
					<label>Enter option2 </label>
		<div>			<textarea name="addop2" placeholder="Enter second option(option2)"> </textarea></div>
				</div>
					<div class="qu">
					<label>Enter option3 </label>
		<div>			<textarea name="addop3" placeholder="Enter third option(option3)"> </textarea></div>
					</div>
					<div class="qu">
					<label>Enter option4 </label>
		<div>			<textarea name="addop4" placeholder="Enter fourst option(option4)"> </textarea></div>
					</div>
					<div class="qu">
					<label>Enter Answer </label>
		<div>			<textarea name="addans" placeholder="Enter the whole answer here as mentioned above"> </textarea></div>
						
				</div>
    		<div>			
    			<input type="submit" value="Next">
    		</div>
    	</div>
	</form>
<%@ include file="footer.jsp" %>