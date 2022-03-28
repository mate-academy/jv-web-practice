<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
    <h1>Add Driver to Car</h1>
    <h2>Please write id car's and id driver's</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <b>Car_id</b> <input type="text" name="car_id"><br>
        <b>Driver_id</b> <input type="text" name="driver_id"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
