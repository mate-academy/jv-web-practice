<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h3>Create a new manufacturer:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label for="car_id">Car id:</label><br>
    <input type="number" id="car_id" name="car_id" required><br>
    <label for="driver_id">Driver id:</label><br>
    <input type="number" id="driver_id" name="driver_id" required><br>
    <br>
    <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
