<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="number" name="carId"><br>
    Driver id <input type="number" name="driverId"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
