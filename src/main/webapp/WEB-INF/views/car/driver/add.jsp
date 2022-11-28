<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car</title>
</head>
<body>
<h1>Enter cars id and Drivers id</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/create">
  Car id <input type="number" name="car_id" required>
  Driver id <input type = "number" name="driver_id" required>
  <button type="submit">Save</button>
</form>
</body>
</html>
