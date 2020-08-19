<%@ include file="../dbconnect.jsp" %>
	<sql:query var="topsel" dataSource="${mydb}">
		SELECT SCode FROM subject ORDER BY SCode DESC LIMIT 1;
	</sql:query>
	<core:forEach var="row4" items="${topsel.rows}">
    	<core:set var="maxScode" value="${row4.SCode+1}"/>
	</core:forEach>
	<sql:query var="semid" dataSource="${mydb}">
		SELECT SemID FROM dbapp.semester Where Branches="${param.selbranch}" and Semester="${param.selsem}";
	</sql:query>
	<core:forEach var="row5" items="${semid.rows}">
    	<core:set var="selseme" value="${row5.SemID}"/>
	</core:forEach>
	<sql:update var="topsel" dataSource="${mydb}">
		insert into subject (SCode,SName,SemId) values("${maxScode}","${param.addsub}","${selseme}");
	</sql:update>
	<core:if test="${reg == 1 }">
		<core:set var="msg" value="Subject added Successfully <a href='module.jsp'>Refresh Page</a>" scope="session"/>
		<core:set var="regfailed" value="1" scope="session"/>
		<core:redirect url="./module.jsp"/>
	</core:if>
	<core:if test="${reg != 1 }">
		<core:redirect url="./module.jsp"/>
	</core:if>

<core:if test="${reg.rows[0]== null}">
	<core:set var="msg" value="Can not add subject, please try again" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="./module.jsp"/>
</core:if>


