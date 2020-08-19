<%@ include file="../dbconnect.jsp" %>
	<sql:update var="reg" dataSource="${mydb}">
		insert into suggestion values("${type1}","${param.suggest}");
	</sql:update>

				<core:redirect url="topsuggest.jsp"/>