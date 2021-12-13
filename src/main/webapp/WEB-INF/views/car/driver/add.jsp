<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<h1 align = "center">ADD DRIVER TO CAR</h1>
<form align = "center" method = "post" action = "${pageContext.request.contextPath}/cars/drivers/add">
    Driver_ID: <input type = "number" required name = "driver_id"><br>
    <br>
    Car_ID: <input type = "number" required name = "car_id"><br>
    <br>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
