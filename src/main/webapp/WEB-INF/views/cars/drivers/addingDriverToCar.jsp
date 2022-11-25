<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h1>Fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="text" name="driver_id"><br>
    Car id <input type="text" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
