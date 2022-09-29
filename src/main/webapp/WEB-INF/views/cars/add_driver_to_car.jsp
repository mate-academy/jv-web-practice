<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<h1>Please fill the form below add Driver to Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car Id <input type="number" name="car_id">
    Driver Id <input type="number" name="driver_id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
