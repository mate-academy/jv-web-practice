<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Add a driver to a car:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input type="number" name="car_id" min="0" required>
    Driver ID <input type="number" name="driver_id" min="0" required><br>
    <button type="submit">Confirm</button>
</form>
<a href="${contentType.request.contextPath}/index">Back to menu</a>
</body>
</html>
