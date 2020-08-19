<%@ include file="../dbconnect.jsp" %>
           
 <core:set var="msgf1" value="Tutorial is uploaded now" scope="session"/>
                <core:set var="notes1" value="${param.go}" scope="session"/>
                <core:set var="notes2" value="${param.blah}" scope="session"/>
                <sql:query var="tid" dataSource="${mydb}">
					SELECT TID FROM tutorial ORDER BY TID DESC LIMIT 1;
		</sql:query>
		<core:forEach var="row4" items="${tid.rows}">
    	<core:set var="maxtid" value="${row4.TID+1}"/>
	</core:forEach>
                <sql:update var="reg" dataSource="${mydb}">
					insert into tutorial values("${maxtid}","${selectedsubjectname11}", "${MyAttribute1}","${selectedbranchname}","${tutorialnotes}");
				</sql:update>
				<core:remove var="msgg"/>
				<core:redirect url="tutorial1.jsp"/>