<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill all fields and press ENTER</h1>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    Car id <input type="number" name="car_id"><br>
    Driver id <input type="number" name="driver_id"><br>
    <button type="submit">ENTER</button>
</form>
</body>
</html>
