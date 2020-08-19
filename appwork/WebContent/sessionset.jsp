<%@ include file="dbconnect.jsp" %>
<core:set var="email" value="${param.email}" scope="session"/>
<core:set var="firstname" value="${param.firstname}" scope="session"/>
<core:set var="middletname" value="${param.middletname}" scope="session"/>
<core:set var="lastname" value="${param.lastname}" scope="session"/>
<core:set var="guardians" value="${param.guardians}" scope="session"/>
<core:set var="dob" value="${param.dob}" scope="session"/>
<core:set var="gender" value="${param.gender}" scope="session"/>
<core:set var="contact" value="${param.contact}" scope="session"/>
<core:set var="add1" value="${param.add1}" scope="session"/>
<core:set var="add2" value="${param.add2}" scope="session"/>
<core:set var="district" value="${param.district}" scope="session"/>
<core:set var="state" value="${param.state}" scope="session"/>
<core:set var="country" value="${param.country}" scope="session"/>
<core:set var="pincode" value="${param.pincode}" scope="session"/>
<core:set var="instid" value="${param.instid}" scope="session"/>
<core:set var="instname" value="${param.instname}" scope="session"/>
<core:set var="doj" value="${param.doj}" scope="session"/>
<core:set var="selectedModule" value="${param.selectedModule}" scope="session"/>
<core:set var="listbranch" value="${param.listbranch}" scope="session"/>
<core:set var="sem" value="${param.sem}" scope="session"/>
<core:set var="AccType" value="${param.AccType}" scope="session"/>
<core:set var="terms" value="${param.terms}" scope="session"/>
<core:redirect url="./regupload.jsp"/>

