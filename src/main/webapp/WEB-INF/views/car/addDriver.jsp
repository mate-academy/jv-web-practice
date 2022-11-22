<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver(s) to car:</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
  <h1>Add drivers to car: </h1>
  Car id:
  <input type="number" name="car_id">
  Driver id:
  <input type="number" name="driver_id">
  <button type="submit">Confirm</button>
</form>
</body>
</html>
