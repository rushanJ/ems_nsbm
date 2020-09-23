<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-right">Logo</span>
</div>
<%
//allow access only if session exists
String userName = null;
if(session.getAttribute("userName") == null){
	response.sendRedirect("index.html");
}else userName = (String) session.getAttribute("userName");

%>
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="https://www.pngitem.com/pimgs/m/294-2947257_interface-icons-user-avatar-profile-user-avatar-png.png" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span>Welcome, <strong><%=userName %></strong></span><br>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  
  <div class="w3-sidebar w3-bar-block w3-light-grey w3-card" style="z-index:3;width:300px;">
  <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
  
  <a href="Home.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-home fa-fw"></i>  Home</a>
  
  <button class="w3-button w3-bar-item w3-block " onclick="myAccFunc('demoAcc1')"><i class="fa fa-user fa-fw"></i>  Master Data <i class="fa fa-caret-down"></i></button>
  <div id="demoAcc1" class="w3-hide w3-white w3-card">
    <a href="Employee.jsp" class="w3-bar-item w3-button">Employee</a>
    <a href="Department.jsp" class="w3-bar-item w3-button">Department</a>
    <a href="Allowance.jsp" class="w3-bar-item w3-button">Allowances</a>
    <a href="Deduction.jsp" class="w3-bar-item w3-button">Deductions</a>
  </div>
  
   <a href="dashboardLeave.jsp" class="w3-bar-item w3-button "><i class="fa fa-sign-out fa-fw"></i> Leave</a>
   
 
<!--  <button class="w3-button w3-bar-item w3-block " onclick="myAccFunc('demoAcc2')"><i class="fa fa-plane fa-fw"></i>  Leave <i class="fa fa-caret-down"></i></button>
  <div id="demoAcc2" class="w3-hide w3-white w3-card">
    <a href="AddLeave.jsp" class="w3-bar-item w3-button">New Leave Request</a>
    <a href="PendingRequestLeave.jsp" class="w3-bar-item w3-button">Leave Requests</a>
  </div>-->
  
  <button class="w3-button w3-bar-item w3-block " onclick="myAccFunc('demoAcc3')"><i class="fa fa-money fa-fw"></i>  Payroll <i class="fa fa-caret-down"></i></button>
  <div id="demoAcc3" class="w3-hide w3-white w3-card">
    <a href="PayrollAllowance.jsp" class="w3-bar-item w3-button">Allowances</a>
    <a href="PayrollDeductions.jsp" class="w3-bar-item w3-button">Deductions</a>
    <a href="PayrollLoan.jsp" class="w3-bar-item w3-button">Loans</a>
    <a href="PayrollPaySlip.jsp" class="w3-bar-item w3-button">Pay Slip</a>
  </div>
  
  <button class="w3-button w3-bar-item w3-block " onclick="myAccFunc('demoAcc4')"><i class="fa fa-book fa-fw"></i>  Reports <i class="fa fa-caret-down"></i></button>
  <div id="demoAcc4" class="w3-hide w3-white w3-card">
    <a href="#" class="w3-bar-item w3-button">Attendance</a>
    <a href="ReportAttendence.jsp" class="w3-bar-item w3-button">Allowances</a>
    <a href="ReportDeductions.jsp" class="w3-bar-item w3-button">Deductions</a>
    <a href="ReportLoans.jsp" class="w3-bar-item w3-button">Loans</a>
    <a href="ReportPayroll.jsp" class="w3-bar-item w3-button">Payroll</a>
    
  </div>
  
  <a href="#" class="w3-bar-item w3-button "><i class="fa fa-sign-out fa-fw"></i>  Logout</a>
</div>
</nav>
<script>
function myAccFunc(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
//    x.previousElementSibling.className += " w3-green";
  } 
  else { 
    x.className = x.className.replace(" w3-show", "");
//    x.previousElementSibling.className = 
//    x.previousElementSibling.className.replace(" w3-green", "");
  }
}

function myDropFunc() {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
//    x.previousElementSibling.className += " w3-green";
  } 
  else { 
    x.className = x.className.replace(" w3-show", "");
//    x.previousElementSibling.className = 
//    x.previousElementSibling.className.replace(" w3-green", "");
  }
}
</script>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- He   ader -->

 