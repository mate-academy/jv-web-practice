<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<h3>Add needed id's of driver and car</h3>
<form method="post" action="${pageContext.request.contextPath}/add_driver_to_car">
  DriverId <input type="text" name="driverId"> <br>
  CarId <input type="text" name="carId"> <br>
  <button type="submit">Submit</button>
</form>
</body>
</html>
