<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver To Car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add_driver">
  CarId <input type="text" name="car_id"><br>
  DriverId <input type="text" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
