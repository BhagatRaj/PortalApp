<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<title>AutoMobilePortal</title>

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="<c:url value="/resource/theme1/js/userDivCommon.js"/>"></script>
<style type="text/css">
.login {
	background-image: url(backgroundImage/back.jpg);
}
.bodyBackground{
	background-image: url(bodybackground/images.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	width: 84em;
	height:10em;
}
.bikeImage{
	background-image: url(bodybackground/avenger220 streeet.jpg);
}
 h1 {
    font-family: serif;
    font-style: inherit;
    font-color:white;
     text-decoration: underline;
} 
/* ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #273746;
	background-color: #148F77;
}
li {
	 display: inline;
	 float: left;
   	 
}
li a {
    display: block;
    color: #17202A;
    text-align: center;
    padding: 14px 16px;
   	text-decoration: initial;
    font-size: 22px;
    font-style: normal;
}
 */li a:hover:not(.active) {
    background-color: #ddd;
}
#fbar{
	background:#f2f2f2;
	border-top:1px solid #e4e4e4;
	line-height:40px;
	min-width:980px; 
	font-family: arial,sans-serif;
	margin-top:400px;
	font-size: normal;
}
.gs{
	padding-left:27px;
	margin:0 !important;
}

#fsr{
	fload:right;
}
a{
	color:#666;
}

.displayAutMob{
padding-left:0px;
margin-top: 0px;
padding:76px;
}
.totalEmiDiv{
padding-left:0px;
margin-top: 0px;
padding:76px;

}

.backroundImageWallPaper{
	background-image: url(backgroundWall/background1.jpg);

}
.modelNum{
	width: 170px;
	background-color: floralwhite;
	background-position: 10px 10px;
	border-radius:4px;
	height:31px;
}
.datepicker{
	width: 150px;
	background-color: floralwhite;
	background-position: 10px 10px;
	border-radius:4px;
	height:22px;
}

#searchLoader{
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


#serachLoader img{
position: absolute;
    left: 51%;
    top: 54%;
    transform: translate(-52%,-50%);
    width: 265px;
}
</style>

<script type="text/javascript">
 $(function(){
	$("#datepicker").datepicker();
});
 
 
 <%
 	String path=request.getContextPath();
 %>
function submitData(){
	
	
    var modelNum=$("#modelNum").val();
    var datepicker=$("#datepicker").val();
    if(modelNum=="" || datepicker==""){
    	
    	alert("Please enter the field");
    	return false;
    }
	document.getElementById("searchLoader").style.display = "block";
	$.ajax({
		  url:"/PortalApp/showDetailsforAutMob",
		  type:"GET",
		  data: "modelNum="+modelNum+"&datepicker="+datepicker,
		  dataType:"html",
		  success:function(data){
			  document.getElementById("searchLoader").style.display = "none"; 
			  console.log("before Replaced"+data);
			 var autData=data.replace(/[[\]]/g,'');
			 console.log("after Replaced"+autData);
			 autData=autData.replace(/["']/g, "");
			 autData=autData.split(",");
			 console.log("after Split"+autData);
			 
			  for(var i=0; i<autData.length; i++){
				  document.getElementById("displayAutMob").style.display = "block";
				  
				  document.getElementById("modelNumtd").innerHTML =autData[0]; 
				  document.getElementById("dateOfpurchasetd").innerHTML =autData[1];
				  document.getElementById("engineCCtd").innerHTML =autData[2];
				  document.getElementById("mileagetd").innerHTML =autData[3];
				  document.getElementById("topSpeedtd").innerHTML =autData[4];
			  
			  }
		  }
		});
    
}
 
 function calculateEmi(){
	 alert("function called");
	 var modelNum=$("#modelNum").val(); 
	  document.getElementById("displayAutoForm").action="/PortalApp/calculateEmi?modelNum="+modelNum;
	  document.getElementById("displayAutoForm").submit();
}	

</script>
</head>
<body class="backroundImageWallPaper">
<div> 	
  	<jsp:include page="nav-bar.jsp"/>
  </div>

<div class="bikeImage">
</div>
<div align="center" class="mainDiv" id="mainDiv" >
<h1>${newKey}</h1>
<h1>AutoMobilePortal</h1>
<fieldset class="login" style="width: 47%"><legend>
</legend>
<table width="100%">
	<tr>
		<td class="">
		<table>
			<tbody>
				<tr>
					<td class=""><B>Model Name</B>:</td>
					<td><select id="modelNum" class="modelNum" name="modelNum">
						<option value="select">Select</option>
						<option value="Bajaj Avenger Street">Bajaj Avenger Street</option>
						<option value="Royal Enfield">Royal Enfield</option>
						<option value="Ktm">Ktm</option>
						<option value="Harley Davidson">Harley Davidson</option>
						<option value="Tvs Apache">Tvs Apache</option>
						<option value="Tvs Sport">Tvs Sport</option>
						<option value="Hero Honda">Hero Honda</option>
					</select></td>
					<td class="" align="right"><B>Year of Purchase</B>:</td>
					<td><input type="text" name="datepicker"  class="datepicker" id="datepicker" /></td>
				</tr>
				<tr>
					<td align="center"></td>
					<td><input type="submit"  value="Search" name="submitData" id="submitData" onclick="submitData()"></td>
					
				</tr>
			</tbody>
		</table>
		</td>
	</tr>
</table>
</fieldset>

</div>
<div id="searchLoader" style="display: none;"><img alt="backLoading" src="resource/images.png">
</div>
 <form:form id="displayAutoForm">
<div  id="displayAutMob" class="displayAutMob" style="display: none;" >
		 <h1>Details Of Bike</h1>
		<table border="1" width="100%" cellpadding="0" style="background:silver;">  
	<tr><th align="left" width="20%">ModelName</th>
	<th align="left" width="20%">DateOfPurchase</th>
	<th align="left" width="10%">Engine CC</th>
	<th align="left" width="10%">Mileage</th>
	<th align="left" width="20%">TopSpeed</th>
	</tr>  
 
	 <tr>  
  	 <td id="modelNumtd"></td>  
  	  <td id="dateOfpurchasetd"></td>  
  	   <td id="engineCCtd"></td>  
  	    <td id="mileagetd"></td>  
  	     <td id="topSpeedtd"></td>    	
  	 </tr>
   </table>
   <div>
   </div>  

</div>
</form:form>
<div  id="totalEmiDiv" class="totalEmiDiv" style="display: none;" >
		 <h1>Total Emi List</h1>
		<table border="1" width="100%" cellpadding="0" style="background:#8FBC8F;">  
	<tr><th align="left" width="20%">Month</th>
	<th align="left" width="20%">Amount</th>
	<th align="left" width="10%">Date of Paid</th>
	<th align="left" width="10%">Bike Name</th>
	
	</tr>  
 
	 <tr>  
  	 <td id="EmiMonthtd"></td>  
  	  <td id="emiAmounttd"></td>  
  	   <td id="dateOfPaidtd"></td>  
  	    <td id="nameOfBiketd"></td>   	
  	 </tr>
   </table>
   <div>
   <table>
   	<tr>
   	
   </table>
   </div>  

</div>

<div class="_dQc _E2" id="fbar">
<div class="fbar">
	<span class="hrefLink" id="fsr">
		<a class="gs" href="//www.google.co.in/intl/en/policies/privacy/?fg=1">Privacy</a>
		<a class="gs" href="//www.google.co.in/intl/en/policies/terms/?fg=1">Terms</a>
		<span style="display:inline-block;position:relative;">
			<a class="gs" href="https://www.google.co.in/preferences?hl=en">Settings</a>
		</span>
		
	</span>
</div>
</div>
 <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>