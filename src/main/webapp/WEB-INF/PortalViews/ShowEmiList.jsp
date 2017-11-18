<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>Insert title here</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#header_div{

	background-image:  url(resource/dashboard_bg_fd.gif);
    background-repeat: round;
    width: 1350px;
    height: 30px;
    margin: 0 auto;
}
.gridContentAreaForEmilist{
background: none repeat scroll 0% 0% hsl(0, 75%, 95%)
}
.gridContentAreaForEmilist table{
background: none repeat scroll 0% 0% #A6C67A;
}

.user-icons{
	background: url(resource/black-bg6.png) 0 0 no-repeat;
    margin: 0;
    padding: 0;
    height: 28px;
    width: 236px;
    position: absolute;
    right: 0;
    top: 22px;
}

li {
	 display: inline;
	 float: left;
   	 
}
li a {
    display: block;
    color: #17202A;
    text-align: center;
    padding: 1px 10px;
   	text-decoration: initial;
    font-size: 22px;
    font-style: normal;
}
li a:hover:not(.active) {
    background-color: #ddd;
}
</style>

<script type="text/javascript">

$("#closeWindow").on('click', function() {
	   alert ("inside onclick");
	   window.location = "/PortalApp/Exit";
	});


</script>

</head>
<body>
<div>
  	<jsp:include page="nav-bar.jsp"/>
  </div>
<!-- <div>
<ul class="user-icons">
<li><a href="#"><img title="Home" alt="homeicon" src="resource/home01.png"></a></li>
</ul>
</div> -->
<div id="header_div">
	<h2 align="center">Emi List for user:${userName} </h2>
</div>
<c:choose>
<c:when test="${not empty emiList}">
<c:if test="${not empty emiList}">
<div class="gridContentAreaForEmilist">
			 <table width="95%" cellspacing="1" cellpadding="3" border="0" style="margin: auto;">
				<thead style="font-family:Verdana, Arial, Helvetica, sans-serif;">
				<tr>
				
				<th align="left"><div style="display: inline-block;">
				Month
				</div></th>
				<th align="left">Amount Paid</th>
				<th align="left">Paid Date</th>
				<th align="left">Vehicle Name</th>
				</tr>
				</thead>
				<tbody style="font-family:Arial,sans-serif;">
				<c:forEach var="listValue" items="${emiList}">
				<tr>
					<td>
						${listValue.month}
					</td>
					<td>
						${listValue.amountToPaid}
					</td>
					<td>
						${listValue.dateOfPaid}
					</td>
					<td>
						${listValue.bikeName}
					</td>
				</tr>
				</c:forEach>
				</tbody>
		</table>
		</div>	
	</c:if>
</c:when>	
<c:otherwise>
	${noList}
</c:otherwise>
	</c:choose>
	<div align="center">
		<a href="/PortalApp/Exit" id="">
			<img alt="close" class="close" id="exit_List" src="resource/exit_btn_popup.gif"></a>
		</div>	
</body>
</html>