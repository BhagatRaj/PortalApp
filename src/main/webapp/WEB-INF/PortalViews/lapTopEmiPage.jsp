<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
.laptop-user-input{
border-radius: 5px;
border-color: lightgrey;
margin-left: 80px;
width:150px;
}

.footer-panel{
	text-align: center;
    clear: both;
    padding: 200px 0px 10px;
}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">
.lapViewBackround{
background-image: url(backgroundWall/lightorangeback.jpg);
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LaptopEmi</title>
<script type="text/javascript">
$( function() {
    $( "#lapPurchaseDate" ).datepicker();
  } );
	
</script>
</head>
<body class="lapViewBackround">


<div>
	<form:form action="${pageContext.request.contextPath}/submitlaptopEmi" method="POST" modelAttribute="laptopEmiBean" id="laptopEmiForm">        	
        	<div align="center">
        		<h1><u>Laptop</u></h1>
        	</div>
        	<div>
        	<table class="table table-striped" style="width: 100%">
        		<thead>
        		<tr style="background-color: cadetblue;">
        			<th width="25%">Laptop Name:</th>
        			<th width="25%">Laptop Model:</th>
        			<th width="25%">Laptop Purchase Date:</th>	
        			<th width="25%">Laptop Purchase Emi:</th>
        			
        		</tr>
        		</thead>
        		<tbody>
        			<tr>
        				<td>
        				<select id="lapName" name="lapName" class="laptop-user-input">
        				
        				<option value="select">Select</option>
        				<c:forEach var="iterateMapDetails" items="${laptopEmiBean}">
        				<option value="${ iterateMapDetails.key}">${iterateMapDetails.value}</option>
        				</c:forEach>
        				</select>
        				</td>
        				<td><input type="text" name="lapModel" id="lapModel" class="laptop-user-input" required></td>
        				<td><input type="text" name="lapPurchaseDate" id="lapPurchaseDate" class="laptop-user-input" required></td>
        				<td><input type="text" name="lapPurchaseEmi" id="lapPurchaseEmi" class="laptop-user-input" required></td>
        				
        			</tr>
        		</tbody>
        	</table>
        	
        	<div>&nbsp;</div>
        	<div>&nbsp;</div>
        	<div>&nbsp;</div>
        	</div>
        	<div align="left">
        				<input type="submit" value="Submit"/>
        			</div>
        	<div align="right">
        		<a href="/PortalApp/Exit" id="">
			<img alt="close" class="close" id="exitAddEmi" src="resource/exit_btn_popup.gif"></a>
        	</div>		
        	
        </form:form>
       
</div>

<div class="footer-panel">
		<p class="center">© 2017 - All Rights Reserved - MedBikePortal  | <a href="#">Terms of use</a> | <a href="#">Privacy Policy</a>
		<span class="better-view">Best viewed in Google Chrome.</span></p>
</div>

</body>
</html>