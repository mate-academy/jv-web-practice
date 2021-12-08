<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<h1 align = "center">Input information about driver and car :</h1>
<form align = "center" method = "post" action = "${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID : <input type = "number" required name = "driver_id"><br>
    <br>
    Car ID : <input type = "number" required name = "car_id"><br>
    <br>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
