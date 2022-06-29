<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id: <input type="number" name="driver_id" required>
    Car id: <input type="number" name="car_id" required>
    <button type="submit">Submit</button>
</form>
</body>
</html>
