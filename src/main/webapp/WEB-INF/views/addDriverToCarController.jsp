<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Add Driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car ID <input type="text" name="car_id"><br>
        Driver ID <input type="text" name="driver_id"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
