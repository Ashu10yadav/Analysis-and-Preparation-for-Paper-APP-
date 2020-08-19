<%@ include file="../dbconnect.jsp" %>
<sql:update var="reg" dataSource="${mydb}">
		UPDATE logdetail SET Password = "${param.psw}", Login="0" where Email="${type1}"
</sql:update>
<core:redirect url="mydetails.jsp"></core:redirect>