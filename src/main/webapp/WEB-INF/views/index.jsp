<%@ page language ="java" contentType="text/html;  charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<html>
<head>
<meta http-equiv="context-Type" content ="text/html; charset=ISO-8859-1">
</head>
<body bgcolor="">
<h2><center><font color="red">Mr.Online</font></center></h2>
<!--  
<h3>Existing User <a href="login">Login Here</a></h3>
<h3>New User : <a href="register">Register Here</a></h3>-->
<jsp:include page="header.jsp"></jsp:include>
<hr>

${errorMessage} 
${registerMessage}
<!-- if the error message is there, i have to open login.jsp -->
<c:if test="${errorMessage}">
<jsp:include page="login.jsp"></jsp:include>
<!-- if the user clicked login link, I have to open login.jsp -->
</c:if>
  <c:if test="${UserClickedLogin}">
<jsp:include page="login.jsp"></jsp:include>
</c:if> 
 <c:if test="${UserClickedRegister}">
<jsp:include page="register.jsp"></jsp:include></c:if> 
 <c:if test="${errorMessage}">
<jsp:include page="logout.jsp"></jsp:include></c:if> 
 <c:if test="${UserClickedLogout}"> 
<jsp:include page="logout.jsp"></jsp:include></c:if> 
<%-- <c:if test="${UserClickedCategories}">
<jsp:include page="category.jsp"></jsp:include></c:if> --%>
<%-- <c:if test="${UserClickedsupplier}">
<jsp:include page="supplier.jsp"></jsp:include></c:if>
<c:if test="${UserClickedProducts}">
<jsp:include page="products.jsp"></jsp:include></c:if> --%>
</body>
</html>
