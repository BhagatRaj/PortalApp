<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/medCommon.css"/>

<title>view Profile</title>
<script type="text/javascript">
function exitFromCredDetails(){
	window.location = "/PortalApp/CreditController/exitFromCredit";
	
}
</script>

</head>
<body>
<div class="heading-Profile">
<h1 class="page-title">View Profile</h1>
</div>
<div id="content" class="two-column">
<div id="left-column" class="spcolumn top-bar graish corner-all black_bg" style="border-radius: 4px; height: 551px;">
			<h2 class="gray">WELCOME TO PROFILE</h2>
	<img src="${pageContext.request.contextPath}/resource/left-banner-images/left_image_myprofile.jpg" width="216" height="360" border="0"><br>			
	<p id="left-content">
			Update and Manage your profile or change your password here.
			</p>
		</div>

<div id="right-column" class="spcolumn corner-all" style="border-radius: 4px; height: 551px;">
				<div id="viewProfile">
				<div style="overflow: auto;
				    padding-bottom: 20px;">	
				<ul class="left-row">
				 <li>
								   <label class="heading">Name:</label><span>${regBeanModel.user_FirstName}</span>
								   </li>
								     <li>
								   <label class="heading">Last Name:</label><span>${regBeanModel.user_LastName}</span>
								   </li>
								     <li>
								   <label class="heading">DOB :</label><span>${regBeanModel.user_DateOfBirth}</span>
								   </li>
								     <li>
								   <label class="heading">UserName :</label><span>${regBeanModel.user_Name}</span>
								   </li>
								    <li>
								   <label class="heading">Email :</label><span>${regBeanModel.user_Email}</span>
								   </li>
								    <li>
								   <label class="heading">Address :</label><span>${regBeanModel.user_address}</span>
								   </li>
				
				</ul>
				
				 <ul class="right-row">
								   <li>
								   <label class="heading">Pin Code:</label><span>${regBeanModel.user_pinCode}</span>
								   </li>
								    <li>
								   <label class="heading">Pan No :</label><span>${regBeanModel.user_pan}</span>
								   </li>
								    <li>
								   <label class="heading">Adhaar No:</label><span>${regBeanModel.user_adhaar}</span>
								   </li>
								    <li>
								   <label class="heading">UAN :</label><span>${regBeanModel.user_uan}</span>
								   </li>
								    <li>
								   <label class="heading">Mob No :</label><span>${regBeanModel.user_MobNo}</span>
								   </li>
				
								   </ul>
				
				</div>
		</div>
			<div class="right-align">
				<div class="right-btn">
					<span class="btnWrap" onclick="document.location.href='/PortalApp/userRegController/changePassword'"><span class="btnbgRight"><span style="color: rgb(255, 255, 255); line-height: 24px;" class="btnTxt">CHANGE PASSWORD</span></span></span>
					<a href="/PortalApp/Exit" class="button"><span>Cancel</span></a>
				</div>				
				<div class="left-btn">
					<span class="btnWrap" onclick="document.location.href='editProfile.htm'">
					<span class="btnbgRight"><span style="color: rgb(255, 255, 255); line-height: 24px;" class="btnTxt">EDIT PROFILE</span></span></span>
				</div>				
				</div>
</div>
</div>

</body>
</html>