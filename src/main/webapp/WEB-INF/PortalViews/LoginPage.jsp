<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ page session="false"%>
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<script src="<c:url value="/resource/theme1/js/userDivCommon.js"/>"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Home</title>

<style type="text/css">
.LoginDiv {
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 0 2px #999 inset;
	margin: 6px 0px;
	min-height: auto;
	padding: 170px;
	
	
	/* width: 35%; */
}

#fbar {
	background: #f2f2f2;
	border-top: 1px solid #111;
	line-height: 40px;
	min-width: 980px;
	font-family: arial, sans-serif;
	margin-top: 540px;
	font-size: normal;
}

#fsr {
	fload: right;
}

.gs {
	padding-left: 27px;
	margin: 0 !important;
}

.userInput {
	border: 1px solid #cdcdcd;
    border-radius: 4px;
    box-shadow: 0 0 1px #eee;
    height: 30px;
    padding: 3px;
    width: 98%;
    transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
}

.fontStyle {
	font-family: sans-serif;
}

h1 {
	font-family: serif;
	font-style: inherit;
	font-color: white;
}

.backroundImageLoad {
	background: url(resource/main-bglogin.jpg) repeat !important;
    margin: 0 auto;
    max-width: 1000px;
    width: 100%;
    overflow: hidden;
    height: 600px;
}

#rotate_popup1 {
	position: fixed;
	left: 0px;
	top: 0px;
	left: 0;
	z-index: 999999;
	background-color: rgba(0, 0, 0, 0.82);
	display: none;
	cursor: not-allowed;
	vertical-align: middle;
	bottom: 0px;
	right: 0px;
}

#rotate_popup1 img {
	position: absolute;
	left: 51%;
	top: 54%;
	transform: translate(-52%, -50%);
	width: 265px;
}

.help-inline {
	font-family: monospace;
	font-style: inherit;
	font-size: 14px;
	color: red;
}

.loginFieldSet {
	width: auto;
	background-color: aliceblue;
	border-radius: 20px;
	border-color: black;
}

.width50 {
    width: 75%;
    border: solid 1px #000000;
    height: 21%;
    border-radius: 5px;
    margin-top: -80px;
    margin-left: 326px;
}

.form-title {
	background-color: #ffffff;
	color: #000000;
	font-weight: bold;
	text-align: left;
}

.row-1 {
	background-color: #d8d8d8;
	color: #000000;
}

.category {
	background-color: #C0C0C0;
	color: #000000;
	font-weight: bold;
	vertical-align: top;
	width: 145px;
}

.row-2 {
	background-color: #e8e8e8;
	color: #000000;
}

.center {
	text-align: center;
}

#header {
	background-image: url(resource/dashboard_bg_new.gif);
	background-repeat: repeat-x;
	width: 1338px;
	height: 68px;
	margin: 0 auto;
}

.top-nav {
	float: left;
	background: url(resource/top-nav.png);
	background-size: 100% 100%;
	height: 59px;
	width: 100%;
	z-index: 10;
}

.login-text {
	font-size: 17px;
    line-height: 25px;
}

.login-box-bg {
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 0 2px #999 inset;
	margin: 70px auto;
	max-width: 350px;
	min-height: 200px;
	padding: 20px;
}

.login-box-bg label {
	margin-top: 5px;
	margin-bottom: 0px;
}

.inpt-bx{
	border: 1px solid #cdcdcd;
    border-radius: 4px;
    box-shadow: 0 0 1px #eee;
    height: 30px;
    padding: 3px;
    width: 98%;
    transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
}
.pr-box-bg{
	background: #f3f3f3;
    border-radius: 10px;
    box-shadow: 0 0 2px #999 inset;
    float: left;
    margin: 20px 15px;
    min-height: auto;
    padding: 20px;
    width: 35%;
}
.footer-panel{
	text-align: center;
    clear: both;
    padding: 200px 0px 10px;
}
.pr-box-bg h2 {
    margin: 0 0 10px;
}
.submiButton{
	width: 66px;
    height: 26px;
    border-radius: 8px;
    border-bottom-color: azure;
    text-transform: uppercase;
}
.UserSetupDiv{
	width: 95px;
    height: 26px;
    border-radius: 8px;
    border-bottom-color: azure;
    text-transform: uppercase;
}
.userDivclass{
 	color: #01ACEE;
    font: bold 16px Tahoma;
    background-color: rgba(0,0,0,0.8) !important;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

#userPopup fieldset{
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    -webkit-transform: translate(-50%,-50%);
    -moz-transform: translate(-50%,-50%);
    -o-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    }

#userPopup fieldset table{
width:100%;
}
.rightDiv{

}

</style>
<% 
String contextPath=request.getContextPath();

%>
<script type="text/javascript">
/* function calluserSetup(){
	 window.location = "/PortalApp/showSetup";
} */
	/* $("#userSetup").on('click', function() {
		alert("bad Request");
		   window.location = "/demo/showSetup";
		}); */

		
function closeUserPopup(){
			document.getElementById('userPopup').style.display="none";
			setTimeout("closeUserPopup", 3000);
		}		
function checkUserValidation(){
			if(document.getElementById('userValidate').value =="Y"){
				document.getElementById('userPopup').style.display="block";
			}
		}	

</script>


</head>
<body onload="checkUserValidation();">
<input type="hidden" name="userValidate" id="userValidate" value="${notValidatedFlag}">
	<div id="rotate_popup1" style="display: none;">
		<img border="0" src="resource/loading Image.png">
	</div>
	
	<div class="backroundImageLoad">
	<form:form method="POST" modelAttribute="logBean"
		action="${pageContext.request.contextPath}/addStudent">
		<div class="top-nav"> 
				
			<h1 align="left">MedBikePortal</h1>
		</div>
					<div  align="right" class="pr-box-bg">
				 <div class="right-mid-login" style="text-align: left;">
				     <h2>Login</h2> 
				    	<div>
				    	<form:errors path="userName" cssClass="help-inline"></form:errors><br>
				    	<form:errors path="passWord" cssClass="help-inline"></form:errors>
				     	</div>
				
				<label class="login-text" for="userName">
				 <form:label  path="userName">User name</form:label></label>
				     <div class="login-box">
				     
				     	<form:input maxlength="20" path="userName"
							cssClass="userInput" />
				      <!--  <input type="text" name="usr_name" maxlength="10" tabindex="1" value="" id="usr_name" class="inpt-bx">        -->     
				     </div>				     
				     <label class="login-text" for="password"><form:label 
							path="passWord">Password</form:label></label>
				     <div class="login-box">    
				     <form:password maxlength="20" path="passWord"
							cssClass="userInput" />
				         </div>
				         <br>
				         
				         
				         
	 <div>
 		<table>
	 		<tr>
	 		<td>
	      	<input type="submit" value="Login" class="submiButton"></td>
	      	<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
	      	<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
	      	<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
	      	<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
	      	<td>&nbsp;</td><td>&nbsp;</td>
	      	<td>
	      	<input type="button" id="userSetup" class="UserSetupDiv" value="Register"onclick="calluserSetup()">
		 	</td>
		 	</tr>
		 	</table>
	 	</div>	
         </div>
        
         
				</div> 		
				
				<div class="rightDiv">
				<img alt="close" class="close" id="exit_List" src="${pageContext.request.contextPath}/backgroundWall/social.png" style="height:120px;">
				</div>
				
			<div id="userPopup" class="userDivclass" style="display: none;">
			<fieldset style="height: 45px;width: 295px;background-color: #A9A9A9;border-radius: 15px;">
			<table>
				<tr>
				<td>You are not Registered!! Please Register</td>
				</tr>
				<tr align="center">
					<td><input type="button" value="OK" onclick="closeUserPopup()">
					</td>
				</tr>
			</table>
			</fieldset>
	
	</div>
				
	<jsp:include page="footer.jsp"></jsp:include>
	</form:form>
	</div>
</body>
</html>
 