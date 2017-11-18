<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
.laptop-user-input{
border-radius: 5px;
border-color: lightgrey;
margin-left: 80px;
}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
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
	<form:form action="${pageContext.request.contextPath}/submitlaptopEmi" method="POST" modelAttribute="laptopEmiBean">        	
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
        				<td><input type="text" name="lapName" id="lapName" class="laptop-user-input"></td>
        				<td><input type="text" name="lapModel" id="lapModel" class="laptop-user-input"></td>
        				<td><input type="text" name="lapPurchaseDate" id="lapPurchaseDate" class="laptop-user-input"></td>
        				<td><input type="text" name="lapPurchaseEmi" id="lapPurchaseEmi" class="laptop-user-input"></td>
        				
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
</body>
</html>