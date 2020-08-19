<%@ include file="../dbconnect.jsp" %>
<core:if test="${param.addmodule != null}">
		<sql:update var="reg" dataSource="${mydb}">
		insert into module(ModName)	values("${param.addmodule}")
	</sql:update>
</core:if>
<core:if test="${reg == 1 }">
	<core:set var="msg" value="Module added Successful <a href='module.jsp'>Refresh Page</a>" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="./module.jsp"/>
</core:if>
<core:if test="${reg != 1 }">
	<core:redirect url="./module.jsp"/>
</core:if>

<core:if test="${reg.rows[0]== null}">
	<core:set var="msg" value="Can not add module, please try again" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="./module.jsp"/>
</core:if>

