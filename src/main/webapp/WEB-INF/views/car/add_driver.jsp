<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<div style="text-align: center;">
    <h2>Assign a driver to the car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Driver ID to be added to the car <label>
        <input type="text" name="driver_id">
    </label><br>
        Car ID, where to add the driver <label>
        <input type="text" name="car_id">
    </label><br>
        <button type="submit">Confirm</button>
    </form>
</div>
<a href="${pageContext.request.contextPath}/"><<< Back to the main page</a>
</body>
</html>
