<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to car</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/">Go to Action menu</a>
<h2>To add a driver to the car, please fill out the form below</h2>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    <label>
        Car id:
        <input type="number" name="car_id" min="1" required>
    </label><br><br>
    <label>
        Driver id:
        <input type="number" name="driver_id" min="1" required>
    </label><br><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>