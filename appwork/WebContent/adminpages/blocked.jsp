<%@ include file="../dbconnect.jsp" %>
<sql:query var="list_doc" dataSource="${mydb}">
    		SELECT * FROM document Where Email='${param.blocken}';
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
			DELETE FROM logdetail WHERE Email='${param.blocken}'
</sql:update>
<sql:update var="reg2" dataSource="${mydb}">
			DELETE FROM document WHERE Email='${param.blocken}'
</sql:update>
<sql:update var="reg" dataSource="${mydb}">
			DELETE FROM registration WHERE Email='${param.blocken}'
</sql:update>
<core:redirect url="blockuser.jsp"></core:redirect>