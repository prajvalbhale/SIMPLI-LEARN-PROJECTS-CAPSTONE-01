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
<!------ Include the above in your HEAD tag ---------->
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
	<form class="form-horizontal" action="update">
		<fieldset>

			<!-- Form Name -->
			<legend>FoodBox.com</legend>
			<div class="box">

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="product_id">PRODUCT
						ID</label>
					<div class="col-md-4">
						<input id="product_id" name="item_id" placeholder="PRODUCT ID"
							class="form-control input-md" required="" type="text" required="required">

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="product_name">PRODUCT
						NAME</label>
					<div class="col-md-4">
						<input id="product_name" name="item_name"
							placeholder="PRODUCT NAME" class="form-control input-md"
							required="" type="text" required="required">

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="product_name">PRODUCT
						PRICE</label>
					<div class="col-md-4">
						<input id="product_name" name="item_price"
							placeholder="PRODUCT PRICE" class="form-control input-md"
							required="" type="number" required="required">

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="product_name">CUISINES
						NAME</label>
					<div class="col-md-4">
						<input id="product_name" name="cuisines"
							placeholder="CUISINES NAME" class="form-control input-md"
							required="" type="text" required="required">

					</div>
				</div>

				<!-- Textarea -->
<!-- 				<div class="form-group"> -->
<!-- 					<label class="col-md-4 control-label" for="product_description">PRODUCT -->
<!-- 						DESCRIPTION</label> -->
<!-- 					<div class="col-md-4"> -->
<!-- 						<textarea class="form-control" id="product_description" -->
<!-- 							name="description"></textarea> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="product_name">OFFER
					</label>
					<div class="col-md-4">
						<input id="product_name" name="offers" placeholder="PRODUCT OFFER"
							class="form-control input-md" required="" type="number" required="required">

					</div>
				</div>

<!-- 				File Button -->
<!-- 				<div class="form-group"> -->
<!-- 					<label class="col-md-4 control-label" for="filebutton">PRODUCT -->
<!-- 						IMEAGE: 1</label> -->
<!-- 					<div class="col-md-4"> -->
<!-- 						<input id="filebutton" name="img" class="input-file" -->
<!-- 							type="file"> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				File Button -->
<!-- 				<div class="form-group"> -->
<!-- 					<label class="col-md-4 control-label" for="filebutton">PRODUCT -->
<!-- 						IMEAGE: 2</label> -->
<!-- 					<div class="col-md-4"> -->
<!-- 						<input id="filebutton" name="secondimg" class="input-file" -->
<!-- 							type="file"> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<!-- Button -->
				<div class="form-row">
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button type="submit" id="singlebutton" name="singlebutton"
								class="btn btn-primary col-md-8">Button</button>
								<a href="/ShowAdminOpr">
							<button type="button" class="btn btn-secondary border-0 ripple">BACK</button>
						</a>
						</div>

						
					</div>
				</div>
			</div>
		</fieldset>
	</form>

</body>
</html>