<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car</title>
</head>
<body>
<h1>Fill out the given form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  DriverId <input type="number" name="driverId">
  CarId <input type="number" name="carId">
  <button type="submit">Submit</button>
</form>
</body>
</html>
