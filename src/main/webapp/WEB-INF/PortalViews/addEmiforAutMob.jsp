<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<style type="text/css">

#header_forAdd_emi{

	background-image:  url(resource/login_bg.gif);
    background-repeat: round;
    width: 1300px;
    height: 30px;
    margin: 0 auto;
}
.backDiv{
	background-image: url(backgroundWall/background6.jpg);
	margin: 0 auto;
    min-height: 450px;
    height: auto;
    padding: 10px 8px; 
	
}
#subject{
	float: left;
    margin-top: 12px;
    margin-bottom: 10px;
    padding-left: 5px;
    font-size: 20px;
    font-weight: bold;
    font-family: Arial, Helvetica, sans-serif;
    height: 30px;
    line-height: 50px;
}
.datepicker{
	width: 150px;
	background-color: floralwhite;
	background-position: 10px 10px;
	border-radius:4px;
	height:22px;
}
.top-nav{
	float:left;
	background-image: url("resource/top-nav.png");
	background-size: 100% 100%;
    height: 50px;
    width: 100%;
    z-index: 10;
}
</style>

<script type="text/javascript">

$(function(){
	$("#paidDate").datepicker();
});
 

function submitAutoMobForm(){
			var month=$("#month").val();
			var amountPaid=$("#amountPaid").val();
			var paidDate=$("#paidDate").val();
			var bikeName=$("#bikeName").val();
			$.ajax({
				  url:"/PortalApp/addEmiforAutMob",
				  type:"POST",
				  data: "month="+month+"&amountPaid="+amountPaid+"&paidDate="+paidDate+"&bikeName="+bikeName,
				  dataType:"html",
				  success:function(data){
					alert(data); 
					document.getElementById("month").value=""; 
					document.getElementById("amountPaid").value=""; 
					document.getElementById("paidDate").value=""; 
					document.getElementById("bikeName").value=""; 
					return false;
				  }
				  });
		}
	</script>

</head>
<body>
<div class="backDiv">
	<h1 align="center" id="subject">AddEmiList</h1>	
 <fieldset style="background-color: #a2bfa2; margin-top: 20px; padding-top: 4px;">
 <div id="header_forAdd_emi">
		<div>
		<h2 style="color: #036cc7;">Add Emi list for User: ${userName}</h2> 
	</div>
	</div>
 
 
 <table id="mytableid" width="100%" cellspacing="1" cellpadding="3" border="0">
  <thead>
	  <tr style="background:#b8d68e">
		
	       <tr style="background:#b8d68e">
		   <td width="20%" >Month</td>
		   <td width="20%" >Amount Paid</td>
		   <td width="20%" >Paid Date</td>
		   <td width="20%" >Vehicle Name</td>
	  </tr>
	  </thead>
	  <tbody style="background-color: beige;">
	  	<tr>
	  	<td><input type="text" name="month" id="month"></td>
	  	<td><input type="text" name="amountPaid" id="amountPaid"></td>
	  	<td><input type="text" class="datepicker" name="paidDate" id="paidDate"></td>
	  	<td><input type="text" name="bikeName" id="bikeName"></td>
	  	</tr>
	  
	  </tbody>
	  <tr>
	  	
	  		<td><input type="image" src="resource/saving.png"
						alt="submitButton"  onclick="submitAutoMobForm()"/>
	  	</td>
	  	<td>&nbsp;</td>
	  		<td>&nbsp;</td>
	  	<td>
	  		<div align="center">
			<a href="/PortalApp/Exit" id="">
			<img alt="close" class="close" id="exitAddEmi" src="resource/exit_btn_popup.gif"></a>
			</div>	
	  	</td>
	  </tr>
</table> 
</fieldset>
 </div>
 </body>
</html>