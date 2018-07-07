<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/medCommon.css"/>
<title>Change Password</title>
</head>
<body>

<div id="page-wrapper">
		<!-- Header -->
		
		<!-- Header -->
		<div id="content" class="two-column">
			<div id="left-column"
				class="spcolumn top-bar graish corner-all black_bg">
				<h2>Change Your Password</h2>
				<img src="${pageContext.request.contextPath}/resource/left-banner-images/left_image_myprofile.jpg"
					width="216" height="360" border="0" /> <br />
					
				<p id="left-content">Enter a new, unique password, Known only to you.</p>
			</div>
			<div id="right-column" class="spcolumn corner-all">
				<div id="contact-wrap">
					<h1 class="page-title">Change Password</h1>
					<div class="mandatory_feild">
						<span class="red-font">*</span> required fields
					</div>
					<h3 style="color: red; text-align:center">${errorMsg}</h3>
					<h3 style="color: blue; text-align:center">${successMsg}</h3>

					<div class="password_wrap">

					<div id='errorWrap'><ul id="errorContainer" class="border-corner-all"></ul></div>
						<form:form id="changePassword" modelAttribute="changePassword"
							method="post" action="${ctx}/changePassword/update.htm"
							onsubmit="return checkValid();">
							<ul class="chnage_pwd">

								<li><label>Current Password</label>  
								  <form:password path="oldPassword" id="oldPassword"
										title="Current Password required."
										cssClass="required styles {validate:{required:true}}" maxlength="20"/><span
									class="red-font">*</span>
								</li>
								<li><label><form:label path="newPassword">
											<fmt:message bundle="${spMessage}" key="cp.newpassword" />
										</form:label>
								</label>  <form:password path="newPassword" id="newPassword"
										title="New Password required."
										cssClass="required styles {validate:{required:true}}" maxlength="20" />
									<span class="red-font">*</span></li>


								<li><label><label><fmt:message
												bundle="${spMessage}" key="cp.confirmpassword" /> </label> </label>  
												<input id="confirmPassword" name="confirmPassword" type="password" class="styles {validate:{required:true,equalTo: '#newPassword'}}" maxlength="20" />
									<span class="red-font">*</span>
								</li>
								<input type="hidden" name="fromId" value="3" />
								<li class="right_align_btn"><input type="submit"
									tabindex="" class="actionButton" value="UPDATE PASSWORD" /></li>
							</ul>
						</form:form>
						<div id="note_section">
							Note: Enter new and unique password which will meet the following
							criteria.
							<ul>
								<li>between 8 and 20 characters.</li>
								<li>with at least one capital letter.</li>
								<li>With atleast one number.</li>
								<li>With atleast one special character like @, # ,! etc.</li>
								<li>should not match any of the 8 matched.</li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Footer -->
		
		<!-- Footer -->
	</div>

</body>

</html>