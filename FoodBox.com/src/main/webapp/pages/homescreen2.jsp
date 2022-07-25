
<!DOCTYPE html>

<html xmlns:th="http://www.thymeleaf.org"
	xmlns="http://www.w3.org/1999/html">
<head>
<title>Prajval Bhale</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="./base.jsp"%>
<link rel = "icon" href ="img/staticpage.png" type = "image/x-icon">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"
	integrity="sha384-zIaWifL2YFF1qaDiAo0JFgsmasocJ/rqu7LKYH8CoBEXqGbb9eO+Xi3s6fQhgFWM"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.backbody {
	background-color: #CDF0EA;
}

.header {
	width: 100%;
	display: flex;
}

.sections {
	width: 100%;
	height: 100vh;
}

.copysections {
	width: 100%;
	height: 11vh;
}

.sectionbody {
	background-color: #FFE6E6;
	max-width: 100%;
	max-height: 89vh;
	border-radius: 15px;
	padding: 15px 15px;
	margin: 10px 10px;
	border: 1px solid silver;
}

.social-media {
	background-color: #FFF9CA;
	max-width: 100%;
	max-height: 15vh;
	border-radius: 3px;
	padding: 10px 10px;
	margin: 10px 10px;
	border: 1px solid silver;
}

.copyrighttext {
	color: black;
	font-weight: 500px;
	font-family: serif;
	text-align: center;
}

.copyrighttext.a.p {
	color: black;
	font-weight: 500px;
	font-family: serif;
}

nav {
	border-radius: 10px;
}
/* COUISEN SECTION STYLE */
body {
	background-color: #dee9ff;
}

#flo a{
	float: right;	
}

.registration-form {
	padding: 0 0;
}

.applytext {
	text-align: center;
	padding-bottom: 15px;
	margin-top: -9px;
	color: black;
	font-size: 35px;
	font-family: serif;
	font-weight: bold;
}

.registration-form form {
	background-color: #FFE6E6;
	max-width: 100%;
	margin: auto;
	padding: 25px 15px;
	border-top-left-radius: 30px;
	border-top-right-radius: 30px;
	box-shadow: 0px 3px 15px rgba(0, 0, 0, 0.085);
	margin-bottom: -9px;
}

.registration-form .item {
	border-radius: 20px;
	margin-bottom: 15px;
	padding: 10px 15px;
}

.registration-form .create-account {
	border-radius: 30px;
	align-self: center;
	padding: 10px 15px;
	font-size: 18px;
	font-weight: bold;
	background-color: #5791ff;
	border: none;
	color: white;
	margin-top: 0;
}

.copysections .social-media {
	max-width: 100%;
	background-color: #FFE6E6;
	margin: auto;
	padding: 15px 15px;
	text-align: center;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	color: #9fadca;
	border-top: 1px solid black;
	border: 1px solid black;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.copysections .social-icons {
	margin-top: 10px;
	margin-bottom: 5px;
}

.copysections .social-icons a {
	font-size: 23px;
	margin: 0 3px;
	color: #5691ff;
	border: 1px solid;
	border-radius: 50%;
	width: 45px;
	display: inline-block;
	height: 45px;
	text-align: center;
	background-color: #fff;
	line-height: 45px;
}

.copysections .social-icons a:hover {
	text-decoration: none;
	opacity: 0.6;
}

@media ( max-width : 576px) {
	.copysections form {
		padding: 50px 20px;
	}
	.copysections .form-icon {
		width: 70px;
		height: 70px;
		font-size: 30px;
		line-height: 70px;
	}
}
/* COUISEN SECTION STYLE END */

/* .navsec{ */
/* 	width: 100%; */
/* 	height: 10vh; */
/* 	background-color: red; */
/* 	position: inherit; */
/* } */
</style>

<body class="backbody">
	<div class="sticky-top">
	
		<section class="navsec">
		
			<nav class="navbar navbar-expand-lg navbar-light bg-light ">
				<a class="navbar-brand" href="homepage2"><b>Food Box</b></a>
				
				<div class="collapse navbar-collapse " id="navbarNavAltMarkup">
					<div class="navbar-nav" >
						<a class="nav-item nav-link" href="/ShowAdminOpr">ADMIN</a>
<!-- 					<a class="nav-item nav-link" href="#">CUISINES</a>  -->
						<a class="nav-item nav-link" href="/UserLoginandSignUp">LOGIN/SIGN UP</a> 
<!-- 						<a class="nav-item nav-link" href="#">LOG OUT</a> -->
				
					</div>
				</div>
				
			</nav>
			
		</section>
		</div>
	
	


	<!-- SECTIONSTART -->

	<!--1].SECTION-->
	
	
	<div class="subbody">
	
		<div class="sectionbody">
		
			<section class="sections">
			
				<!-- CARD START -->
<%-- 				<c:forEach items="${list }" var="i"> --%>
				
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title" th:text="${item.item_name}"></h5>
						<p class="card-text">${item.item_price } &#8377;</p>
						<p class="card-text">${item.offers } &#37;</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">${item.item_code }</li>
						<li class="list-group-item">${item.cuisines }</li>
						<li class="list-group-item">${item.description }</li>
					</ul>
					<div class="card-body">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
						<a href="#">
						<i class="fas fa-cart-plus" style="font-size:36px"></i></a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;
						<a href="#" >
						<i class="fas fa-wallet" style="font-size:36px"></i>
						</a>
					</div>
				</div>
			
<%-- 			</c:forEach> --%>
			</section>
		</div>
		<!--SECTION END-->

<!-- 		<!--2].SECTION--> 
<!-- 		<div class="sectionbody"> -->

<!-- 			<section class="sections"> -->
<!-- 				<div class="registration-form"> -->

<!-- 					<form action="#"> -->
<!-- 						<h2 class="applytext">CONTACT US</h2> -->
<!-- 						<div class="form-icon"> -->
<!-- 							<span><i class="icon"></i></span> -->
<!-- 						</div> -->

<!-- 						<div class="form-row"> -->
<!-- 							<div class="form-group col-6"> -->
<!-- 								<input type="text" class="form-control item" id="username" -->
<!-- 									placeholder="Your Name" name="user_name"> -->
<!-- 							</div> -->

<!-- 							<div class="form-group col-6"> -->
<!-- 								<input type="email" class="form-control item" id="email" -->
<!-- 									placeholder="Your Email" name="user_mail"> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div class="form-row"> -->
<!-- 							<div class="form-group col-6"> -->
<!-- 								<input type="number" class="form-control item" id="phone-number" -->
<!-- 									placeholder="Phone Number" name="user_phone"> -->
<!-- 							</div> -->
<!-- 							<div class="form-group col-6"> -->
<!-- 								<input type="text" class="form-control item" id="genders" -->
<!-- 									placeholder="Gender" name="gender"> -->
<!-- 							</div> -->

<!-- <!-- 							<div class="form-group col-6"> --> 
<!-- <!-- 								<input type="password" class="form-control item" id="password" --> 
<!-- <!-- 									placeholder="Password" name="user_pass"> --> 
<!-- <!-- 							</div> --> 
<!-- 						</div> -->

<!-- <!-- 						<div class="form-row"> --> 
<!-- <!-- 							<div class="form-group col-6"> --> 
<!-- <!-- 								<input type="password" class="form-control item" id="password" --> 
<!-- <!-- 									placeholder="Conform Password" name="con_pass"> --> 
<!-- <!-- 							</div> --> 
							
<!-- <!-- 						</div> --> 


<!-- 						<div class="form-group ml-9"> -->
<!-- 							<button type="submit" class="btn btn-block create-account">Click -->
<!-- 								to apply</button> -->
<!-- 						</div> -->
<!-- 						<div class="form-group ml-4"> -->
<!-- 							<p> -->
<!-- 								I have account <a href="#">Log In</a> -->
<!-- 							</p> -->
<!-- 						</div> -->

<!-- 					</form> -->
<!-- 					        <div class="social-media"> -->
					<!--             <h5>Sign up with social media</h5> -->
					<!--             <div class="social-icons"> -->
					<!--                 <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a> -->
					<!--                 <a href="#"><i class="icon-social-google" title="Google"></i></a> -->
					<!--                 <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a> -->
					<!--                 <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a> -->
					<!--             </div> 
        </div>-->
				</div>
			</section>
		</div>
		<!--SECTION END-->

<!-- 		<!--3].SECTION--> 
<!-- 		<div class="sectionbody"> -->
<!-- 			<section class="sections"> -->
<!-- 				<header> -->
<!-- 					<a href="#logout"></a> -->
<!-- 				</header> -->
<!-- 			</section> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<!--SECTION END--> 

	<!--3].SECTION-->
	<div class="copyrightbody">
		<section class="copysections">
			<div class="social-media">
				<div class="social-icons">
					<a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
					<a href="#"><i class="icon-social-google" title="Google"></i></a>
					<a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
					<a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
				</div>
		</div>

			<!-- 			<header> -->
			<!-- 				<p class="copyrighttext">All &#169;Copy Right's are &#174;Reserved by <a href="#logout">Prajval Bhale</a></p> -->
			<!-- 			</header> -->
		</section>
	</div>
	<!--SECTION END-->
</body>
</html>