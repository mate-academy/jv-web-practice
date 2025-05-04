<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding a driver to a car</title>
</head>
<body>
<h2>Enter parameters:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  DriverId <input type="number" name="driver_id"><br>
  CarId <input type="number" name="car_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
