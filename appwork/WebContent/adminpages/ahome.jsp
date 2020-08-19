<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>
<%@ include file="aheader.jsp" %>
<%@ include file="ahomebody.jsp" %>
<%@ include file="../footer.jsp" %>