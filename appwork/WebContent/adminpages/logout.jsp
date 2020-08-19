<%@ include file="../dbconnect.jsp" %>
<core:remove var="logunable"/>
<% session.invalidate(); %>
<core:redirect url="../index.jsp"/>