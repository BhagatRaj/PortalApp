<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/PortalApp/ShowAddEmiPage">AddEmi</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="/PortalApp/CreditController/CreditDetails">CreditAdd</a>
      
     <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li> -->
      <li><a href="/PortalApp/showEmiList?userName=${userName}">Emi List</a></li>
      <li><a href="#">Currently Logged in by: ${userName}</a></li>
      <li><a href="https://netbanking.hdfcbank.com/netbanking/CCLogin.html">Credit Card Details</a></li>
      <li><a href="/PortalApp/showlaptopEmi?userName=${userName}">Laptop Emi</a></li>
      <li><a href="/PortalApp/CreditController/showDetailsForCreditEmi?userName=${userName}">show Credit Details</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/PortalApp/showSetup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="/PortalApp/Logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>

</body>
</html>
