<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>Please fill out form bellow</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID <label>
  <input type="number" name="car_id">
</label><br>
  Driver ID <label>
  <input type="number" name="driver_id">
</label><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
