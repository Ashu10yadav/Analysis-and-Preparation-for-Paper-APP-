<%@ include file="aheader.jsp" %>
<%@ include file="../dbconnect.jsp" %>

<sql:query var="moduleadded" dataSource="${mydb}">
	select * from module;
</sql:query>
<sql:query var="branchadded" dataSource="${mydb}">
	select * from branch;
</sql:query>


<div class="bgmodule">
	<h2>${msg}</h2>
	<core:remove var="msg"/>
	<div class="mod">
		<h2 align="center">Course Module</h2>
		<div class="inside1">
			<div class="lpanel">
				<form action="admodule.jsp" method="post" class="form1">
					<input type="text" name="addmodule" placeholder="Enter Module Name (e.g. Bachlor of Engineering)">
					<input type="submit" value="ADD Module">
				</form>
			</div>
			

			<div class="rpanel">
				<form action="delmodule.jsp" method="post" class="form1">
					<select name="delmodule">
						<core:forEach var="row" items="${moduleadded.rows}">
							<option value="${row.ModName}">${row.ModName}</option>
						</core:forEach>
					</select>
					<input type="submit" value="Delete Module">
				</form>
			</div>
		</div>
	</div>
	
	<div class="mod">
		<h2 align="center">Branches</h2>
		<div class="inside2">
			<div class="lpanel">
				<form action="adbranch.jsp" method="post" class="form1">
					<select name="addbranch">
						<core:forEach var="row" items="${moduleadded.rows}">
							<option value="${row.ModName}">${row.ModName}</option>
						</core:forEach>
					</select>
					<input type="text" name="addbr" placeholder="Enter Branch Name (e.g. Computer Science and Engineering)">
					<input type="submit" value="Add Branch">
				</form>
			</div>
			<div class="rpanel">
				<form action="delbranch.jsp" method="post" class="form1">
					<select name="delbranch">
						<core:forEach var="row2" items="${branchadded.rows}">
							<option value="${row2.BName}">${row2.ModName} - ${row2.BName}</option>
						</core:forEach>
					</select>
					<input type="submit" value="Delete Branch">
				</form>
			</div>
		</div>
	</div>
	
	<div class="mod">
		<h2 align="center">Subjects</h2>
		<div class="inside3">
			<div class="lpanel">
				<form action="adsub.jsp" method="post" class="form1">
					<select name="selbranch">
						<core:forEach var="row2" items="${branchadded.rows}">
							<option value="${row2.BName}">${row2.ModName} - ${row2.BName}</option>
						</core:forEach>
					</select>
					<select name="selsem">
						<core:forEach var = "i" begin = "1" end = "8">
    						<option value="${i}">${i}</option>
    					</core:forEach>
					</select>
					<input type="text" name="addsub" placeholder="Enter Subject Name (e.g. Operating System)">
					<input type="submit" value="Upload Subject">
				</form>
			</div>
			<div class="rpanel">
				<form action="" method="post" class="form1">
					<select name="selcmodule">
						<option value="">Select Module Name</option>
					</select>
					<select name="selcbranch">
						<option value="">Select Branch Name</option>
					</select>
					<select name="selcsem">
						<option value="">Select Semester Number</option>
					</select>
					<select name="delsub">
						<option value="">Select Subject to Delete</option>
					</select>
					<input type="submit" value="Delete Subject">
				</form>
			</div>
		</div>
	</div>
</div>

<core:if test="${logfailed==1}">
<core:remove var="logfailed"/>
</core:if>

<%@ include file="../footer.jsp" %>