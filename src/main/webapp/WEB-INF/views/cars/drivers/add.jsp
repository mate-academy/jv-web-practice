<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<h1>To add a new driver to car, please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID <input type="number" name="driver_id" required><br>
  Driver ID <input type="number" name="car_id" required><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
