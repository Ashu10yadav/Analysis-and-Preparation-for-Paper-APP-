<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>
<%@ include file="lheader.jsp" %>
<%@ include file="dashboard.jsp" %>
<%@ include file="lselectexam.jsp" %>
<%@ include file="selectprectice.jsp" %>
<%@ include file="../footer.jsp" %>
