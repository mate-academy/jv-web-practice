<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver registration</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver's id: <input type="text" name="driverId"><br>
    Car's id: <input type="text" name="carId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
