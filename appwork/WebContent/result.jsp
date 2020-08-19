<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:query var="myquestion" dataSource="${mydb}">
		SELECT * FROM precticeset where Branch = "${param.selBranch}"
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

<title>Insert title here</title>
</head>
<body>
 <h2>Result</h2>
<table>
  <tr>
    <th>QueNo.</th>
    <th>Questions</th>
    <th>Your Answer</th>
    <th>Correct Answers</th>
    <th>Marks</th>
  </tr>
  <core:forEach var="row" items="${preQue.rows}"  varStatus="index">
  <tr>
    <td>${index.count}</td>
    <td>
              ${row.Que}
    </td>
    <td>      
           <core:set var="qid" value="q${row.QNo}"/>
              ${row[param[qid]]} 							<!--Student's answer-->
       </td>
       <core:set var="use" value="q${row.QNo}"/>
    <td>${row[row.Answer]}</td>								<!-- Correct Answer -->
    <core:set var="UA" value="${row[param[qid]]}"/>
     <core:set var="CA" value="${row[row.Answer]}"/>
    <core:choose>
    <core:when test="${UA==CA}">
    <core:set var="uscor"/>
    <td>1</td>
    </core:when>
      <core:otherwise>
      <core:set var="uswor"/>
    <td>-1</td>
    </core:otherwise>
    </core:choose>
    </tr> 
  </core:forEach>
</table>
</body>
</html>