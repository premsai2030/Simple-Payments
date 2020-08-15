<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-nav fixed-top" style="background-color: black;width: 100%;padding: 20px;">
			<center>
				<h3 style="color: white">Select Payment Option</h3>
			</center>
		</nav>
<div class="container">
	<div class="row" style="margin-top: 90px;">
		
<div class="col-sm-4">
	<div class="card" style="padding: 10px;margin-top: 20px;">
	
  <img class="card-img-top" src="<c:url value="/resources/images/local.png" />" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Local Payments </h5>
    <p class="card-text">Local Payments are used for transfering money locally<br><br>


    </p>
    <a href="local_payments" class="btn btn-primary">Proceed</a>

</div>
	</div>
</div>
<div class="col-sm-4">
	
		<div class="card" style="padding: 10px;margin-top: 20px;">
	
  <img class="card-img-top" src="<c:url value="/resources/images/foreign.jpg" />" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Cross Payments </h5>
    <p class="card-text">Cross Payments are used to transfer money from Indian Curreny to Another Currency <br><br>

    </p>
    <a href="cross_payments" class="btn btn-primary">Proceed</a>


	</div>
	</div>
</div>
<div class="col-sm-4">
		<div class="card" style="padding: 10px;margin-top: 20px;">
	
  <img class="card-img-top" src="<c:url value="/resources/images/status.png" />" alt="Card image cap"  >
  <div class="card-body">
    <h5 class="card-title">Payment Details </h5>
    <p class="card-text">It is helpful to check the payment Details of  the Past transactions
    </p>
    <a href="payment_details" class="btn btn-primary">Proceed</a>


	</div>
	</div>
</div>
		
	</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">


</script>
</body>
</html>
