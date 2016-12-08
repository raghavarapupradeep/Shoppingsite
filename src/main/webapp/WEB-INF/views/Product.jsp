<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <style>
 h3{
    text-align: center;
    }
 /* table {
    border-collapse: collapse;
    width: 100%;
} */
th, td {
    text-align: center;
    padding: 8px;
}
/* tr:nth-child(even){background-color: #f2f2f2}
th {
    background-color: #ffe6e6;
    color: white;
} */
</style>


 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title>New Product Details</title>
</head>
<style>
body  {
   
    background-color: #ffe6e6  ;
}
</style>
<script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search = '';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'productgson'
			}).success(function(data, status, headers, config) {
				$scope.products = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>
<body>
<h3>New Product Details</h3>

	<div class="text-center myForm">
		<c:url var="action" value="updateproduct"></c:url>
		<form:form action="${action}" modelAttribute="product"
			enctype="multipart/form-data" method="post">
			<div align="center">
			<table>
				<c:choose>
					<c:when test="${product.id gt 0}">
						<tr>
							<td>ID:</td>
							<td><form:input class="input1" path="id" readonly="true" /></td>
						</tr>
					</c:when>
				</c:choose>
				
				<tr>
					<td>Name:</td>
					<td><form:input class="input1" path="name" /></td>
				</tr>
				
				<tr>
					<td>Description:</td>
					<td><form:input class="input1" path="description" /></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><form:input class="input1" path="price" /></td>
				</tr>
				<tr>
				<td>Category:</td>
				<td><form:select path="categoryid" required="true">
				<c:forEach items="${categoryList}" var="category">
								<form:option class="input1" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
						<tr>
								<td>Supplier:</td>
				<td><form:select path="supplierid" required="true">
				<c:forEach items="${supplierList}" var="supplier">
								<form:option class="input1"  value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
								
					
				
				 <tr>
					<td>Image:</td>
					<td><form:input type="file"
							class=" btn btn-default btn-block form-control" path="image"
							required="true" /></td>
				</tr>  
				<tr>
					<td></td>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>
				</tr>
			</table></div>
		</form:form>
	</div>
	<div class="container" data-ng-app="myApp"
				data-ng-controller="MyController" data-ng-init="getDataFromServer()"
				style="overflow: auto; height: 400px; width: 70%">
				<form>
					<input
						class="w3-input w3-animate-input w3-border w3-round w3-small"
						data-ng-model="search" type="text" placeholder=" Search Product"
						style="width: 20%">

				</form>
	<div align="center">
		<table class="table1 table-bordered" style="width: 100%">
			
			<thead>
			
				 <tr id="tr1">
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Product Price</th>
					<th>Category</th>
					<th>Supplier</th>
					<th>Image</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${productList}" var="product">
			
                   <tr data-ng-repeat="product in products | orderBy:sortType:sortReverse | filter:search">
					<tr id="tr1">
						<td id="td1"><c:out value="${product.id}" />
						<td id="td1"><c:out value="${product.name}" />
						<td id="td1"><c:out value="${product.description}" />
						<td id="td1"><c:out value="${product.price}" />
						<td id="td1"><c:out value="${product.categoryid}" />
						<td id="td1"><c:out value="${product.supplierid}" />
						<td><div class="thumbnail">
			<img height="100px" width="100px" alt="${product.id }"src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
							</div> 
						<td id="td1"><a href="addupdateproduct/${product.id }"class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-edit"></span> Edit
								</a>
						<td id="td1"><a href="adddeleteproduct/${product.id }"class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-trash"></span> Delete
        </a>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	
	
</body>
</html>