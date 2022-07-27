<%@page import="org.prajval.foodbox.com.User"%>
<%@page import="java.util.List"%>
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
<% List<User> u = (List<User>)request.getAttribute("UserBill"); %>
<%for(User uu : u) {%>
<div class="container bootdey mt-5">
<div class="row invoice row-printable ">
    <div class="col-md-10">
        <!-- col-lg-12 start here -->
        <div class="panel panel-default plain" id="dash_0">
            <!-- Start .panel -->
            <div class="panel-body p30 mt-5">
                <div class="row">
                   <h2>Customer Name : <%= uu.getUser_name() %></h2>
                    <!-- col-lg-6 end here -->
                    <div class="col-lg-12">
                        <!-- col-lg-12 start here -->
                        <div class="invoice-details mt25">
                            <div class="well">
                                <ul class="list-unstyled mb0">
                                    <li><strong>Customer ID: </strong><%= uu.getUser_id() %></li>
                                    <li><strong>Invoice Date: </strong> <%= uu.getBuy_Date() %></li>
                                    <li><strong>Due Date: </strong> <%= uu.getPayment_date() %></li>
                                    <li><strong>Status: </strong> <span class="label label-danger"><%= uu.getStatus() %></span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="invoice-to mt25">
                            <ul class="list-unstyled">
                                <li><strong>Invoiced To</strong></li>
                                <li><%= uu.getUser_mail() %></li>
                                <li><%= uu.getCon_add() %></li>
                            </ul>
                        </div>
                        <div class="invoice-items">
                            <div class="table-responsive" style="overflow: hidden; outline: none;" tabindex="0">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="per70 text-center">Description</th>
                                            <th class="per5 text-center">Qty</th>
                                            <th class="per25 text-center">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Item Name with Description</td>
                                            <td class="text-center">1</td>
                                            <td class="text-center">$25.00 USD</td>
                                        </tr>
                                    </tbody>
<!--                                     <tfoot> -->
<!--                                         <tr> -->
<!--                                             <th colspan="2" class="text-right">Sub Total:</th> -->
<!--                                             <th class="text-center">$237.00 USD</th> -->
<!--                                         </tr> -->
<!--                                         <tr> -->
<!--                                             <th colspan="2" class="text-right">20% VAT:</th> -->
<!--                                             <th class="text-center">$47.40 USD</th> -->
<!--                                         </tr> -->
<!--                                         <tr> -->
<!--                                             <th colspan="2" class="text-right">Credit:</th> -->
<!--                                             <th class="text-center">$00.00 USD</th> -->
<!--                                         </tr> -->
<!--                                         <tr> -->
<!--                                             <th colspan="2" class="text-right">Total:</th> -->
<!--                                             <th class="text-center">$284.4.40 USD</th> -->
<!--                                         </tr> -->
<!--                                     </tfoot> -->
                                </table>
                            </div>
                        </div>
                        <div class="invoice-footer mt25">
                            <p class="text-center"> Generated on <span id="current_date"></span>  
                            <a type="button" class="btn btn-default ml15" onclick="printDiv('printableArea')">
                            		<i class="fa fa-print mr5" id="printableArea"></i>
                            		<script type="text/javascript">
                            		function printDiv(divName) {
                            		     var printContents = document.getElementById(divName).innerHTML;
                            		     var originalContents = document.body.innerHTML;

                            		     document.body.innerHTML = printContents;

                            		     window.print();

                            		     document.body.innerHTML = originalContents;
                            		}                           		
                            		
                            		</script>
                            		Print
                            </a>
                            </p>
                        </div>
                    </div>
                    <!-- col-lg-12 end here -->
                </div>
                <!-- End .row -->
            </div>
        </div>
        <!-- End .panel -->
    </div>
    <!-- col-lg-12 end here -->
</div>
</div>
<script>
		date = new Date();
		year = date.getFullYear();
		month = date.getMonth() + 1;
		day = date.getDate();
		document.getElementById("current_date").innerHTML = month+ "/" + day + "/" + year;
</script> 
<%} %>
</body>
</html>