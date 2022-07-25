<%@page import="org.prajval.foodbox.com.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prajval Bhale</title>
<link rel = "icon" href ="img/staticpage.png" type = "image/x-icon">
<style>
ul {
  list-style-type: none;
  margin-left:37%;
padding:0;
}

#itemname{
	color: orange;
}
.rating{
  margin-left:37%;
}

.page{
  background-color:#dfe6e0;
padding:2%;
margin: auto;
max-width: 100%;
}

.fa{
  color:#f2dd1d;
}

.card-img-top{
width:90%;
height:235px;
}

.view{
  background-color:#dfe6e0;
  padding:10px;
  margin:20px;
  max-height: 80h;
}

.card{
  width:95%;
  padding:0px;
  margin-left: 2%;
  text-transform: uppercase;
 }

.card-footer{
  font-weight: 700;
}

.price{
color:#ff4517;
  font-weight: 600;

}

.type{
	color:blue;
  font-weight: 600;
  text-transform: uppercase;

}

#desc{
text-transform: lowercase;
font-weight: 100;
}

#setcard{
	display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    grid-gap: .5rem;
}

/*PROFILE STYLE*/
.social-icons {
	
}

.social-icons a {
	font-size: 23px;
	margin: 0 3px;
	color: #5691ff;
	border: 2px solid;
	border-radius: 50%;
	width: 45px;
	display: inline-block;
	height: 45px;
	margin-bottom: -2px;
	text-align: center;
	background-color: #fff;
	line-height: 45px;
}

.social-icons a:hover {
	text-decoration: none;
	opacity: 0.6;
}

@media ( max-width : 576px) {
	form {
		padding: 50px 20px;
	}
	.form-icon {
		width: 70px;
		height: 70px;
		font-size: 30px;
		line-height: 70px;
	}
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand" href="#"><b>FoodBox</b></a> 
		
		<a class="nav-item nav-link active" href="#">
			<i class="fas fa-cart-plus" style="font-size: 25px;" ></i> 
			<span style="color: blue;" class="cart-item">(0)</span>			
		</a>
		
		<div class="social-icons">
			<a href="#"><i class="fas fa-user" title="Facebook"></i></a>
		</div>

		<a class="nav-item nav-link active" href="userlogedin.jsp">HOME</a> 
		<a class="nav-item nav-link active" href="#">Pricing</a>
		
		<form class="form-inline" action="/findItemname">
			<input class="form-control mr-sm-2" type="search" name="item_name"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>

	</nav>
<% List<Item> i = (List<Item>)request.getAttribute("abc"); %>
	

	<!--For Page-->
<div class="page" >
	<!--For Row containing all card-->
	<div class="row" >



		<!--Card 1-->
		<%for(Item ii : i) {%>
		<div id="setcard" class="col-sm">
			<div class="card card-cascade card-ecommerce wider shadow mb-5 ">

				<!--Card image-->
				<div class="view view-cascade overlay text-center">
					<img class="card-img-top" src="https://i.imgur.com/9VZGPJF.jpg"
      alt="" >
					<a>
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>


				<!--Card Body-->
				<div class="card-body card-body-cascade text-center">

					<!--Card Title-->
					<h4 class="card-title" id="itemname"><strong><a><%=ii.getItem_name() %></a></strong></h4>
					<h6></h6>
					<h6><b><a><%=ii.getOffers() %></a>&#x25; Off Hurry Up!!</b></h6>

					<!-- Card Description-->
					<p class="card-text" id="desc"><a><%=ii.getDescription() %></a></p>

					<p class="type"><a><%=ii.getCuisines() %></a></p>
					<p class="price"><a><%=ii.getItem_price() %></a> &#8377;</p>
					
					<!--Card footer-->
					<div class="card-footer">
						<button type="button" class="btn btn-outline-success">Enable</button>
						<button type="button" class="btn btn-outline-danger">Disable</button>
					</div>


				</div>
			</div>
		</div>
		<%} %>
	</div>
</div>
</body>
</html>