<%@ include file="../dbconnect.jsp" %>
<core:set var = "Permi" scope = "session" value = "${param.permission}"></core:set>
<sql:query var="list_mail" dataSource="${mydb}">
   					SELECT Email,AccType,Contact FROM registration Where Email="${ReqMail}";
</sql:query>
<core:forEach var="row" items="${list_mail.rows}">					
<core:choose>
  	  <core:when test="${Permi=='Allowed'}">
  	  		<sql:update var="reg" dataSource="${mydb}">
					insert into logdetail(Email,Password,AccType)
					values("${ReqMail}","${row.Contact}","${row.AccType}")
			</sql:update>
			<core:set var="msg" value="Request Access" scope="session"/>
			<core:redirect url="newrequest.jsp"/>
    </core:when>
   <core:when test="${Permi=='Denyed'}">
    	<sql:query var="list_doc" dataSource="${mydb}">
    		SELECT * FROM document Where Email='${ReqMail}';
		</sql:query>
		<core:forEach var="row" items="${list_doc.rows}">
		<core:set var="imgdel" value="${row.Image}" scope="page"/>
		<core:set var="signdel" value="${row.Signature}" scope="page"/>
		<core:set var="doc1del" value="${row.Doc1}" scope="page"/>
		<core:set var="doc2del" value="${row.Doc2}" scope="page"/>
		</core:forEach>
		<%
			String imagedel; 
			imagedel = (String)pageContext.getAttribute("imgdel");   //No exception.
			File f1=new File(imagedel);
			f1.delete();
			String sigdel; 
			sigdel = (String)pageContext.getAttribute("signdel");   //No exception.
			File f2=new File(sigdel);
			f2.delete();
			String do1del; 
			do1del = (String)pageContext.getAttribute("doc1del");   //No exception.
			File f3=new File(do1del);
			f3.delete();
			String do2del; 
			do2del = (String)pageContext.getAttribute("doc2del");   //No exception.
			File f4=new File(do2del);
			f4.delete();
		%>
    
    
    <sql:update var="reg1" dataSource="${mydb}">
			DELETE FROM document WHERE Email='${ReqMail}'				
	</sql:update>
    <sql:update var="reg" dataSource="${mydb}">
			DELETE FROM registration WHERE Email='${ReqMail}'				
	</sql:update>
			<core:set var="msg" value="Request Denyed" scope="session"/>
			<core:redirect url="newrequest.jsp"/>
     </core:when>    
</core:choose>						
</core:forEach>