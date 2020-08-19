<%@ include file="aheader.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<style>
tr:nth-child(even) {background-color: #f2f2f2;}
</style>
<div class="bgmodule">
	<div class="mod" style="height: -webkit-fill-available;">
		<h2>${msg}</h2>
		<core:remove var="msg"/>
		<div class="inside" style="height: 200px">
			<div>
				<sql:query var="list_branch" dataSource="${mydb}">
    						SELECT * FROM registration Where registration.Email IN (SELECT Email FROM logdetail)
    						Order by AccType DESC;
				</sql:query>
				<table style="border:1px; width: -webkit-fill-available;">
					<thead>
						<tr>
							<th>User Type</th>
							<th>Email</th>
							<th>Name / Guardian's Name</th>
							<th>Branch - Institute</th>
							<th>Address</th>
						</tr>
					</thead>
					<tbody>
					<core:forEach var="row" items="${list_branch.rows}">
						<tr>
							<td>${row.AccType}</td>
							<td>${row.Email}</td>
							<td>${row.FirstName} - ${row.Guardians}</td>
							<td>${row.Branch}<br>${row.InstName}</td>
							<td>${row.ADD1} ${row.ADD2}<br> ${row.District} ${row.State} ${row.Pincode}</td>
						</tr>
								
					</core:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>