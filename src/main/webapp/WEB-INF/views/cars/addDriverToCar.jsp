<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver to the car</title>
</head>
<body>
    <h2>Add a driver</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <label for="driverId">Driver id:</label><br>
        <input type="number" id="driverId" name="driverId" required><br>
        <label for="carId">Car id:</label><br>
        <input type="number" id="carId" name="carId" required>
        <br>
        <button type="submit">Add a driver</button>
    </form>
</body>
</html>
