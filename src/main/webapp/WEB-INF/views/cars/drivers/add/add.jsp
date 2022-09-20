<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add a car to a driver</title>
</head>
<body>
<h1>Add a car to a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver ID <input type="text" name="driver_id"><br>
  Car ID <input type="text" name="car_id"><br>
  <button type="submit">Submit</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to home</a>
</body>
</html>
