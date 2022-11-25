<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h3>Write down values for add driver to car:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver id <input type="number" name="driver_id" required><br>
  Car id <input type="number" name="car_id" required><br>
  <button type="submit">Submit</button>
</form>
<a href="${pageContext.request.contextPath}/drivers">list of drivers</a>
</body>
</html>
