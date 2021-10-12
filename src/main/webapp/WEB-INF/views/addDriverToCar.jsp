<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver adding to car</title>
</head>
<body>
<h1>Please the form for adding below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver<input type="number" name="driver_id"><br>
    Car<input type="number" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
