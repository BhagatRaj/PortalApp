<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<div class="wrapper" style="background-color: cadetblue;">
  <head>
    <title>Credit Details</title>
    
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.credit-user-input{
border-radius: 5px;
border-color: lightgrey;
}
</style>
<script type="text/javascript">

function exitFromCredDetails(){
	window.location = "/PortalApp/CreditController/exitFromCredit";
	
}
</script>

    
  </head>
  <body>
  <div>
  	<jsp:include page="nav-bar.jsp"/>
  </div>
        <div>
        <form:form action="${pageContext.request.contextPath}/CreditController/submiCreditDetails" method="POST" modelAttribute="creditCardBean">
        	<table class="table table-striped" style="width: 100%">
        		<thead>
        		<tr style="background-color: mediumseagreen;">
        			<th width="10%">CardName:</th>
        			<th width="20%">CardNumber:</th>
        			<th width="20%">CreditExpanse:</th>
        			<th width="20%">Month:</th>
        			<th width="20%">Year:</th>
        			<th width="10%">Status:</th>
        			<th width="10%">CardType:</th>
        			
        		</tr>
        		</thead>
        		<tbody>
        			<tr>
        				<td><input type="text" name="cardName" id="cardName" class="credit-user-input"></td>
        				<td><input type="text" name="cardNum" id="cardNum" class="credit-user-input"></td>
        				<td><input type="text" name="creditExpAm" id="creditExpAm" class="credit-user-input"></td>
        				<td><input type="text" name="creditExpMonth" id="creditExpMonth" class="credit-user-input"></td>
        				<td><input type="text" name="creditExpYear" id="creditExpYear" class="credit-user-input"></td>
        				<td><select id="cardStatus" name="cardStatus" class="credit-user-input">
        					<option value="paid">Paid</option>
        					<option value="nPaid">Not Paid</option>
        				</select>
        				</td>
        				<td><select id="cardType" name="cardType" class="credit-user-input">
        					 <option value="debit">Debit</option>
  							 <option value="credit">Credit</option>
        				</select></td>
        			</tr>
        		</tbody>
        	<!-- 	<tr>
        		<td>	
        		Fill the description:
        		<textarea rows="8" cols="50" name="comment" id="comment" style="width: 360%;border-color: black;border-radius: 2px;">
					</textarea> 
					</td>
					</tr> -->
        		</table>
        		<div align="center">
        			
      				<textarea rows="8" cols="100" name="comment" id="comment" style="border-color: black;border-radius: 2px;">
					</textarea>   		
        		</div>
        		
        		<!-- <div>
        			
        			<img alt="backLoading" src="resource/enroll-now-button.jpg">
        		</div> -->
        	<tr>
        	<td>	
        	<div align="left">
        		<input type="submit" value="Add" class="btn btn-success"/>
        	</div>
        	
        	<div align="right">
        		<input type="button" value="Exit" class="btn btn-success" onclick="exitFromCredDetails()"/>
        	</div>
        	</td>
        	</tr>
        </form:form>
        </div>
      <!--   <div>
        <a class="btn btn-success" href="#">Add</a>
        </div> -->
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  </body>
</div><!--End wrapper fullwidth-->
</html>