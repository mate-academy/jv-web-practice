<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add a driver to a car</title>
</head>
<body>
<h1>Adding a driver to a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id: <input type="text" name="car_id"><br>
    Driver id: <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
