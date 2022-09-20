<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
    <h1>Add driver to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car Id <input type="text" name="car_id"><br>
        Driver Id <input type="text" name="driver_id"><br>
        <button type="submit">Add</button>
</form>
</body>
</html>
