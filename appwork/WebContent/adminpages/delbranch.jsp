<%@ include file="../dbconnect.jsp" %>

		<sql:update var="reg" dataSource="${mydb}">
			delete from branch where BName="${param.delbranch}"
	</sql:update>

<core:if test="${reg == 1 }">
	<core:set var="msg" value="Branch Delete Successful <a href='module.jsp'>Refresh Page</a>" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="./module.jsp"/>
</core:if>
<core:if test="${reg != 1 }">
	<core:redirect url="./module.jsp"/>
</core:if>

<core:if test="${reg.rows[0]== null}">
	<core:set var="msg" value="Can not delete branch, please try again" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="./module.jsp"/>
</core:if>

