<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<h1 style="text-align:center;">Hello!</h1>
<h2 style="text-align:center;">If you want to add a driver to car, please fill the next form:</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id: <input type="text" name="driver_id"><br>
    Car id: <input type="text" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
