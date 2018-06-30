<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

  <head>
    <title>Credit Details</title>
    
  


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<style type="text/css">

.creditCardAdd{
background-image: url(${pageContext.request.contextPath}/backgroundWall/background6.jpg);
height: 270px;
}


.credit-user-input{
border-radius: 5px;
border-color: lightgrey;
}

.footer-panel{
	text-align: center;
    clear: both;
    padding: 200px 0px 10px;
}
h1.page-title{
	color: #FF9933;
    font-size: 24px;
    font-weight: bold;
    padding-bottom: 8px;
    
}
.top-bar.black {background: #fff url(${pageContext.request.contextPath}/backgroundWall/topbar-bg-black.jpg) repeat-x top;}

.top-bar h1.innerHd,.top-bar h2.innerHd {line-height: normal;padding-top: 8px;height: 34px;}
.top-bar h1,.top-bar h2 {font-size: 14px;font-weight: bold;line-height: 42px;padding-left: 15px;text-transform: uppercase;color: #E9E9E9;}
.top-bar.black.quote-box p{background-color: #FFF; color: #666; font-weight: bold; padding: 5px 30px; position: absolute; right: 10px; top: 0px;}
.buttonAdd{background: #716d6c;color: #fff; padding: 7px 16px; border-radius: 3px; border: solid 1px #887e7a; outline: 0;}
.buttonExit{background: #716d6c;color: #fff; padding: 7px 16px; border-radius: 3px; border: solid 1px #887e7a; outline: 0;}
.modelbox span.home-info {
    position: absolute;
    bottom: 30px;
    display: inline-block;
    width: 86px;
    left: 30px;
}

.morebtn {
    background: #000 none repeat scroll 0 0;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    padding: 1px 10px;
    display: inline-block;
}

</style>


<script type="text/javascript">

$( function() {
    $( "#creditExpMonth" ).datepicker();
  } );

function exitFromCredDetails(){
	window.location = "/PortalApp/CreditController/exitFromCredit";
	
}
</script>

    
  </head>
  <body>
 
       <div style="width: 100%;
    float: left;
    box-sizing: border-box;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    margin-bottom: 0px" class="top-bar black quote-box">
        <form:form action="${pageContext.request.contextPath}/CreditController/submiCreditDetails" method="POST" modelAttribute="creditCardBean">
        
        	<h1 class="page-title">Credit Add</h1>
        	<p class="corner-button-style" style="border-radius: 15px;">
						Welcome
						<span>${userName}</span>
					</p>
        	
        
        	<div class="creditCardAdd">
        	
        	<table class="table table-striped" style="text-align:center; width: 100%;" >
        		<thead>
        		<tr style="background-color: mediumseagreen;">
        			<th width="10%">CardName</th>
        			<th width="20%">CardNumber</th>
        			<th width="20%">CreditExpanse</th>
        			<th width="20%">Date</th>
        			<th width="20%">Year</th>
        			<th width="10%">Status</th>
        			<th width="10%">CardType</th>
        			
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
        		
        		
        	<div align="left">
        	<table>
        	<tr>
        	<td><input type="submit" value="Add" class="buttonAdd"/></td>
        	</tr>
        	
        	</table>
        	</div>
        	<div align="right">
        	<table>
        	<tr>
        	<td><input type="button"  value="Exit" class="buttonExit"  onclick="exitFromCredDetails()" /></td>
        	</tr>
        
        	</table>
        	</div>
        	
        	</div>
        </form:form>
        </div>
      <!--   <div>
        <a class="btn btn-success" href="#">Add</a>
        </div> -->
  </body>

<div>
		<jsp:include page="footer.jsp"/>
		</div>

<!--End wrapper fullwidth-->
</html>