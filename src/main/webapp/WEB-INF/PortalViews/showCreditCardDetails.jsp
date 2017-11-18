<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
function getCardDetails(){
	var cardName=document.getElementById('cardName').value;
	var cardNum=document.getElementById('cardNum').value;
	
	if(cardName==""|| cardNum==""){
		alert('Mandatory Field Required');
		return false;
	}
	
	$.ajax({
		
		url:'/PortalApp/CreditController/showCreditDetialsForCard',
		type:'GET',
		data:'cardName='+cardName+'&cardNum='+cardNum,
		dataType:'html',	
		success:function(data){
			console.log("responseData "+data);
			
			
			document.getElementById('listOfEmiDetails').style.display='block';
			
		}
	});
}
</script>
</head>
<body>
<input type="hidden" name="listofemi" id="listofemi" value="${sessionScope.emiListForCreditDetails}"/>
	<div>
		<fieldset>
			<legend></legend>
				<table>
					<tr>
					<td>
					<strong>CardName:</strong> <input type="text" name="cardName" id="cardName"/>
					</td>
					<td>
					<strong>CardNumber: </strong><input type="text" name="cardNum" id="cardNum"/>
					</td>
					<td><input type="button" value="Get Details" onclick="getCardDetails()">
					</td>
					</tr>
				</table>			
		</fieldset>
	</div>
	<div id="listOfEmiDetails" class="listOfEmiDetails" style="display: none;">
			<h1>List of Emi</h1>
	<table>
	<thead>
		<tr>
		<th>Date </th>
		</tr>
	</thead>
	<tbody>
<c:forEach var="emiListValue" items="${emiListForCreditDetails}">
<tr>
<td>
	${emiListValue.cardName}
</td>
</tr>
</c:forEach>			
	</tbody>
	</table>
	
	</div>
</body>
</html>