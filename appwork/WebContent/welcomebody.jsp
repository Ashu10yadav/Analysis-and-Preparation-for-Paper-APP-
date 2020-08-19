<%@ include file="dbconnect.jsp" %>
<h2>${msg}</h2>
<core:remove var="msg"/>

<sql:query var="list_module" dataSource="${mydb}">
    SELECT * FROM notification Order By PostedDate desc;
</sql:query>
<sql:query var="countStudent" dataSource="${mydb}">
    SELECT COUNT(Email) as snumber FROM logdetail WHERE AccType = 'Student';
</sql:query>
<sql:query var="countProfessor" dataSource="${mydb}">
    SELECT COUNT(Email) as pnumber FROM logdetail WHERE AccType = 'Professor';
</sql:query>
<sql:query var="countQue" dataSource="${mydb}">
    SELECT COUNT(QID) as qnumber FROM question;
</sql:query>
<sql:query var="countTut" dataSource="${mydb}">
    SELECT COUNT(TID) as tnumber FROM tutorial;
</sql:query>


<div>
<div class="row">
  <div class="column middle">
    <h2>Welcome to Analysis and Preparation for Paper (APP)</h2>
    <div class="promotionalImg">
    	<img src="./image/016.jpg" class="bgImg">
    	<div class="top-right">
    		<ul class="features">
    		<h4>Our Features:</h4>
    			<li>Free Practice Sets</li>
    			<li>Online Subject/Module Wise Test</li>
    			<li>Tutorials and Notes</li>
    			<li>Expert Solutions</li>
    			<li>Topper's Suggestion</li>
    			<li>Live Chat</li>
    			<li>MCQ, MSQ and Theory Exam</li>
    			<li>and many more that you like....</li>
    		</ul>
    	</div>
    </div>
  </div>
<div class="column side">
    <h2>Current Affairs</h2>
    <marquee direction="up" behavior="scroll" onmouseover="this.stop();" onmouseout="this.start();" scrolldelay="150ms">
    	<ol>
    		<core:forEach var="row" items="${list_module.rows}">
    			<li>${row.PostedDate} : ${row.Notification}
    				<a href="${row.Attachment}">More info...</a>
    			</li>
    		</core:forEach>
    	</ol>
	</marquee>
  </div>
</div>
</div>
<div class="promotionalInf">
  	<div class="columnpr">
		<img src="./image/021.png" height="100px"><br>
		<core:forEach var="row1" items="${countStudent.rows}">
    			<h2>0${row1.snumber}+ Registered student</h2>
    	</core:forEach>
	</div>
  	<div class="columnpr">
		<img src="./image/005.png" height="100px"><br>
			<core:forEach var="row4" items="${countTut.rows}">
    			<h2>0${row4.tnumber}+ Available tutorial and notes</h2>
    	</core:forEach>
	</div>
  	<div class="columnpr">
		<img src="./image/010.png" height="100px"><br>
		<core:forEach var="row3" items="${countQue.rows}">
    			<h2>0${row3.qnumber}+ Number of questions</h2>
    	</core:forEach>
	</div>
  	<div class="columnpr">
		<img src="./image/020.png" height="100px"><br>
		<core:forEach var="row2" items="${countProfessor.rows}">
    			<h2>0${row2.pnumber}+ Professors</h2>
    	</core:forEach>
	</div>
</div>