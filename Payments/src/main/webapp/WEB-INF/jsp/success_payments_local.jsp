<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <!DOCTYPE html>
<html>
<head>
	<title>success page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
	<style type="text/css">
		td{
			text-align: center;
			padding-: 20px;
		}
	</style>
<nav class="navbar-nav" style="background-color: black">
	<div style="text-align: center;padding-top: 10px">
		<p style="font-size: 25px;color: white">Successfully Completed</p>
	</div>
	
</nav>
<br>
<div class="container">
	<div class="row">
		<div class="col-sm-4">
			
		</div>
		<div class="col-sm-4">
			<table style="width: 100%">
				<tr>
					<td>
						<b>Name</b>
					</td>
					<td>
						:
					</td>
					<td>
						${local_data[0]}
					</td>
				</tr>
				<tr>
					<td>
						<b>Reference Number</b>
					</td>
					<td>
						:
					</td>
					<td>
						${local_data[1]}
					</td>
				</tr>
				<tr>
					<td>
						<b>Time</b>
					</td>
					<td>
						:
					</td>
					<td>
						${local_data[3]}
					</td>
				</tr>
				<tr>
					<td>
						<b>Payment Status</b>
					</td>
					<td>
						:
					</td>
					<td>
						${local_data[2]} <span style="color: green;"></span><b>&#10003;</b></span>
					</td>
				</tr>

			</table>
		</div>
		<div class="col-sm-4">
			
		</div>
	</div>
</div>





<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>