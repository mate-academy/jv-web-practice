<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver to car</title>
</head>
<body>
<h1>Select car and driver for add</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id<input type="number" name="car_id"><br>
    Driver id<input type="number" name="driver_id"><br>
    <button type="submit">ADD</button>
</form>
</body>
</html>
