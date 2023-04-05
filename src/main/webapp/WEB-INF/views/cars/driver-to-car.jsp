<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Car Drivers</title>
</head>
<body>
<h1> Who gonna drive?</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/driver-to-car">
  Car ID <input type="text" name="car_id"><br>
  Driver ID <input type="text" name="driver_id"><br>
  <button type="submit">amalgamation</button>
</form>
</body>
</html>