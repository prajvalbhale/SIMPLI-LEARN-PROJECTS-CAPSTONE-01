<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<meta charset="ISO-8859-1">
<title>Prajval Bhale</title>
<link rel = "icon" href ="img/staticpage.png" type = "image/x-icon">
</head>

<body>
	<div class="list-group list-group-light">
		<a class="list-group-item list-group-item-action px-3 border-0 active ripple disable cursor-ban" aria-current="true">Admin Operetion's</a> 
		<a href="/AdminAddItems"class="list-group-item list-group-item-action px-3 border-0 ripple">Add Item's</a>
		<a href="/AdminApproveItems" class="list-group-item list-group-item-action px-3 border-0 ripple">Approval</a> 
		<a href="/AdminDeleteCuision" class="list-group-item list-group-item-action px-3 border-0 ripple">Remove Cuision</a> 
		<a href="/AdminUpdateItems" class="list-group-item list-group-item-action px-3 border-0 ripple">Update Item's</a> 
		<a href="/AdminApproveItems"class="list-group-item list-group-item-action px-3 border-0 ripple">Enable or Disable Item's</a>
		<br><a href="/ShowIndexPage"><button type="button" class="btn btn-outline-primary ml-2">Back</button></a>
	</div>
</body>
</html>