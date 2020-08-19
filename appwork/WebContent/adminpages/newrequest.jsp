<%@ include file="aheader.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<div class="bgmodule">
	<div class="mod" style="height: -webkit-fill-available;">
		<h2>${msg}</h2>
		<core:remove var="msg"/>
		<div class="inside" style="height: 200px">
			<form action="verifyreq.jsp" method="post" class="form1">
				<sql:query var="list_mail" dataSource="${mydb}">
   					SELECT Email,AccType FROM registration
					Where registration.Email NOT IN (SELECT Email FROM dbapp.logdetail);
				</sql:query>
				<select name="newreq">
					<core:forEach var="row" items="${list_mail.rows}">
						<option value="${row.Email}">${row.AccType} - ${row.Email}</option>
					</core:forEach>
				</select>
				<div style="margin-left: 40%;width: 100%">
					<input type="submit" class="contactbt" value="Verify Details" />
				</div>
			</form>
			<textarea style="text-align: initial; height: -webkit-fill-available; padding-left: 0px;">
					<core:forEach var="row" items="${list_mail.rows}">
						${row.AccType} - ${row.Email}
					</core:forEach>
					</textarea>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>