<%@ include file="dbconnect.jsp" %>
<core:if test="${email != null and 
		firstname != null and 
		guardians != null and 
		dob != null and 
		gender != null and	
		instname != null and 
		doj != null and 
		selectedModule != null and 
		listbranch != null and 
		AccType != null and 
		terms != null and
		pincode != null}">
		<sql:update var="reg" dataSource="${mydb}">
		insert into registration(Email,FirstName,MiddleName,LastName,Guardians,DOB,Gender,Contact,
									Add1,Add2,District,State,Country,Pincode,InstId,InstName,
									DOJ,Module,Branch,Sem,AccType,Agree)
					values("${email}","${firstname}","${middlename}","${lastname}",
					"${guardians}","${dob}","${gender}","${contact}",
					"${add1}","${add2}","${district}","${state}",
					"${country}","${pincode}","${instid}","${instname}",
					"${doj}","${selectedModule}","${listbranch}","${sem}",
					"${AccType}","${terms}")
	</sql:update>
	<sql:update var="reg1" dataSource="${mydb}">
		insert into document(Email,Doc1,Doc2,Image,Signature)
					values("${email}","${sessionScope.MyAttribute1}","${sessionScope.MyAttribute2}",
					"${sessionScope.MyAttribute3}",
					"${sessionScope.MyAttribute4}")
	</sql:update>
	<core:remove var="msgf1"/>
	<core:remove var="msgf2"/>
	<core:remove var="msgf3"/>
	<core:remove var="msgf4"/>
</core:if>
	<core:set var="msgact" value="Registration Successful!! you will notify shortly after account activation" scope="session"/>
	<core:redirect url="./index.jsp"/>
<core:if test="${reg != 1 }">
	<core:set var="msg" value="Record Not Added <a href='registration.jsp'>Refresh Page</a>" scope="session"/>
	<core:redirect url="./registration.jsp"/>
</core:if>

