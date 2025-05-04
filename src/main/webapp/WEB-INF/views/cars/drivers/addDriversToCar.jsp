<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to Car</title>
</head>
<body>
<h1>Driver was added to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  <label for="carId">Car ID:</label>
  <input type="text" id="carId" name="car_id" required><br>
  <label for="driverId">Driver ID:</label>
  <input type="text" id="driverId" name="driver_id" required><br>
  <input type="submit" value="Add Driver">
</form>
</body>
</html>
