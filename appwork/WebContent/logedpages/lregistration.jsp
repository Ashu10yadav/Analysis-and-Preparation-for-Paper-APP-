<%@ include file="lheader.jsp" %>
<%@ include file="lselectexam.jsp" %>
<%@ include file="../dbconnect.jsp" %>
<core:if test="${logunable!= 1}">
	<core:redirect url="../index.jsp"/>
</core:if>

<sql:query var="std_details" dataSource="${mydb}">
    SELECT * FROM registration where Email = "${type1}";
</sql:query>
<core:forEach var="row1" items="${std_details.rows}">
    				<h2>${row.FirstName} ${row.MiddleName} ${row.LastName}</h2>
</core:forEach>
<style>
input[type=text], input[type=password], input[type=email] {
  width: 96%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: white;
  box-sizing : border-box;
  border : solid #ccc;
}
</style>
<div id="bgregform">
<DIV id="regform">
		<h2 align="center"><B><I>EDIT REGISTRATION DETAILS </I></B></h2>
		<h2>${msg}</h2>
	<core:remove var="msg"/>
		<form action="#" method="post">
	<div class ="row">
       <div class="col-h">
		<label><b> INSTITUTE DETAILS </b></label>
		</div>
		<div class="bck">
		
	<div class="col-25">
		<label>EmpId/RollNo./EnrollNo. </label> 
	</div>
	<div class="col-75">
	
		<input type="text" name="instid" placeholder="Enter Your Valid Id"/>
	
	</div>
	<div class="col-25">
		<label>Institute Name </label> 
	</div>
	<div class="col-75">
		<input type="text" name="instname" placeholder="Enter Your Institute Name"/>
	</div>
	<div class="col-25">
		<label>Institute Joining Date </label>
	</div>
	<div class="col-24">
	<input type="date" name="doj" />
	</div>
	<div class="row">
    <div class="col-25">
    <label>Select Module  </label>
    </div>
    <div class="col-75">
    <sql:query var="list_module" dataSource="${mydb}">
    SELECT * FROM module;
	</sql:query>
	<select name="selectedModule" style="width: 96%; margin-top :10px;">
	
    <core:forEach var="row" items="${list_module.rows}">
		<option value="${row.ModName}">${row.ModName}</option>
	</core:forEach>
	
    </select>
   
    </div>
    </div>
    <div class="row">
    <div class="col-25">
    <label>Select Branch  </label>
    </div>
    <div class="col-75">
    
    <sql:query var="list_branch" dataSource="${mydb}">
    	SELECT * FROM branch
	</sql:query>
    
    <select name="listbranch" style="width: 96%; margin-top :10px;">
    <core:forEach var="row" items="${list_branch.rows}">
		<option value="${row.BName}">${row.BName}</option>
	</core:forEach>
    </select>
    </div>
    </div>
    <div class="row">
    <div class="col-25">
    <label>Select Semester  </label>
    </div>
    <div class="col-75">
    <select name="sem" style="width: 96%; margin-top :10px;">
    <core:forEach var = "i" begin = "1" end = "8">
    	<option value="${i}">${i}</option>
    </core:forEach>
    </select>
    </div>
    </div>	
  </div>	
  </div>
	   <div class="col-h">
	   <label><b> PERSONAL DETAILS </b></label>
		</div>
		<div class="bck">
		<div class="col-25">
		<label>First Name *</label>
		</div>
	<div class="col-75">
		<input type="text" name="firstname" placeholder="Enter Your First Name" readonly />
		</div>
		<div class="col-25">
		<label>Middle Name</label>
		</div>
	<div class="col-75">
		<input type="text" name="middlename" placeholder="Enter Your Middle Name"/>
		</div>
		<div class="col-25">
		<label>Last Name</label>
		</div>
	<div class="col-75">
		<input type="text" name="lastname" placeholder="Enter Your Last Name"/>
		</div>
		<div class="col-25">
		<label>Parents/Guardians/Husband Name *</label>
		</div>
	<div class="col-75">
		<input type="text" name="guardians" placeholder="Enter Your Guardians Name" />
		</div>
		<div class="col-25">
		<label>Enter Your Date of Birth *</label>
		</div>
	<div class="col-10">
		<input type="date" name="dob" readonly>
	  </div>
	         	
    <div class="row">
       <div class="col-25">
    	<label>Gender *</label>
       </div>
    	<div class="col-20">
    	<input type="radio" name="gender" value="M" /><label>Male</label> 
    	<input type="radio" name="gender" value="F" /><label>Female</label>
    	<input type="radio" name="gender" value="O" /><label>Others</label>
    </div> 
    </div>      
    <div class="row">
    <div class="col-25">
    <label>Address  </label>
    </div>
    <div class="col-75">
    <input type="text" name="add1" placeholder="Address Line 1" />
    <input type="text" name="add2" placeholder="Adress Line 2" />
    <input type="text" name="pincode" placeholder="Pincode" required />
    <input type="text" name="district" placeholder="District" />
    <input type="text" name="state" placeholder="State" /> 
    <input type="text" name="country" placeholder="Country" />
    </div>   
    </div>
    <div class="row">
    	<div class="col-25">
    	<label>Enter Your Email: *</label>
    	</div>
    	<div class="col-75">
    	<input type="email" name="email" placeholder="Enter Your Email" readonly />
       </div>
    
    </div>
    <div class="row">
      <div class="col-25">
    	<label>Contact Number </label>
    	</div>
    	<div class="col-75">
    	<input type="text" onkeypress="javascript:return isNumber(event)" name="contact" placeholder="Enter Your Mobile Number" maxlength="10"  required />
    </div>
    </div>    
    </div>
     <div>
    <BR>
    <input type="checkbox" name="terms" value="1" required style="margin-left:5%" /><label>I have read the terms and condition of APP.
     If I have not access the APP for 1 year then my ID will automatically deleted.</label><br>
     <label style="margin-left:5%">Your account will be created shortly after your registration. 
     Kindly check your email time to time, it might take at most 7 days to be created.</label>      
    </div>
	 <div class="row">
    <div class="contactbtn">
  					<input type="submit" class="contactbt" value="Next" />
    			</div>
    <div class="contactbtn">
    				<input type="reset" class="contactbt" value="Clear" />
    			</div>
    <div class="contactbtn">
    				<input type="button" class="contactbt" value="Cancel" />
    			</div>
    </div>
    </form>
	</DIV>
	</div>
	<core:if test="${logfailed==1}">
<core:remove var="logfailed"/>
</core:if>
<%@ include file="../footer.jsp" %>