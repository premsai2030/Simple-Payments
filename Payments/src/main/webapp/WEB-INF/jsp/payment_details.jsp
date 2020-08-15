<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
	<title>Payment Details</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<div class="row" style="margin-top: 50px;">
		<div class="col-sm-3">
			
		</div>
		<div class="col-sm-6">
<form method="post" action="payment_details_data" id="form_sub" style="width: 100%;">
  <div class="card bg-success" style="padding: 10px;color: white;" >
<center><h5>Payment Details</h5></center>
  </div >
  <div class="form-group" style="margin-top: 10px;">
    <label >Customer ID</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="Customer_ID" aria-describedby="emailHelp" placeholder="Customer ID">
    
  </div>
  <div class="form-group">
    <label >Transaction Reference Number</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="Transaction_Reference_Number" placeholder="Transaction Reference Number">
  </div>
<center>
  <button type="submit" class="btn btn-primary">Submit</button>
  </center>
</form>
		<div class="col-sm-3">
			
		</div>
		
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.14.1/js/mdb.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
<script type="text/javascript">
$(document).ready(function($) {
   $("#form_sub").validate({
    rules:{
      Customer_ID:{
        required:true,
      },
      Transaction_Reference_Number:{
        required:true,
        digits:true,
        minlength:1,
        maxlength:12
      }

    },
    messages:{
       Customer_ID:{
        required:"Please Enter Your ID",
      },
      Transaction_Reference_Number:{
        required:"Please Type Your Account Number",
        minlength:"Please Type Transaction Reference Number Correctly",
        maxlength:"Please Type Transaction Reference Number Correctly"
      }
    }
   }) 
  });


</script>
</body>
</html>