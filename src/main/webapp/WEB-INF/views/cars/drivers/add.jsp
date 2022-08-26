<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2>Add driver to car:</h2>
<table>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car ID <input required type="text" name="car_id">,<br>
        Driver ID <input required type="text" name="driver_id">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
