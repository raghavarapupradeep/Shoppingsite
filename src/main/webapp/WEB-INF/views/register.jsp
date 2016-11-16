<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<head>
  <title>Hi This is for new USERS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body> <style>
body  {
   
    background-color:#ffe6e6;
}
</style>
<div class="container">
  <h2>For New Users Only</h2>
  <p>Hope You are a New User</p>
  <form class="form-inline">
    <div class="form-group">
      <label for="firstname">First Name</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Firstname">
    </div>
    <div class="form-group">
      <label for="Lastname">Last Name:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter Last Name">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Register</button>
  </form>
</div>
    
    
  

</body>
</html>