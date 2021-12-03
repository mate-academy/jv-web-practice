<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill the form:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    DRIVER ID (from 1 to ${maxDriverId})
    <input type="number" required name="driver_id" min="1" max="${maxDriverId}">  <br>
    CAR ID (from 1 to ${maxCarId})
    <input type="number" required name="car_id" min="1" max="${maxCarId}"> <br>
    <button type="submit">Save</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
