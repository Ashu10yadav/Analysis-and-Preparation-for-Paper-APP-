<%@ include file="../dbconnect.jsp" %>
	
		
<sql:query var="topsel" dataSource="${mydb}">
			SELECT QNo FROM question ORDER BY SCode DESC LIMIT 1;
		</sql:query>
	<core:forEach var="row4" items="${topsel.rows}">
    	<core:set var="maxScode" value="${row4.QNo+1}"/>
	</core:forEach>
	    <sql:query var="semid" dataSource="${mydb}">
		SELECT SemID FROM semester where Branches="${param.listbranch}" and Semester="${param.selsemester}"  ;
		</sql:query>
	<core:forEach var="row5" items="${semid.rows}">
    	<core:set var="selseme" value="${row5.SemID}"/>
	</core:forEach>
	<sql:query var="subid" dataSource="${mydb}">
		SELECT SCode FROM subject Where SName="${param.selectedSubject}";
	</sql:query>
	<core:forEach var="sub" items="${subid.rows}">
    	<core:set var="selsub" value="${sub.SCode}"/>
	</core:forEach>	
	<sql:update var="register" dataSource="${mydb}">
		insert into question(SemId,SCode,QNo,Question,op1,op2,op3,op4,Answer,Level,QType) values("${param.selectedSemid}","${selsub}","${maxScode}","${param.addque}","${param.addop1}","${param.addop2}"
		,"${param.addop3}","${param.addop4}","${param.addans}","${param.Level}","${param.Type}")
		</sql:update>
		
		
		
		<core:if test="${reg == 1 }">
		<core:set var="msg" value="Subject added Successfully <a href='module.jsp'>Refresh Page</a>" scope="session"/>
		<core:set var="regfailed" value="1" scope="session"/>
		<core:redirect url="pque.jsp"/>
	</core:if>
	<core:if test="${reg != 1 }">
		<core:redirect url="pque.jsp"/>
	</core:if>

<core:if test="${reg.rows[0]== null}">
	<core:set var="msg" value="Can not add subject, please try again" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="pque.jsp"/>
</core:if>

<!--  	SELECT SemID FROM semester Where Branches="${param.listbranch}" and Semester="${param.selsemester}";  -->
