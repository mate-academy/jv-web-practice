<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Add driver to car</title></head>
<body>
<h2>Add driver to car byID</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarID <input type="number" name="car_id"><br>
    DriverID <input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
