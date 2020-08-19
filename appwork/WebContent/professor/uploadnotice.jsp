 <%@ include file="../dbconnect.jsp" %>
 <core:set var="msgf1" value="Notification is live now..." scope="session"/>
                <core:set var="notes" value="${param.titles}" scope="session"/>
                <sql:update var="reg" dataSource="${mydb}">
					insert into notification values("${type1}", curdate(), "${notes}", "${MyAttribute1}");
				</sql:update>
				<core:remove var="msgg"/>
				<core:redirect url="notification.jsp"/>