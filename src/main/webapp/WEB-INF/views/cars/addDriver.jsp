<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add the driver to the car</title>
</head>
<body>
<h1>Parameters</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver id <input type="number" name="driver_id"><br>
  Car id <input type="number" name="car_id"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
