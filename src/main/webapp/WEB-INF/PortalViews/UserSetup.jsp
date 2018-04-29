<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<title>Register</title>
<style type="text/css">
.mandatory_feild {
	margin-left: 50px;
}

.userSetupDiv {
	background-image: url(backgroundWall/background6.jpg);
	margin: 0 auto;
	min-height: 250px;
	height: auto;
	padding: 40px 8px;
	border-radius: 8px;
}

.user-icons {
	background: url(resource/black-bg6.png) 0 0 no-repeat;
	margin: 0px;
	padding: 0px;
	height: 28px;
	width: 247px;
	position: absolute;
	right: 0px;
	top: 10px;
}

li {
	display: inline;
	float: left;
}
/* li a {
    display: block;
    color: #17202A;
    text-align: center;
    padding: 1px 10px;
   	text-decoration: initial;
    font-size: 22px;
    font-style: normal;
}
li a:hover:not(.active) {
    background-color: #ddd;
} */
.header {
	background-image: url(resource/disbursment_popup_bluestrip.gif);
	background-repeat: round;
	width: 860px;
	height: 30px;
	margin: 0 auto;
}

.userSetupInput {
	width: 291px;
	height: 22px;
	border-radius: 6px;
	background-color: aliceblue;
}

.footer-panel {
	text-align: center;
	clear: both;
	padding: 200px 0px 10px;
}

legend {
	border-bottom: 3px solid #333;
	display: block;
	width: 100%;
	font-size: 24px;
	font-family: "Times New Roman", Times, serif;
	color: #444;
	padding: 0px 0 0;
	margin: 0 0 10px;
	clear: both;
}

fieldset {
	border: none;
	padding: 10px;
	margin: 0px;
}

.two-column #left-column {
	float: left;
	width: 216px
}

#left-column p {
	padding: 15px;
	font-size: 11px;
}

#left-content {
	color: #E9E9E9;
}

#contact-wrap ul {
	float: left;
	padding: 20px 0;
	color: #666666;
}

li {
	font: normal 11px/18px Arial, sans-serif;
	margin: 0;
	padding: 0;
	list-style: none;
}

ul {
	display: block;
	list-style-type: disc;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 40px;
}

#contact-wrap ul li {
	width: 340px;
	padding-bottom: 10px;
}

#contact-wrap ul li input {
	width: 176px;
}

#contact-wrap ul li label {
	width: 135px;
}

#contact-wrap ul li label {
	display: block;
	float: left;
	font-size: 14px;
	color: #631616;
}
.top-bar.black {background: #fff url(/PortalApp/backgroundWall/topbar-bg-black.jpg) repeat-x top;}
.top-bar h1.innerHd,.top-bar h2.innerHd {    line-height: normal; padding-top: 7px; height: 25px; font-family: initial; font-size: 25px; color: white;}
</style>
<script type="text/javascript">
 /* 
 $("#userRegistrationForm").validate({

	//specify the validation rules
	 rules: {
	 user_FirstName: "required",
	 user_LastName: "required",
	 user_Email: {
	 required: true,
	 user_Email: true //email is required AND must be in the form of a valid email address
	 },
	 user_Pass: {
	 required: true,
	 minlength: 6
	 }
	 },
	  
	 //specify validation error messages
	 messages: {
	 user_FirstName: "First Name field cannot be blank!",
	 user_LastName: "Last Name field cannot be blank!",
	 user_Pass: {
	 required: "Password field cannot be blank!",
	 minlength: "Your password must be at least 6 characters long"
	 },
	 user_Email: "Please enter a valid email address"
	 },
 }); */
 
 
 $(document).ready(function(){
	    var userFlag=$("#userSetupFlag").val();
		if(userFlag=='save'){
			
		}	
 });
 
function exitFromCredDetails(){
	window.location = "/PortalApp/CreditController/exitFromCredit";
	
}

$( function() {
    $( "#user_DateOfBirth" ).datepicker();
  } );

  
</script>


</head>
<body>
	<input type="hidden" name="userSetupFlag" id="userSetupFlag"
		value="${userSetupFlag}">

	<div style="width: 100%;border-top-left-radius: 4px;borde;border-top-right-radius: 4px;margin-bottom: 0px;" class="top-bar black quote-box">
	<h1 class="innerHd">Registration</h1>
	<form:form
		action="${pageContext.request.contextPath}/userRegController/saverUserRegistration"
		method="POST" modelAttribute="userRegister" id="userRegistrationForm">
		<!-- <div id="left-column" class="spcolumn top-bar graish corner-all white-bg" style="border-radius: 4px; height: 606px;">
			<h2>Contact <span>Salary Plan</span></h2>
			<img src="/resources/images/left-banner-images/left_image_contactus.jpg" width="216" height="360" border="0"><br>
			<p id="left-content">For any queries or clarifications, please complete the form on your right and click the CONTACT US button or you may reach us at 1860 500 5050 , 1860 419 5050  or reachus@salaryplan.co.in </p>
					<p id="left-content">For all insurance related queries you can call at 011-66422888</p>
		
		</div> -->
		<fieldset style="border-color: black;">
			<div class="userSetupDiv">
				<div id="contact-wrap">
					<h1 class="page-title">Register User</h1>
					<div class="mandatory_feild">
						<span>*</span> required fields
					</div>
					<div style="clear: both; height: 180px;">
						<ul style="padding: 30px 0 0 60px">
							<li><label for=user_FirstName>First Name: </label> <input
								type="text" name="user_FirstName" id="user_FirstName"
								tabindex="1" value="" title="Please enter your First Name"
								maxlength="40" required><span class="red-font">*</span></li>
							<li><label for="user_LastName">Last Name: </label> <input
								type="text" name="user_LastName" id="user_LastName" tabindex="1"
								value="" title="Please enter your Last Name" maxlength="40" required><span
								class="red-font">*</span></li>

							<li><label for="user_DateOfBirth">Date of Birth: </label> <input
								type="text" name="user_DateOfBirth" id="user_DateOfBirth"
								tabindex="1" value="" title="Please enter your Date of Birth" 
								maxlength="40" placeholder="MM/DD/YYYY" required><span class="red-font">*</span></li>
							<li><label for="user_Email">Email: </label> <input
								type="email" name="user_Email" id="user_Email" tabindex="1"
								value="" title="Please enter your Email Id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" maxlength="40" required><span
								class="red-font">*</span></li>

							<li><label for="user_MobNo">Mobile No: </label> <input
								type="tel" name="user_MobNo" id="user_MobNo" tabindex="1"
								value="" title="Please enter your Mob No."   maxlength="10" required><span
								class="red-font">*</span></li>
							<li><label for="user_Name">UserName: </label> <input
								type="text" name="user_Name" id="user_Name" tabindex="1"
								value="" title="Please enter your User." maxlength="40" required><span
								class="red-font">*</span></li>
							<li><label for="user_Pass">UserPassword: </label> <input
								type="password" name="user_Pass" id="user_Pass" tabindex="1"
								value="" title="Please enter your password" maxlength="40" required><span
								class="red-font">*</span></li>

						</ul>
						<input type="submit" id="submitForm" value="Register" class="btn btn-success"/>
					</div>
				</div>
				<div align="right">
					<input type="button" value="Exit" class="btn btn-success"
						onclick="exitFromCredDetails()">
				</div>
			</div>
			<div class="footer-panel">
				<p class="center">
					© 2017 - All Rights Reserved - MedBikePortal | <a href="#">Terms
						of use</a> | <a href="#">Privacy Policy</a> <span class="better-view">Best
						viewed in Google Chrome.</span>
				</p>
			</div>
		</fieldset>
	</form:form>
	</div>
</body>
</html>