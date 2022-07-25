<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prajval Bhale</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<link rel = "icon" href ="img/staticpage.png" type = "image/x-icon">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}

.box {
	background-color: #FFFFFF;
	max-width: 50%;
	max-height: 89vh;
	border-radius: 15px;
	padding: 15px 15px;
	margin: 15px 15px;
	border: 1px solid silver;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}
</style>
<body>
	<form class="form-horizontal" action="/deletecouisin">
		<fieldset>

			<!-- Form Name -->
			<legend>FoodBox.com</legend>
			<div class="box">
				<div class="form-group">
					<label class="col-md-4 control-label" for="product_id">PRODUCT
						CODE</label>
					<div class="col-md-4">
						<input id="product_id" name="item_id" placeholder="PRODUCT ID"
							class="form-control input-md" required="" type="text">

					</div>
				</div>
				<button type="submit" class="btn btn-outline-danger">Danger</button>
				<a href="/ShowAdminOpr">
							<button type="button" class="btn btn-secondary border-0 ripple">BACK</button>
						</a>
				</div>
				</fieldset>
				</form>
</body>
</html>