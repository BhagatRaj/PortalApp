<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>creditDetailsTab</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
 
</head>
<body>
 
<div id="tabs" style="height: 450px;">
  <ul>
    <li><a href="#tabs-1" id="first">Credit Details</a></li>
    <li><a href="#tabs-2" id="second">Credit List Details</a></li>   			
  </ul>
  <div id="tabs-1">
  <jsp:include page="showCreditDetails.jsp"></jsp:include>
  </div>
  <div id="tabs-2">
   <jsp:include page="CardDetailsForUser.jsp"></jsp:include>
  </div>
 
</div>
 
 
</body>
</html>