<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
    <%
if(session.getAttribute("cross")=="cross"){
	
response.sendRedirect("http://localhost:8080/trail1/");
}


%>
<!DOCTYPE html>
<html>
<head>
	<title>cross payments</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<div class="container" >
		<div class="row" style="margin-top: 30px;">
		  <div class="col-sm-1">
			
		  </div>
			<div class="col-sm-10">
			
		
		
		  <form method="post" action="cross_payment_data" id="form_sub" style="width: 100%;">
		
			<div class="card bg-primary" style="padding: 10px;">
			  <center><h4 style="color: white">Cross Payments</h4></center>
			</div>
			<br>
			   <!-----------------Customer ID------------------------>
		
		  <div class="form-group ">
			<label for="exampleInputEmail1">Customer ID</label>
			<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Ex : PREM SAI" name="Customer_ID">
		  </div>
		  <div class="form-row">
		   <!-----------------Source account number------------------------>
		  <div class="form-group col-md-6 mb-3">
			<label for="exampleInputEmail1">Source account number</label>
			<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="EX : 1104********" name="Source_account_number">
			<small id="emailHelp" class="form-text text-muted">We'll never share your Account Number with anyone else.</small>
		  </div>
		
		   <!-----------------target account number------------------------>
		  <div class="form-group col-md-6 mb-3">
			<label for="exampleInputEmail1">Target account number</label>
			<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="EX : 1104********" name="Target_account_number">
			<small id="emailHelp" class="form-text text-muted">We'll never share your Account Number with anyone else.</small>
		  </div>
		  </div>
		  <div class="form-row">
			   <!----------------- Base Currency------------------------>
		  <div class="form-group col-md-6 mb-3">
			<label for="exampleInputEmail1">Base Currency</label>
			<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="INR" disabled="" name="Base_Currency">
			
		  </div>
		   <!-----------------Amount Base Currency------------------------>
			 <div class="form-group col-md-6 mb-3">
			<label for="exampleInputEmail1">Select Target Currency</label>
			<select class="form-control" id="country" name="Target_Currency">
<option value="indian" >India</option>
<option value="canada" >Canada</option>
<option value="america" >America</option>
			</select class="form-control">
		  </div>
		  
		</div>
		<div class="form-row">
			<!-----------------Amount Base Currency------------------------>
			  <div class="form-group col-md-6 mb-3">
			 <label for="exampleInputEmail1">Amount Base Currency</label>
			 <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="0" id="Amount_Base_Currency" name="Amount_Base_Currency">
			 
		   </div>
		   <!-----------------Amount Target Currency------------------------>
		   <div class="form-group col-md-6 mb-3">
			<label for="exampleInputEmail1">Amount Target Currency</label>
			<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="0" id="Amount_Target_Currency" name="Amount_Target_Currency">
			
		  </div>
			

</div>
<div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check" required>
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
			<center>
				<button type="submit" class="btn btn-success" name="btn" style="margin-top: 10px;" >Make Payment</button>

			</center>				 
			
		
		  </form>
		</div>
		  <div class="col-sm-1">
			
		  </div>
		</div>
		</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.14.1/js/mdb.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
$(document).keyup(function(){
	var country=$("#country").val();
	var Amount_Target_Currency=$("#Amount_Base_Currency").val();
	if (country=="america" ) {
		$("#Amount_Target_Currency").val((parseInt(Amount_Target_Currency)/74));
	
	}
	else if (country=="canada") {
	$("#Amount_Target_Currency").val(Amount_Target_Currency/55);
	
	}
	else{
		$("#Amount_Target_Currency").val(Amount_Target_Currency);

	}
})

	})
</script>
<script type="text/javascript">
	$(document).ready(function($) {
	 $("#form_sub").validate({
	  rules:{
		Customer_ID:{
		  required:true,
		},
		 Source_account_number:{
		  required:true,
		  digits:true,
		  minlength:8,
		  maxlength:12
		},
		Target_account_number:{
		  required:true,
		  digits:true,
		  minlength:8,
		  maxlength:12
		},
		Amount_Base_Currency:{
		  required:true,
		  digits:true,
		  minlength:1,
		  maxlength:5
		},
		check:{
			required:true
		}
  
	  },
	  messages:{
		 Customer_ID:{
		  required:"Please Enter Your ID",
		},
		 Source_account_number:{
		  required:"Please Type Your Account Number",
		  minlength:"Please Type Your Account Number Correctly",
		  maxlength:"Please Type Your Account Number Correctly"
		},
		Target_account_number:{
		  required:"Please Type Your Account Number",
		  minlength:"Please Type Your Account Number Correctly",
		  maxlength:"Please Type Your Account Number Correctly"
		},
		Amount_Base_Currency:{
		  required:"Please Fill This Block",
		  maxlength:"Transaction Limit Is Below 1 Lakh"
		},
		check:{
			required:"<p style='color:red;' >This field is required</p>"
		}
	  }
	 }) 
	});
  </script>
</body>
</html>