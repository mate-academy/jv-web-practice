<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>Car ID</label><br>
    <input type="number" name="car_id"><br>
    <label>Driver ID</label><br>
    <input type="number" name="driver_id">
    <button type="submit">Confirm</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Cancel</button>
</form>
</body>
</html>
