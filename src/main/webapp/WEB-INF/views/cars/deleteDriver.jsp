<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
<body>
<h1>To delete driver from car fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
    Car ID <input type="number" required name="car_id"><br>
    Driver ID <input type="number" required name="driver_id"><br>
    <button type="submit">Remove</button>
</form>
</body>
</html>
