<%@ include file="aheader.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<div class="bgmodule">
	<div class="mod" style="height: -webkit-fill-available;">
		<h2>${msg}</h2>
		<core:remove var="msg"/>
		<div class="inside" style="height: 200px">
			<form action="block.jsp" method="post" class="form1">
				<div>
						<select name="AcType">
							<option value="Professor">Professor</option>
							<option value="Student">Student</option>
						</select>
						<sql:query var="list_branch" dataSource="${mydb}">
    						SELECT * FROM branch
						</sql:query>
						<select name="listbranch" style="width: 96%; margin-top :10px;">
    						<core:forEach var="row" items="${list_branch.rows}">
								<option value="${row.BName}">${row.BName}</option>
							</core:forEach>
   				 		</select>
				</div>
				<div style="margin-left: 35%;width: 100%">
					<input type="submit" class="contactbt" value="Delete User" />
				</div>
			</form>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>