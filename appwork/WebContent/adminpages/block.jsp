<%@ include file="aheader.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<div class="bgmodule">
	<div class="mod" style="height: -webkit-fill-available;">
		<div class="inside" style="height: 200px">
			<form action="blocked.jsp" method="post" class="form1">
				<div>
					<sql:query var="list_" dataSource="${mydb}">
    						SELECT Email,AccType,Branch FROM registration
							Where AccType="${param.AcType}"
							and Branch="${param.listbranch}"
							and registration.Email
							IN (SELECT Email FROM logdetail);
					</sql:query>
					<select name="blocken">
					<core:forEach var="row" items="${list_.rows}">
								<option value="${row.Email}">${row.Acctype} - ${row.Branch} - ${row.Email} </option>
					</core:forEach>
					</select>
				</div>
				<div style="margin-left: 35%;width: 100%">
					<input type="submit" class="contactbt" value="Block User" />
				</div>
			</form>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>