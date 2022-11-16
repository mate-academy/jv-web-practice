
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  <label for="carId">Car id:</label><br>
  <input type="text" id="carId" name="carId"><br>
  <label for="driverId">Driver id:</label><br>
  <input type="text" id="driverId" name="driverId">
  <input type="submit" value="Add driver to car">
</form>
</body>
</html>
