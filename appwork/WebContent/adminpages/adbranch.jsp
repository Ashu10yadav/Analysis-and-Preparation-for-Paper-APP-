<%@ include file="../dbconnect.jsp" %>
<core:if test="${param.addbr != null}">
		<sql:update var="reg" dataSource="${mydb}">
		insert into branch(BName,ModName) values("${param.addbr}","${param.addbranch}")
		</sql:update>
</core:if>
<core:if test="${reg == 1 }">
	<core:set var="msg" value="Branch added Successful <a href='module.jsp'>Refresh Page</a>" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="./module.jsp"/>
</core:if>
<core:if test="${reg != 1 }">
	<core:redirect url="./module.jsp"/>
</core:if>

<core:if test="${reg.rows[0]== null}">
	<core:set var="msg" value="Can not add branch, please try again" scope="session"/>
	<core:set var="regfailed" value="1" scope="session"/>
	<core:redirect url="./module.jsp"/>
</core:if>

