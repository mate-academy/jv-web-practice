<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car</title>
</head>
<body>
<h1>Please enter driver and car IDs</h1>
<form method="POST" action="${pageContext.request.contextPath}/cars/add-driver">
  <label for="carId">Car ID:</label>
  <input type="number" id="carId" name="car_id" required><br><br>
  <label for="driverId">Driver ID:</label>
  <input type="number" id="driverId" name="driver_id" required><br><br>
  <button type="submit">Add Driver</button>
</form>
</body>
</html>
