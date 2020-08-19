<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>
<%@ include file="pheader.jsp" %>
<%@ include file="profHome.jsp" %>
<%@ include file="../footer.jsp" %>