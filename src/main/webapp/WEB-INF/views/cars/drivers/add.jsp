<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars and Drivers</title>
</head>
<body>
<h1>Add Driver to Car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CAR_ID <input type="text" name="car_id"><br>
    DRIVER_ID <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
