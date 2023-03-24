<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Create car</title>
</head>

<body>
<h2>Create car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  <label for="car_model">Model</label><br>
  <input type="text" id="car_model" name="car_model"><br>
  <label for="car_manufacturer_id">Manufacturer id</label><br>
  <input type="text" id="car_manufacturer_id" name="car_manufacturer_id"><br><br>
  <input type="submit" value="Save">
  <input type="button" value="Return" onclick="history.back()">
</form>
</body>
</html>
