<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car by ID</title>
</head>
<body>
<h1>Please the form below to add new Driver</h1>
<form method="post" action = "${pageContext.request.contextPath}/cars/drivers/add">
  <h3>INPUT CAR ID</h3> <input type="text" name="car_id"><br>
  <h3>INPUT DRIVER ID</h3> <input type="text" name="driver_id"> <br>
  <br><button type="submit"><h2>Add Driver to Car</h2></button>
</form>
</body>
</html>
