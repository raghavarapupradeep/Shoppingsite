<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 <html>
<head>


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

<body>


<%-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Mr.Online</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
    <sec:authorize access="!isAuthenticated()">
    
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </sec:authorize>
    </ul>
    <sec:authorize access="isAuthenticated()">
     <ul class="nav navbar-nav navbar-right">
      <li><a href="Cart"><span class="glyphicon glyphicon-user"></span>Cart</a></li>
	<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
	<li><a href="">Welcome  <sec:authentication property="principal.username"/></a></li></ul>
</sec:authorize>
  </div>
</nav> --%>
<%-- <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 40%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\apple-laptop.jpg" alt="apple" width="360" height="345">
      </div>

      <div class="item">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\2013-iphone5s-gold.png" alt="iphone" width="360" height="345">
      </div>
    
      <div class="item">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\7f72abfdd84fda86d9bf9890e5c44640.jpg" alt="Flower" width="360" height="345">
      </div>

      <div class="item">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\covers.jpg" alt="covers" width="360" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<jsp:include page="Home.jsp"></jsp:include>
<!-- <style>
img {
    width:100%;
}
</style> --%>
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Shopping Website | Mr.Online</title>
<meta name="keywords" content="free website template, flower shop, website templates, CSS, HTML" />
<meta name="description" content="Flower Shop - free website template, W3C compliant HTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
  
     
<style>

body {
	margin: 0;
	padding: 0;
	line-height: 1.5em;
	font-family: Verdana, Arial, san-serif;
	font-size: 11px;
	color: #fff;
	background: #fff;
}

a:link, a:visited { color: #F1A5D5; text-decoration: underline; } 
a:active, a:hover { color: #FFFF00; text-decoration:none; }

h1 {
	margin: 0px;
	padding: 10px 0 20px 0;
	font-size: 24px;
	color: #ffffff;
	font-weight: normal;
}

h2 {
	margin: 0 0 20px 0;
	padding: 10px 0 10px 15px;
	font-size: 24px;
	color: #ffffff;
	font-weight: normal;
	background-color: #440522;
}

h3 {
	margin: 0 0 10px 0;
	padding: 5px 0 5px 10px;
	font-size: 16px;
	color: #ffffff;
	font-weight: normal;
	background-color: #be457c;
}

h4 {
	margin: 0;
	padding: 5px 0 5px 15px;
	font-size: 16px;
	color: #ffffff;
	font-weight: normal;
	background-color: #be457c;
}

p {
	margin: 0px;
	padding: 0 0 10px 0;
	text-align: justify;
}

.price{
	font-size:16px;
	margin-bottom: 10px;
}

.price span{
	font-size:16px;
	color: #ffffff;
}

.buynow a{
	clear: both;
	display: block;
	float: left;
	width: 80px;
	padding: 1px 0;
	margin: 0 15px 10px 0;
	text-align: center;
	font-weight: bold;
	text-decoration: none;
	color: #ffffff;
	background: #be457c;
	border-bottom: 1px solid #f285b6;
}

.cleaner {
	clear: both;
	width: 100%;
	height: 1px;
	font-size: 1px;	
}

.cleaner_with_height {
	clear: both;
	width: 100%;
	height: 30px;
	font-size: 1px;	
}

#templatemo_container{
	width: 1000px;
	margin: 0 auto;
	border: 10px solid #f2d9ef;
}

/* top panel */
#templatemo_top_panel {
	overflow: hidden;	
	width: 1000px;
	height: 32px;
	padding: 0px;
	background: #c82c74;
	border-bottom: 1px solid #870843;
}

#templatemo_top_panel #templatemo_language_section {
	float: left;
	width: 400px;
	padding-right: 25px;
	margin: 0;
	padding: 0;
}

#templatemo_top_panel #templatemo_language_section img {
	padding: 0px;
	border: none;
	margin-right: 5px;
	border: 1px solid #ffffff;
}

#templatemo_top_panel #templatemo_shopping_cart {
	float: right;
	width: 400px;
	padding-top: 10px;
	text-align: right;
	font-size: 14px;
	font-weight: bold;
	color: #ffffff;
}

#templatemo_top_panel #templatemo_shopping_cart span{
	font-weight: normal;
}
/* end of top panel */

/* header panel */
#templatemo_container #templatemo_header {
	overflow: hidden;	
	width: 880px;
	height: 70px;
	padding: 15px 30px;
	background: #ebbce5 url(images/templatemo_header_bg.jpg) bottom right no-repeat;
}
/* end of header panel */

/* header panel */
#templatemo_container #templatemo_banner {
	overflow: hidden;	
	width: 880px;
	height: 60px; /* + 60 for padding top and bottom */
	padding: 3px 3px;
	background: #ffffff url(images/templatemo_banner_bg.jpg) top right no-repeat;
}
/* end of header panel */

/* menu */
#templatemo_menu_panel{
	overflow: hidden;	
	width: 880px;
	height: 40px;
	padding: 0 30px;
	background: #440522;
}

#templatemo_menu_panel ul {
	float: left;
	width: 1930px;
	margin: 0;
	padding: 5px 0 0 0;
	list-style: none;
}

#templatemo_menu_panel ul li{
	display: inline;
}

#templatemo_menu_panel ul li a{
	float: left;
	width: 110px;
	padding: 5px 0;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	color: #ebbce5;
	border-left: 1px solid #5f3b11;	
}

#templatemo_menu_panel li a:hover, #templatemo_menu_panel li .current{
	color: #ffffff;
}
/* end of menu */

/* content */
#templatemo_content{
	width: 1880px;
	
	background: #811044;
}

#templatemo_content #templatemo_content_left {
	float: left;
	width: 1630px;
	background: #811044;
}

#templatemo_content_left .product_box {
	float: left;
	width: 200px;
	margin-right: 10px;
}

#templatemo_content_left .product_box img{
	margin-bottom: 5px;
}

#templatemo_content #templatemo_content_right {
	float: right;
	width: 220px;
}

.templatemo_right_section {
 	width: 210px;	
	border: 5px solid #f8c7f2;
	background: #ebbce5;
	margin-bottom: 30px;
}

.templatemo_right_section_content{
 	width: 180px;
	padding: 15px;	
} 
.templatemo_right_section_content h3{
	margin-bottom: 0px;	
} 

.templatemo_right_section_content form{
	padding: 0;
	margin: 0;
} 

.templatemo_right_section_content input{
	width: 180px;
	margin-bottom: 15px;
}

.templatemo_right_section_content .button{
	width: 70px;
	margin-bottom: 0px;
}

.templatemo_right_section_content ul{
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.templatemo_right_section_content li {
	margin-bottom: 3px;
}

.templatemo_right_section_content li a{
	color: #be457c;
	padding: 0 0 0 20px;
	text-decoration: none;	
	background:	url(images/templatemo_list_icon.gif) bottom left no-repeat;	
}

.templatemo_right_section_content li a:hover{
	color: #440522;
	text-decoration: none;
	background:	url(images/templatemo_list_icon_hover.gif) bottom left no-repeat;
}
/* end of content */

/*  footer */

#templatemo_footer_panel{
	overflow: hidden;
	width: 900px;
	padding: 15px 20px;
	background: #333333;
}

#templatemo_footer_panel img{
	margin: 0 5px 0 0;
}

#templatemo_footer_panel #footer_left {
	float: left;
	width: 340px;
	padding: 0 25px 0 0;
	margin: 0 15px 0 0;	
	border-right: 1px solid #4c4c4c;

}

#templatemo_footer_panel #footer_right {
	float: right;
	width: 485px;
	text-align: left;
}
/* end of footer */
</style>
<body>
<div id="templatemo_header">
    
    
    	<h1>Welcome to  Mr.Online</h1>
    	
     </div>

     	
      
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    
 
    <ul class="nav navbar-nav">
      
      <li class="active"><a href="#">Home</a></li> </ul>   
  
         <ul class="nav navbar-nav navbar-right">
      <sec:authorize access="!isAuthenticated()">
      
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li></ul>
      </sec:authorize>
  </div>

          <%--  <sec:authorize access="!isAuthenticated()">
    
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li></ul>
      </sec:authorize> --%>
      <sec:authorize access="isAuthenticated()">
     <ul class="nav navbar-nav navbar-right">
      <li><a href="Cart"><span class="glyphicon glyphicon-user"></span>Cart</a></li>
	<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
	<li><a href="">Welcome  <sec:authentication property="principal.username"/></a></li></ul>
</sec:authorize>
            
    </div></nav>
 
     <div id="templatemo_banner">
     	<a href="#"><img src="G:\Shoppingsite\src\main\webapp\resources\images\bg22.jpg" alt="gb" title="Online Shopping SIte- Mr.online" border="0" /></a>     </div>
     

    
   
 ${errorMessage} 
${registerMessage}
<!-- if the error message is there, i have to open login.jsp -->
<!-- if the user clicked login link, I have to open login.jsp -->
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
<c:if test="${UserClickedCart}">
<jsp:include page="Cart1.jsp"></jsp:include></c:if>   
<c:if test="${UserClickedshowproduct}">
<jsp:include page="ShowProduct.jsp"></jsp:include></c:if> 
<div>  

  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 30%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\apple-laptop.jpg" alt="apple" width="360" height="345">
      </div>

      <div class="item">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\2013-iphone5s-gold.png" alt="iphone" width="360" height="345">
      </div>
    
      <div class="item">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\7f72abfdd84fda86d9bf9890e5c44640.jpg" alt="Flower" width="360" height="345">
      </div>

      <div class="item">
        <img src="G:\Shoppingsite\src\main\webapp\resources\images\covers.jpg" alt="covers" width="360" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>        
<c:forEach items="${productList}" var="product">
			<tr>


				<td>
					<!-- --<div class="thumbnail">-->
					<div class="col-md-4">
						<a href="ShowProduct/${product.id}"> <img height="150px"
							width="150px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>

						<td><c:url var="action" value="addtocart/${product.id}"></c:url>
							<form:form action="${action}" modelAttribute="cart">
								<td id="td1"><c:out value="${product.name}" /><br>
								<td id="td1"><c:out value="${product.price}" /> <input
									type="submit" class="btn btn-primary" value="Add To Cart" /><br>
							</form:form></td>
						<br>

					</div>
			</tr>
			</td>
		</c:forEach>
	</div>
	
	
 
 <%-- <c:choose>
  <c:when test="${!HideOthers }">

<c:forEach items="${allProduct}" var="product">
		<!--  <div class="row"> -->
     <div class="col-xs-3" class="thumbnail">
 	 			 
	<a href="ShowProduct/${product.id}" > <img height="200px" width="200px" alt="${product.id }"
	src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
  <div class="desc">
         Product Id : <c:out value="${product.id}" /><br>
         Product Name : <c:out value="${product.name }"/><br>
         
   <c:url var="action" value="addtocart/${product.id}"></c:url>
   <form:form action="${action}" commandName="cart">
   <input type="submit" class="btn btn-primary" value="Add To Cart" />
   </form:form>
  
							</div>
							</div>	
							</c:forEach>
							</c:when>
							</c:choose>
							 --%>
    <c:choose>
		<c:when test="${clickedshowproduct}">
			<c:import url="/WEB-INF/views/ShowProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<div ng-view></div>

	<script>
		$(document).ready(function() {
			$('.dropdown a.test').on("click", function(e) {
				$(this).next('ul').toggle();
				e.stopPropagation();
				e.preventDefault();
			});
		});
	</script>

	<c:choose>
		<c:when test="${UserClickedAdmin}">
			<c:import url="/WEB-INF/views/Admin.jsp"></c:import>
		</c:when>
	</c:choose>

	<%-- <c:choose>
		<c:when test="${UserClickedshowproduct}">
			<c:import url="/WEB-INF/views/ShowProduct.jsp"></c:import>
		</c:when>
	</c:choose> --%>
	<c:choose>
		<c:when test="${UserClickedCart}">
			<c:import url="/WEB-INF/views/Cart1.jsp"></c:import>
		</c:when>
	</c:choose>
<c:choose>
		<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/views/Payment.jsp">
			</c:import>
		</c:when>
		</c:choose>
<c:choose>
		<c:when test="${IfMakePaymentClicked}">
			<c:import url="/WEB-INF/views/thanks.jsp">
			</c:import>
		</c:when>
		</c:choose>
</body>
</html>
  