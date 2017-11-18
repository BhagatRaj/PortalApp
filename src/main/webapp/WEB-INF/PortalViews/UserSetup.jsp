<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
.userSetupDiv{
	background-image: url(backgroundWall/background6.jpg);
    margin: 0 auto;
    min-height: 250px;
    height: auto;
    padding: 40px 8px;
}
.user-icons{
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
li a {
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
}
.header{
	background-image:  url(resource/disbursment_popup_bluestrip.gif);
    background-repeat: round;
    width: 860px;
    height: 30px;
    margin: 0 auto;
	
}
.userSetupInput{
	width: 291px;
    height: 22px;
    border-radius: 6px;
    background-color: aliceblue;
}
</style>
 <script type="text/javascript">
function addSetupUser(){
	var userName=$("#userSetup").val();
	var userPass=$("#userPass").val();
	
	$.ajax({
		  url:"/PortalApp/doSetup",
		  type:"POST",
		  data: "userName="+userName+"&userPass="+userPass,
		  dataType:"html",
		  success:function(data){
			alert(data); 
			return false;
		  }
		  });
}

</script> 
</head>	
<body>
<div>
  	<jsp:include page="nav-bar.jsp"/>
  </div>
	<form id="UserSetupForm" action="/PortalApp/doSetup">
	<div class="header">
	<h2 align="center">User Setup</h2>
	</div>
	<div class="userSetupDiv">
			
			<fieldset style="border-color: black;">
			<table align="center" cellpadding="0" cellspacing="0">			
				<tr>
				<td style="font-family: verdana; font-size: x-large; font-variant: small-caps;">
					Resource UserName:<input type="text" name="userSetup" id="userSetup" class="userSetupInput">
				</td>
				<td>
				&nbsp;
				</td>
				<td style="font-family: verdana; font-size: x-large; font-variant: small-caps;">
					Resource Password:<input type="password" name="userPass" id="userPass" class="userSetupInput">
				</td>
				
				</tr>
			</table>
			</fieldset>
			<div align="center">
				<input type="submit" value="Add" name="Add" id="Add" onclick="addSetupUser()" />
			</div>
			
	</div>
	</form>
</body>
</html>