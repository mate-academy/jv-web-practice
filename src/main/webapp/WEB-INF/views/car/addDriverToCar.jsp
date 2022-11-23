<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver(s) to car:</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  <h1>Add drivers to car: </h1>
  Car id:
  <input type="number" name="car_id" required>
  Driver id:
  <input type="number" name="driver_id" required>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
