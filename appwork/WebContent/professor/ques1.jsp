<%@ include file="../dbconnect.jsp" %>
	<core:if test="${param.std_details != null}">
		<sql:update var="register" dataSource="${mydb}">
		insert into question(anything) values("${param.selectedSubject}")
		</sql:update>
	</core:if>
  	<core:if test="${register == 1}">
		<core:set var="msg" value="Question added Successful <a href='profques.jsp'>Refresh Page</a>" scope="session"/>
		<core:set var="regfailed" value="1" scope="session"/>
		<core:redirect url="./profques.jsp"/>
	</core:if>
		<core:if test="${register != 1}">
		<core:redirect url="./profques.jsp"/>
	</core:if>
	<core:if test="${register.rows[0]== null}">
		<core:set var="msg" value="Can not add questions, please try again" scope="session"/>
		<core:set var="regfailed" value="1" scope="session"/>
		<core:redirect url="./profques.jsp"/>
	</core:if>

