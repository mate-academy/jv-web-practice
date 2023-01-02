<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to a car settings</title>
</head>
<body>
<h1>Please choose driver&car id:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="number" name="car_id"><br>
    Driver id <input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
