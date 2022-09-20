<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver</title>
</head>
<body>
    <h1>Add a driver to the car:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Driver_id <input type="number" name="driver_id"><br>
        Car_id <input type="number" name="car_id"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
