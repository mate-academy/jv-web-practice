<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Driver id <input type="number" name="driver_id"><br>
        Car id <input type="number" name="car_id"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
