<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/car/driver/add_driver">
    CarID <input type="text" name="car_id"><br>
    DriverID <input type="text" name="driver_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>