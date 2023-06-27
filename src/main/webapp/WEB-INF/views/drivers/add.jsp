<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver to Car</title>
</head>
<body>
<h1>Add Driver to Car form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car id <input type="number" name="car_id"><br>
  Driver id <input type="number" name="driver_id"><br>
  <button type="submit">Add Driver</button>
</form>
</body>
</html>