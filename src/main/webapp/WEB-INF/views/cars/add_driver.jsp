<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a driver</title>
</head>
<body>
<h1>Add driver to the car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CAR ID <input type="text" name="carId"><br>
    DRIVER ID<input type="text" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
