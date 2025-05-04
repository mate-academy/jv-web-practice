<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Please fill the form below add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car <input type="number" name="car_id" required><br>
    Driver <input type="number" name="driver_id" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
