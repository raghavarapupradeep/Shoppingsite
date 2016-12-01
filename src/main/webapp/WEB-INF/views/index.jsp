<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>

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
      padding-top: 3px;
      padding-bottom: 3px;
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
<body bgcolor="">
<h2><center><font color="red">Mr.Online</font></center></h2>
<%-- <jsp:include page="Home.jsp"></jsp:include> --%>
<body>

<!-- Navbar -->
<!-- <nav class="navbar navbar-default">
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
         <li><a href="Registration">SignUp</a></li> 
        
        <li><a href="Login">Login</a></li>
        <li><a href="logout">Logout</a></li>
      </ul>
      </li>
      </ul>
    </div>
  </div>
</nav> -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Mr.Online</a>
    </div>
    <ul class="nav navbar-nav">
     <!-- <li class="active"><a href="Admin">Admin</a></li></ul> -->
       
  
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<%-- <jsp:include page="Home.jsp"></jsp:include> --%>
<!-- <style>
img {
    width:100%;
}
</style>
<img src="G:\Shoppingsite\src\main\webapp\images\ddd.jpg" alt="ddd" width="128" height="128"> -->
${errorMessage} 
${registerMessage}
<!-- if the error message is there, i have to open login.jsp -->
<c:if test="${errorMessage}">
<jsp:include page="Login.jsp"></jsp:include>
<!-- if the user clicked login link, I have to open login.jsp -->
</c:if>
  <%-- <c:if test="${UserClickedLogin}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>  --%>
  <%-- <c:if test="${UserClickedRegister}">
<jsp:include page="register.jsp"></jsp:include></c:if>   --%>
<%--  <c:if test="${errorMessage}">
<jsp:include page="logout.jsp"></jsp:include></c:if>  --%>
 <c:if test="${UserClickedLogout}"> 
<jsp:include page="logout.jsp"></jsp:include></c:if> 
<c:if test="${UserClickedCategory}">
<jsp:include page="Category.jsp"></jsp:include></c:if> 
 <c:if test="${UserClickedSupplier}">
<jsp:include page="Supplier.jsp"></jsp:include></c:if>
<c:if test="${UserClickedProduct}">
<jsp:include page="Product.jsp"></jsp:include></c:if>  
<c:if test="${UserClickedLogin}">
<jsp:include page="Login.jsp"></jsp:include></c:if>  
<c:if test="${UserClickedRegistration}">
<jsp:include page="Registration.jsp"></jsp:include></c:if> 
<c:if test="${UserClickedadmin}">
<jsp:include page="Admin.jsp"></jsp:include></c:if>  


<style> 
#example1 {
    background-image: url(G:\Shoppingsite\src\main\webapp\images\de.jpg), url(G:\Shoppingsite\src\main\webapp\images\ddd.jpg);
    background-position: right bottom, left top;
    background-repeat: no-repeat, repeat;
    padding: 15px;
}
</style>
</head>
<body>


</body>
</html>
 