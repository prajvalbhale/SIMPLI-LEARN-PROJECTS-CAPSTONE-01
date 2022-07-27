<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prajval Bhale</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<link rel = "icon" href ="img/staticpage.png" type = "image/x-icon">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<style type="text/css">

body {
	background-color: #f5eee7;
	font-family: "Poppins", sans-serif;
	font-weight: 300;
}
#cont{
	width:100%;
}
.container {
	
	height: 500px;
}

.card {
	border: none;
}

.btn-light:focus {
	color: #212529;
	background-color: #e2e6ea;
	border-color: #dae0e5;
	box-shadow: 0 0 0 0.2rem rgba(216, 217, 219, .5);
}

.form-control {
	height: 50px;
	border: 2px solid #eee;
	border-radius: 6px;
	font-size: 14px;
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #039be5;
	outline: 0;
	box-shadow: none;
}

.input {
	position: relative;
}

.input i {
	position: absolute;
	top: 16px;
	left: 11px;
	color: #989898;
}

.input input {
	text-indent: 25px;
}

.card-text {
	font-size: 13px;
	margin-left: 6px;
}

.certificate-text {
	font-size: 12px;
}

.payment-card-body {
	flex: 1 1 auto;
	padding: 24px 1rem !important;
	border-radius: 20px;
}

button{
	padding-top: 10px;
}
</style>
</head>
<body>
<form action="/userpaymentprocessing">
	<div id="cont" class="container d-flex justify-content-center mt-5 mb-5">



		<div class="row g-8">

			<div class="col-md-19">

				
				<div class="card">

					<div class="accordion" id="accordionExample">

						

						<div class="card">
							

							<div id="collapseOne" class="collapse show"
								aria-labelledby="headingOne" data-parent="#accordionExample">
								<div class="card-body payment-card-body">

									<span class="font-weight-normal card-text">Card Number</span>

									<div class="form-group col-6">
										<input type="number" class="form-control item"
											placeholder="Phone Number" name="user_phone"
											required="required">
									</div>

									<div class="input">										
									<i class="fa fa-credit-card"></i> 
									<input type="number" class="form-control" name="card_number" placeholder="0000 0000 0000 0000">
								</div>

									<div class="row mt-3 mb-3">

										<div class="col-md-6">

											<span class="font-weight-normal card-text">Expiry Date</span>
											<div class="input">
												<i class="fa fa-calendar"></i> 
												<input type="text" class="form-control" name="exp_date" placeholder="MM/YY">
											</div>

										</div>


										<div class="col-md-6 mb-4">

											<span class="font-weight-normal card-text">CVC/CVV</span>
											<div class="input">

												<i class="fa fa-lock"></i> 
												<input type="text" class="form-control" name="cvvno" placeholder="000">

											</div>

										</div>

<!-- 						<a href=""> -->
							<button type="submit" class="btn btn-outline-success" style="height: 40px;">
								<b>PAY BILL</b>
							</button>
<!-- 						</a> -->
						
						<a href="#">
							<button type="submit" class="btn btn-outline-success" style="height: 40px;">
								<b>REVIEW</b>
							</button>
						</a>
									</div>

									<span class="text-muted certificate-text"><i
										class="fa fa-lock"></i> Your transaction is secured with ssl
										certificate</span>

								</div>
							</div>
						</div>

					</div>

				</div>

			</div>

			

		</div>


	</div>
	</form>
</body>
</html>