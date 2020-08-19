<%@ include file="dbconnect.jsp" %>

<sql:query var="reg" dataSource="${mydb}">
	select * from logdetail where Email="${param.username}" and Password="${param.password}" and AccType="${param.Acc}"
</sql:query>
<core:forEach var="row" items="${reg.rows}">
		<core:set var = "logno" scope = "session" value = "${row.Login}"></core:set>
	</core:forEach>
<core:set var = "type" scope = "session" value = "${param.Acc}"></core:set>
<core:set var = "type1" scope = "session" value = "${param.username}"></core:set>


<%
	session.setMaxInactiveInterval(300);
%>

<core:if test="${reg.rows[0]!= null}">
<core:set var="logunable" value="1" scope="session"></core:set>
	<core:choose>
  	  <core:when test="${type=='Administrator'}">
      <core:set var="useremail" value="${reg.rows[0].Email}" scope="session"/>
	  <core:redirect url="./adminpages/ahome.jsp"/>
    </core:when>
    <core:when test="${type=='Professor'}">
      <core:set var="useremail" value="${reg.rows[0].Email}" scope="session"/>
	  <core:redirect url="./professor/aprof.jsp"/>
    </core:when>
    <core:when test="${type=='Student'}">
    	<core:if test="${logno==1}">
    		 <core:set var="useremail" value="${reg.rows[0].Email}" scope="session"/>
	 		 <core:redirect url="./logedpages/changepassword.jsp"/>
    	</core:if>
      <core:set var="useremail" value="${reg.rows[0].Email}" scope="session"/>
	  <core:redirect url="./logedpages/home.jsp"/>
     </core:when>    
      <core:otherwise>
      		<core:set var="msg" value="Under Construction" scope="session"/>
      		<core:redirect url="./index.jsp"/>
     </core:otherwise>
	</core:choose>
</core:if>

<core:if test="${reg.rows[0]== null}">
	<core:set var="msg1" value="Something went wrong!!" scope="session"/>
	<core:set var="logfailed" value="1" scope="session"/>
	<core:redirect url="./index.jsp"/>
</core:if>








    
    
    