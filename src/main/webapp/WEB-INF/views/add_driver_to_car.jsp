<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h3>Form add driver to car, fill the form below</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver ID: <input type="number" name="driverId"><br>
  Car ID: <input type="number" name="carId"><br>
  <button type="submit"> Ok </button>
</form>
</body>
</html>