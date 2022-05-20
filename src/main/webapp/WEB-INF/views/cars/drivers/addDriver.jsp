<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars and Drivers</title>
</head>
<body>
<h1>Add Driver to Car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/addDriver">
    CAR_ID <input type="text" name="carId"><br>
    DRIVER_ID <input type="text" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
