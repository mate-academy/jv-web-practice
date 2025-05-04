<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new Driver to Car</title>
</head>
<body>
<h2>Registration form for new Driver to Car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label for="car_id">Car id:</label><br>
    <input type="number" id="car_id" name="car_id"><br>
    <label for="driver_id">Driver id:</label><br>
    <input type="number" id="driver_id" name="driver_id"><br><br>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>
