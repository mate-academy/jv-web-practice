<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Add driver to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Driver id <input type="number" name="driver_id" required><br>
        Car id <input type="number" name="car_id" required><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
