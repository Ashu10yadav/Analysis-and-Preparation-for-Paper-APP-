<%@ include file="lheader.jsp" %>
<%@ include file="lselectexam.jsp" %>
<%@ include file="selectprectice.jsp" %>
<div class="back">
	<div>
		<h2 align="center">Contact Us/Feedback/Query Form</h2>
	</div>
	<div>
		<form action="" method="get">
			<div class="dsp">
				<div>
					<select>
						<option id="combo" value="Exam">Feedback/Query Related to Online Exam</option>
						<option id="combo" value="Tutorials">Feedback/Query Related to Tutorials and Notes</option>
						<option id="combo" value="Chat">Feedback/Query Related to Live Chat and Supports</option>
						<option id="combo" value="Sol">Feedback/Query Related to Expert Solution and Suggestions</option>
					</select>
				</div>
				<div>
					<input type="text" placeholder="Enter Your Feedback/Problem/Query Title Here" title="This is required feild" required/>
				</div>
				<div>
					<textarea placeholder="Description of your Feedback/Problem/Query" title="This is required feild" required></textarea>
				</div>
				<div>
	  				<p style="color:ghostwhite;">Upload Screenshot/Documents related to your title : <input type="file" name="filetoupload" id="filetoupload"/></p>
				</div>
				<div class="contactbtn">
  					<input type="submit" class="contactbt" value="Submit" />
    			</div>
    			<div class="contactbtn">
    				<input type="reset" class="contactbt" value="Clear" />
    			</div>
    			<div class="contactbtn">
    				<input type="button" class="contactbt" value="Cancel" />
    			</div>
    		</div>
		</form>
	</div>
</div>
<%@ include file="../footer.jsp" %>