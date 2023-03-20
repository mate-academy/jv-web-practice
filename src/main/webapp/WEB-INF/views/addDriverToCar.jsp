<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddDriverToCar</title>
</head>
<body>
<h1>Adding driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="number" name="driver_id"><br>
    Car id <input type="number" name="car_id">
    <button type="submit">ADD</button>
</form>
</body>
</html>
