<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add drivers to car</title>
</head>
<body>
<h1>Enter driver and car IDs</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Driver ID <input type="number" name="driver_id" required><br>
    Car ID <input type="number" name="car_id" required><br>
    <button type="submit">Confirm</button>
</form>

</body>
</html>
