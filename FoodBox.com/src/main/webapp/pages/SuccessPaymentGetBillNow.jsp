<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp" %>
<meta charset="ISO-8859-1">
<title>Prajval Bhale</title>
<link rel = "icon" href ="img/staticpage.png" type = "image/x-icon">
</head>
<body>
<form action="/user-get-bill-now">
<h1> PAYMENT IS SUCCESSFULLY RECEIVED</h1>
<small>Don't Press Back or any Action</small><br>


<div class="control-group">
	<input name="user_phone" type="number" class="form-control border-1 p-2 col-5" id="name" placeholder="Enter Phone Number" required="required" data-validation-required-message="enter your phone" />
	<p class="help-block text-danger"></p>
</div>
<button type="submit" class="btn btn-outline-success">Take Bill Now</button>
</form>
</body>
</html>