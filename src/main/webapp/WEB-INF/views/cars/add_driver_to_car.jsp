
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connect cars and drivers</title>
</head>
<body>
<h1>Here you can add driver to car</h1>
<form method="POST" action="${pageContext.request.contextPath}/cars/add-driver">
    <label for="carId">Car ID:</label>
    <input type="number" id="carId" name="car_id" required><br><br>
    <label for="driverId">Driver ID:</label>
    <input type="number" id="driverId" name="driver_id" required><br><br>
    <button type="submit">LET`S GO!</button>
</form>
</body>
</html>
