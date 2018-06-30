<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Credit List Details</title>
<style type="text/css">

body {
    font-family: "Trebuchet MS", "Helvetica", "Arial",  "Verdana", "sans-serif";
    font-size: 62.5%;
}
table{ width: 75%; }
tr {border: 2px solid #AEAEAE;}

  
  h1.creditHeading{
    font-family: serif;
    font-style: inherit;
    font-color: white;
    text-decoration: none;
    background: #00b1af;
    padding: 15px;
    padding: 16px 500px 25px;
}
.headingTr{
    border: 1px solid #646464;
    background: #333333 url(${pageContext.request.contextPath}/resource/main_menu_bgr_nor.jpg) 50% 50% repeat-x;
    color: #ffffff;
    font-weight: bold;
}

.headBodyTr{
	font-family: sans-serif;
    font-style: normal;
    font-size: 14px;
    background: #e9e9e9;
}

.creditDetailsDiv{
	border: 6px solid #a7a2a2;
    float: left;
    padding: 0px;
    width: 99%;
    height: 392px;
}


</style>

</head>
<body>
<div align="left" class="creditDetailsDiv">
<input type="hidden" name="listOfValues" id="listOfValues" value="${cardInfoList}">

<h1 class="creditHeading">Credit Card Details</h1>


<table width="95%" cellspacing="0" cellpadding="0" border="0" style="margin: auto;">
			
				<thead style="font-family:Verdana, Arial, Helvetica, sans-serif;">
				<tr class="headingTr">
				
				<th align="left"><div style="display: inline-block;">
				CARD USER
				</div></th>
				<th align="left">CARD NAME</th>
				<th align="left">CARD NUMBER</th>
				<th align="left">EXPIRY DATE</th>
				<th align="left">CVV</th>
				<th align="left">CARD TYPE</th>
				</tr>
				</thead>
				<tbody style="font-family:Arial,sans-serif;">
				 <c:forEach var="cardInfoList" items="${cardInfoList}">
				<tr class="headBodyTr">
					<td>
						${cardInfoList.cardUser}
					</td>
					<td>
						${cardInfoList.cardName}
					</td>
					<td>
						${cardInfoList.cardNum}
					</td>
					<td>
						${cardInfoList.creditExpYear}
					</td>
					<td>
						${cardInfoList.CVV}
					</td>
					<td>
						${cardInfoList.cardType}
					</td>
				</tr>
				</c:forEach> 		 	</tbody>
		</table>
</div>
</body>

</html>