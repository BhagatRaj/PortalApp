<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Credit Details</title>

 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  


<style type="text/css">

 .frm-txt{font-size: 14px; padding-top: 15px;text-align: left;}
 .body {margin: 10px;padding: 0;color: #000;font-family: Arial, Helvetica, sans-serif;font-size:13px; }
 .pd-B15{padding-bottom: 15px;}

.laptop-user-input{
border-radius: 5px;
border-color: lightgrey;
width:150px;
} 

.showCreditDiv{
background-image: url(${pageContext.request.contextPath}/backgroundWall/background6.jpg);
	margin: 0 auto;
	min-height: 335px;
	height: auto;
	border-radius: 8px;
}
.card-input{
    padding: 1px 30px 0px 10px;
    width: 63%;
    color: #454545;
    box-sizing: border-box;
}

 h1 {
    font-family: serif;
    font-style: inherit;
    font-color:white;
     text-decoration: none;
} 


.top-bar.black {background: #fff url(${pageContext.request.contextPath}/backgroundWall/topbar-bg-black.jpg) repeat-x top;}

.top-bar h1.innerHd,.top-bar h2.innerHd {line-height: normal;padding-top: 8px;height: 34px;}
.top-bar h1,.top-bar h2 {font-size: 14px;font-weight: bold;line-height: 42px;padding-left: 15px;text-transform: uppercase;color: #E9E9E9;}

.top-bar.black.quote-box p{background-color: #403838;color: #f9eeee;font-weight: bold;padding: 1px 100px;position: absolute;right: 10px;top: 0px;}
.getDetails{background: #716d6c;
    color: #fff;
    padding: 3px 12px;
    border-radius: 10px;
    border: solid 2px #887e7a;
    outline: 0;}
    
 .listofExpense{   
   font-size: 14px;
    font-weight: bold;
    line-height: 42px;
    padding-left: 15px;
    text-transform: uppercase;
    color: #968b8b;
    
    } 
</style>


  
<script type="text/javascript">
$( function() {
    $("#cardDate").datepicker({  maxDate: new Date() });
  } );
	
	
	function getCardNumber(currentValue){
		var currentValue=currentValue.value;
		alert(currentValue);


		
		
		 $.ajax({
			url:'/PortalApp/CreditController/getcardNumber',
			type:'GET',
			dataType:'html',
			data:'cardName='+currentValue,
			
			success:function(data){
				console.log(data);
				var autData=data;
				if(autData == ''){
					document.getElementById('warning-pop').style.display='block';
				}else{
					document.getElementById('listOfEmiDetails').style.display='block';
					document.getElementById("cardNa").innerHTML =autData[0];
					document.getElementById("cardNu").innerHTML =autData[1];
					document.getElementById("expense").innerHTML =autData[2];
					document.getElementById("expenseYr").innerHTML =autData[3];
					document.getElementById("expenseDesc").innerHTML =autData[4];
					document.getElementById("typeCard").innerHTML =autData[5];
					document.getElementById("userCard").innerHTML =autData[6];
				}
			},
			error: function(result){
				
				alert("No data Found");
				
			}
		}); 
	}
	
function getCardDetails(){
	var cardName=document.getElementById('cardName').value;
	var cardNum=document.getElementById('cardNum').value;
	var cardDate=document.getElementById('cardDate').value;

	if(cardName==""|| cardNum=="" || cardDate==""){
		alert('All Field Required');
		return false;
	}
 
	
	
	 $.ajax({
		url:'/PortalApp/CreditController/showCreditDetialsForCard',
		type:'GET',
		dataType:'json',
		data:'cardName='+cardName+'&cardNum='+cardNum+'&cardDate='+cardDate,
		
		success:function(data){
			console.log(data);
			var autData=data;
			if(autData == ''){
				document.getElementById('warning-pop').style.display='block';
			}else{
				document.getElementById('listOfEmiDetails').style.display='block';
				document.getElementById("cardNa").innerHTML =autData[0];
				document.getElementById("cardNu").innerHTML =autData[1];
				document.getElementById("expense").innerHTML =autData[2];
				document.getElementById("expenseYr").innerHTML =autData[3];
				document.getElementById("expenseDesc").innerHTML =autData[4];
				document.getElementById("typeCard").innerHTML =autData[5];
				document.getElementById("userCard").innerHTML =autData[6];
			}
		},
		error: function(result){
			
			document.getElementById("cardNa").innerHTML ='';
			document.getElementById("cardNu").innerHTML ='';
			document.getElementById("expense").innerHTML ='';
			document.getElementById("expenseYr").innerHTML ='';
			document.getElementById("expenseDesc").innerHTML ='';
			document.getElementById("typeCard").innerHTML ='';
			document.getElementById("userCard").innerHTML ='';
			document.getElementById('warning-pop').style.display='block';
			
		}
	}); 
}
</script>
</head>
<body class="body">

<input type="hidden" name="listofemi" id="listofemi" value="${requestScope.emiListForCreditDetails}"/>
<div style="width: 100%; float: left;  border-top-left-radius: 4px;  border-top-right-radius: 4px; margin-bottom: 0px" class="top-bar black quote-box">
	<h1 class="innerHd">Show Credit Details</h1>


<p class="corner-button-style" style="border-radius: 15px;">
						Welcome
						<span>${userName}</span>
					</p>

<div class="showCreditDiv">
<div class="creditDiv" style=" background: #e2e8ca;  width: 1286px; font:normal 11px/48px Arial, sans-serif; font-weight: bold; line-height: 0px; padding-left: 0px;  text-transform: uppercase;
    color: #7d0404;">
		<fieldset style="border-radius:10px;">
			<legend></legend>
				<table>
					<tr>
					<td class="frm-txt pd-B15">
					<strong>Card Name:</strong> </td>
					<td>
					<select id="cardName" class="laptop-user-input" name="cardName" onchange="getCardNumber(this)">
						<option value="select">Select</option>
						<option value="HDFC">HDFC</option>
						<option value="AXIS">AXIS</option>
						<option value="Bank of Baroda">Bank of Baroda</option>
						<option value="SBI">SBI</option> 
						</select>
					</td>
					<td class="frm-txt pd-B15">
					<strong>Card Number: </strong><input type="text" name="cardNum" id="cardNum" class="card-input"/>
					</td>
					<td class="frm-txt pd-B15">
					<strong>Date: </strong><input type="text" name="cardDate" id="cardDate" class="card-input"/>
					</td>
					
					<td><input type="button" value="Get Details"  class="getDetails" onclick="getCardDetails()">
					</td>
					</tr>
					<tr>
					<td>
					<div align="center">
		<a href="/PortalApp/Exit" id="">
			<img alt="close" class="close" id="exit_List" src="${pageContext.request.contextPath}/resource/exit_btn_popup.gif"></a>
		</div>
	
					</td>
					</tr>
				</table>			
		</fieldset>
	</div>
	
	
	
	<div id="listOfEmiDetails" class="listOfEmiDetails" style="display: none;">
	
			<h3 class="listofExpense">List of Expense</h3>
			
	<table width="100%" border="0">
	<thead>
		<tr>
		<th width="10%">CardName </th>
		<th width="10%">CardNumber </th>
		<th width="10%">Expense</th>
		<th width="10%">Expense Year</th>
		<th width="30%">Expense Description</th>
		<th width="10%">CardType</th>
		<th width="10%">CardUser</th>
		</tr>
	</thead>
	<tbody>

<tr style=" font-family: monospace; color: rebeccapurple; text-align: center;">
<td id="cardNa">
	</td>
	<td id="cardNu">
	</td>
	<td id="expense">
	</td>
	<td id="expenseYr">
	</td>
		<td id="expenseDesc">
	</td>
		<td id="typeCard">
	</td>
		<td id="userCard">
	</td>
</tr>
		
	</tbody>
	</table>
	</div>
	<div style="display: none; font-size: 28px;color: red;text-align:  center;font-family: monospace;" class="warning-pop" id="warning-pop" class="warning-pop" id="warning-pop">
		<h3>No Data Found</h3>
		
	</div>
	
	</div>
	</div>
	</body>
	
	
</html>