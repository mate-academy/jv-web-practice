<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Add driver to car</title></head>
<body>
<h2>Add <strong>driver to car</strong> byID</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarID <input type="number" name="carId"><br>
    DriverID <input type="number" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
