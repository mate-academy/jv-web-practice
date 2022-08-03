<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
    Car Id <input type="number" required name="car_id"><br>
    Driver Id <input type="number" required name="driver_id"><br>
    <button type="submit">Remove</button>
</form>
</body>
</html>