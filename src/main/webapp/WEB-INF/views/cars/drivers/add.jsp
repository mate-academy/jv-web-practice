<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddDriverToCar</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    driver_id <input type="number" name="driver_id"><br>
    car_id <input type="number" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
