<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill your*s carId and DriverID below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add/driver">
    CarId <input type="text" name="car_id">
    DriverId <input type="text" name="driver_id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
