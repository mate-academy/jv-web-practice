<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="text" name="car_id" required><br>
    Driver id <input type="text" name="driver_id" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
