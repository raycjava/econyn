<%@ page language="java" contentType="text/html; charset= UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<c:if test="${!empty param.subject }">

	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/project"
		user="root"
		password="root"
 	/>
 	
 	<sql:update>
 		INSERT INTO form (subject, role, project,salutation,name,company,emailAddress,mobilePhone,singleCheckbox) VALUES (?,?,?,?,?,?,?,?,?)
 		<sql:param>${param.subject}</sql:param>
 		<sql:param>${param.role}</sql:param>
 		<sql:param>${param.project}</sql:param>
 		<sql:param>${param.salutation}</sql:param>
 		<sql:param>${param.name}</sql:param>
 		<sql:param>${param.company}</sql:param>
 		<sql:param>${param.emailAddress}</sql:param>
 		<sql:param>${param.mobilePhone}</sql:param>
 		<sql:param>${param.singleCheckbox	}</sql:param>
	</sql:update>
</c:if>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		body {
        font-family: Arial, Helvetica, sans-serif;
        }
		
		.footer{
            background-color: #FFA533; 
            padding-left: 3%;
        }
		
		.icon-bar {
        width: 100%;
        background-color: rgb(255, 255, 255);
        overflow: auto;
        top: 0%;
        }
        
        .icon-bar a {
        float: left;
        width: 25%;
        text-align: center;
        padding: 12px 0;
        transition: all 0.3s ease;
        color: #bbb;
        font-size: 25px;
        }


        .icon-bar a:hover {
        background-color: white;
        }

        .active {
        background-color: #aaa;
        }
		
		/* Style inputs, select elements and textareas */
		input[type=text], select, textarea{
		  width: 100%;
		  padding: 12px;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		  resize: vertical;
		}
		
		/* Style the label to display next to the inputs */
		label {
		  padding: 12px 12px 12px 0;
		  display: inline-block;
		}
		
		/* Style the submit button */
		input[type=submit] {
		  background-color: #04AA6D;
		  color: white;
		  padding: 12px 20px;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		  float: right;
		}
		
		/* Style the container */
		.container {
		  border-radius: 5px;
		  background-color: #f2f2f2;
		  padding: 20px;
		}
		
		/* Floating column for labels: 25% width */
		.col-25 {
		  float: left;
		  width: 25%;
		  margin-top: 6px;
		}
		
		/* Floating column for inputs: 75% width */
		.col-75 {
		  float: left;
		  width: 75%;
		  margin-top: 6px;
		}
		
		/* Clear floats after the columns */
		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}
		
		/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
		@media screen and (max-width: 600px) {
		  .col-25, .col-75, input[type=submit] {
		    width: 100%;
		    margin-top: 0;
		  }
		}
	</style>
	<title>Contact us</title>
</head>
<body>

<div style="text-align: center;">
<img src="img/ECONYNflat.png" >
</div>
<div class="icon-bar">
    <!-- Awesome 4 icons-->
       <!-- Awesome 4 icons-->
    <a class="active" href="landingPage.jsp"><i class="fa fa-home"> <span style="font-family: Arial, Helvetica, sans-serif;">Home</span></i></a> 
    <a class="active" href="#"><i class="fa fa-user-circle-o"> <span style="font-family: Arial, Helvetica, sans-serif;"> Application</span></i></a> 
    <a class="active" href="spec.jsp"><i class="fa fa-list" ><span style="font-family: Arial, Helvetica, sans-serif;"> Products</span></i></a> 
    <a class="active" href="form.jsp"><i class="fa fa-envelope"><span style="font-family: Arial, Helvetica, sans-serif;"> Contact us</span></i></a> 
   
</div>
<br />

<form id="form" action="form.jsp" method="post">
<fieldset>
<legend>
	<b style="font-size: 36px;">Contact us</b>
</legend>
	<div>
	<h1 style="color: #c6001e; font-size: 18px;">
	<b>*Required Fields</b></h1><br />
	Please complete the following form and click the button marked "Send" when you are finished. <br />
	Fields with asterisks are required. Typically, ECONYL answers within three working days; <br />
	queries requiring extensive research may take longer and will be answered as soon as possible.<br />
	<br/>
	</div>
	<hr/>
	<div class="form-group">
		<label for="subject" class="">Subject of Your Inquiry
		<span style="color: #B80026;">*</span>
		</label> 
		<select name="subject" id="subject"
						class="form-control">
			<option value="">Select One</option>
			<option value="nylonchips">Nylon Chips</option>
			<option value="poy">POY</option>
			<option value="dty">DTY</option>
			<option value="compound">Compound</option>
		</select>
	</div>
	<div class="form-group">
		<label for="role" class="">Primary Role in Your
			Company </label> <select name="role" id="role"
			class="form-control">
			<option value="">Select One</option>
			<option value="CEO/President">CEO/President</option>
			<option value="Management">Management</option>
			<option value="Engineer">Engineer</option>
			<option value="Purchasing">Purchasing</option>
			<option value="R&D">R&D</option>
			<option value="Sales">Sales</option>
			<option value="Other">Other</option>
		</select>
	</div>
	<div class="form-group">
		<label for="project"> Type of Project</label> <select
			name="project" id="project" class="form-control">
			<option value="">Select One</option>
			<option value="Concept">Concept</option>
			<option value="Existing Application">Existing Application</option>
			<option value="New Application">New Application</option>
			<option value="Replace Existing Material">Replace Existing Material</option>
			<option value="Testing">Testing</option>
		</select>
	</div>
	<div class="form-group">
      <label for="salutaion"> Salutation </label>
      <select name="salutation" id="salutation" class="form-control">
      <option value="">Select One:</option>
      <option value="Mr.">Mr.</option>
      <option value="Ms.">Ms.</option>
      <option value="Miss">Miss</option>
      <option value="Mrs.">Mrs.</option>
      </select>
  </div>
  <div class="form-group">
      <label for="name" class="control-label">Name <span style="color:#B80026;">*</span></label>
      <label class="error" for="name" generated="true"></label>
      <input type="text" name="name" class="form-control" value="" placeholder="Name">
  </div>
  <div class="form-group">
      <label for="company" class="control-label">Company <span style="color:#B80026;">*</span></label>
      <label class="error" for="company" generated="true"></label>
      <input name="company" class="form-control" type="text" placeholder="Company" value="">
  </div>
  <div class="form-group">
      <label for="emailAddress" class="control-label">Email <span style="color:#B80026;">*</span></label>
      <label class="error" for="emailAddress" generated="true"></label>
      <input type="email" name="emailAddress" class="form-control" value="" placeholder="Email">
  </div>
  <div class="form-group">
      <label for="mobilePhone" class="control-label">Phone </label>
      <input type="text" name="mobilePhone" class="form-control" value="" placeholder="Phone">
  </div>
  <div class="checkbox">
      <label style="text-align: left" class="">
      <input id="singleCheckbox" name="singleCheckbox" type="checkbox" value="on">
      YES, I would like to receive product information, service updates, news, events and exclusive customer offers from ECONYL Solutions. 
      </label>
  </div>
	<br/>
	<input type="submit" value="Send" onclick="submit()">
</fieldset>
</form>
<br/>
<footer>
    <div class="footer">
        <img src="img/ECONYNflat.png"><br/>
           ECONYN Co., Ltd. <br/>
           TEL：02-29383355#8818 <br/>
           Copyright © 2021 ECONYN Inc. 保留一切權利。All Rights Reserved<br/>
            <br/>
    </div>
</footer>

<script>
	submit(){
		alert('thanks');
	}
	
</script>

</body>
</html>