<%@ include file="header.jsp" %>
<%@ include file="dbconnect.jsp" %>
<sql:query var="list_module" dataSource="${mydb}">
    SELECT * FROM module;  
</sql:query>
<select>
<core:forEach var="row" items="${list_module.rows}">

	
		<option value="${row.ModName}">${row.ModName}</option>
	
               
</core:forEach>
</select>



