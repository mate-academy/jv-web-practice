<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        CarId <input type="text" name="carId"><br>
        DriverId <input type="text" name="driverId"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
