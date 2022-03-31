<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver to car</title>
</head>
<body>
<div style="align-content: center">
    <h3>Fill the form:</h3>
    <form method="POST" action="${pageContext.request.contextPath}/cars/drivers/add">
        <label for="driver_id">Driver ID:</label><br>
        <input type="number" id="driver_id" name="driver_id" required><br>
        <label for="car_id">Car ID:</label><br>
        <input type="number" id="car_id" name="car_id" required><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
