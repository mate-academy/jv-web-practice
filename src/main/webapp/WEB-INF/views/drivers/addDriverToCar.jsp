<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Add driver to car by id form</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Driver ID: <input type="text" name="driverId"><br>
        Car ID: <input type="text" name="carId"><br>
        <button type="submit">Add driver to car</button>
    </form>
</body>
</html>
