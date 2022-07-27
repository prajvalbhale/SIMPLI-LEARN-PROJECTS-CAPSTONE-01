<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:th="http://www.thymeleaf.org" 
    xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
    xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<title>Prajval Bhale</title>
<%@include file="./base.jsp" %>
<link rel = "icon" href ="img/staticpage.png" type = "image/x-icon">
<meta charset="ISO-8859-1">
<title> Prajval Bhale</title>
<style type="text/css">
body{
    background-color: #dee9ff;
}

.registration-form{
	padding: 50px 0;
}

.registration-form form{
    background-color: #fff;
    max-width: 800px;
    margin: auto;
    padding: 50px 70px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .form-icon{
	text-align: center;
    background-color: #5891ff;
    border-radius: 50%;
    font-size: 40px;
    color: white;
    width: 100px;
    height: 100px;
    margin: auto;
    margin-bottom: 50px;
    line-height: 100px;
}

.registration-form .item{
	border-radius: 20px;
    margin-bottom: 25px;
    padding: 10px 20px;
}

.registration-form .create-account{
    border-radius: 30px;
    padding: 10px 20px;
    font-size: 18px;
    font-weight: bold;
    background-color: #5791ff;
    border: none;
    color: white;
    margin-top: 20px;
}

.registration-form .social-media{
    max-width: 800px;
    background-color: #fff;
    margin: auto;
    padding: 35px 0;
    text-align: center;
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    color: #9fadca;
    border-top: 1px solid #dee9ff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .social-icons{
    margin-top: 30px;
    margin-bottom: 16px;
}

.registration-form .social-icons a{
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

.registration-form .social-icons a:hover{
    text-decoration: none;
    opacity: 0.6;
}

@media (max-width: 576px) {
    .registration-form form{
        padding: 50px 20px;
    }

    .registration-form .form-icon{
        width: 70px;
        height: 70px;
        font-size: 30px;
        line-height: 70px;
    }
}
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
	  $('#birth-date').mask('00/00/0000');
	  $('#phone-number').mask('0000-0000');
	 })
</script>
<body> 
    <div class="registration-form">
       <form action="insert">
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
            
            <div class="form-row">
            <div class="form-group col-6">
                <input type="text" class="form-control item" id="username" placeholder="Your Name" name="user_name" required="required">
            </div>
            
            <div class="form-group col-6">
                <input type="email" class="form-control item" id="email" placeholder="Your Email" name="user_mail" required="required">
            </div>
            </div>
            
            <div class="form-row">
            <div class="form-group col-6">
                <input type="number" class="form-control item" placeholder="Phone Number" name="user_phone" required="required">
            </div>
            
            <div class="form-group col-6">
                <input type="password" class="form-control item" id="password" placeholder="Password" name="user_pass" required="required">
            </div>
            </div>
            
            <div class="form-row">
            <div class="form-group col-6">
                <input type="password" class="form-control item" id="password" placeholder="Conform Password" name="con_pass" required="required"> 
            </div>
            
            <div class="form-group col-6">
                <input type="text" class="form-control item" id="genders" placeholder="Gender" name="gender" required="required">
            </div>
            </div>
            
            
            <div class="form-group ml-9">
                <button type="submit" class="btn btn-block create-account">Create Account</button>
            </div>
            <div class="form-group ml-4">
                <p>I have account <a href="/user-login">Log In</a> </p>
            </div>
            
        </form>
        <div class="social-media">
            <h5>Sign up with social media</h5>
            <div class="social-icons">
                <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                <a href="#"><i class="icon-social-google" title="Google"></i></a>
                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>