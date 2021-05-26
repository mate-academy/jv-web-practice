<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
    <h1>Add driver to car by Id</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car Id <input type="number" name="carId"><br>
        Driver Id <input type="number" name="driverId"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
