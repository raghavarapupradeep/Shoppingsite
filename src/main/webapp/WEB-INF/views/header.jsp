<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Pradeep Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color:  #FF6600;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 {
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
  .bg-2 {
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 {
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 {
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Mr.Online</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        
     
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Product">Product</a></li>
          <li><a href="Supplier">Supplier</a></li>
          <li><a href="Category">Category</a></li> 
         </ul>
         </li>
         </ul>
         <ul class="nav navbar-nav navbar-Left">
        
     
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">User
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="registerHere">SignUp</a></li>
        
        <li><a href="Login">Login</a></li>
        <li><a href="logout">Logout</a></li>
      </ul>
      </li>
      </ul>
    </div>
  </div>
</nav>


<c:choose>
<c:when test="${UserClickedCategory}">
<c:import url="/WEB-INF/views/Category.jsp"></c:import>
</c:when>
</c:choose> 
 <c:choose>
<c:when test="${UserClickedSupplier}">
<c:import url="/WEB-INF/views/Supplier.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${UserClickedProduct}">
<c:import url="/WEB-INF/views/Product.jsp"></c:import>
</c:when>
</c:choose> 
 <c:choose>
<c:when test="${UserClickedRegister}">
<c:import url="/WEB-INF/views/register.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedLogin}">
<c:import url="/WEB-INF/views/login.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedLogout}">
<c:import url="/WEB-INF/views/logout.jsp"></c:import>
</c:when>
</c:choose>


 <!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">Why Mr.Online</h3>
  <p>Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online Mr.online  line  Mr.online  Mr.online  Mr.online  Mr.online   Mr.online line  Mr.online  Mr.online </p>
  <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> Search
  </a>
</div> 

<!-- Third Container (Grid) -->
<!-- <div class="container-fluid bg-3 text-center">
  <h3 class="margin">Mr.Onine Services</h3><br> -->
  <div class="row">
    <div class="col-sm-4">
      <!-- <p>Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online Mr.online  line  Mr.online.</p> -->
      <img src="G:\Shoppingsite\src\main\webapp\images\tq.jpg.png" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4">
     <!--  <p>Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online Mr.online  line  Mr.online.</p> -->
      <img src="G:\Shoppingsite\src\main\webapp\images\tq.jpg.png" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4">
      <!-- <p>Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online  Mr.online Mr.online  line  Mr.online.</p> -->
      <img src="G:\Shoppingsite\src\main\webapp\images\tq.jpg.png" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
  </div>


<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>This Theme Made By <a href="#">Pr@deep</a></p>
   <p>My Niit Colleagues <a href="#">T@nuja & Mounik@ & Thrin@th</a></p>
   <p>With the Help OF  <a href="#">Piyvush Sir</a></p>
</footer>



  

</body>
</html>
<!-- <!-- First Container
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">Mr.Online</h3>
  <img src="G:\Shoppingsite\images\dddd.png" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="150" height="150">
  <h3>Shoping Website</h3>
</div> --> 