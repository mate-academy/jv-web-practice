<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add new Car</title>
</head>
<body>
<h1>Please the form below to add new Car</h1>
<form method="post" action = "${pageContext.request.contextPath}/cars/add">
  <h3>Car Model Name</h3> <input type="text" name="carModelName"><br>
  <h3>Manufacturer ID</h3> <input type="text" name="carManufacturerId"><br>
  <br><button type="submit"><h2>Confirm</h2></button>
</form>
</body>
</html>
