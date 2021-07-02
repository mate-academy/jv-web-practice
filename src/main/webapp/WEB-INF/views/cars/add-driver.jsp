<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding drivers to car</title>
</head>
<body>
<h1>Please enter IDs of car and driver to connect</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input name="carId" required><br>
    Driver id <input name="driverId" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
