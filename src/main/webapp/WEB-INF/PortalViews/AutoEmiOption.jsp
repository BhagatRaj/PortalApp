<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>AddEmiOption</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<style type="text/css">
h1{
 font-family: sans-serif;
    font-style: inherit;
    font-color:white;
     text-decoration: underline;
     font-variant:small-caps;
}

.userInput{
color: #979797;
    height: 20px;
    background-repeat:repeat-x;
    border-radius:5px;
    background-color: whitesmoke;
}
.saveEmi{
	width:79px;
	height:28px;
	padding-left:50px;
}

.EmiOptionDiv{
	width: 1050px; 
	height: 75px; 
	border-radius:10px;
	background-color:antiquewhite;
}

</style>

<script>
function saveEmiOption(){
	var month= $("#month").val();
	var amountPaid= $("#amountPaid").val();
	var dateofPaid= $("#dateofPaid").val();
	var bikeName=$("#bikeName").val();
	 
	alert("month"+month+"amountPaid"+amountPaid+"dateofPaid"+dateofPaid+"bikeName"+bikeName);
	  $.ajax({
		  url:"/PortalApp/MapEmiOption",
		  type:"get",
		  data: "month="+month+"&amountPaid="+amountPaid+"&dateofPaid="+dateofPaid+"&bikeName="+bikeName,
		  dataType:"html",
		  success:function(data){
			  
	 			}
		}); 
}

</script>

</head>
<body> 
<div class="" id="">
<h1>${newKey}</h1>
<h1>Add Emi Option</h1>
<fieldset  class="EmiOptionDiv" >
		<span class="input-group-addon">Month : </span> 
		<input  type="text" maxlength="10" id="month" class="userInput" />
			
		<span class="input-group-addon">Amount to Paid: </span> 
		<input  type="text" maxlength="10" id="amountPaid" class="userInput" />
		
		<span class="input-group-addon">Date of Paid: </span> 
		<input  type="text" maxlength="10" id="dateofPaid" class="userInput" />
		
		<span class="input-group-addon">Bike Name : </span> 
		<input  type="text" maxlength="20" id="bikeName" class="userInput" />
		 
		
		<div style="padding-top: 10px;">
		<input  type="image" src="resource/saving.png" class="saveEmi" id="saveEmi" onclick="saveEmiOption()"/>
		</div>
		</fieldset>
		
</div>	

<jsp:include page="newView.jsp"></jsp:include>

</body>
</html>