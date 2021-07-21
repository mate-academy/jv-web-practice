<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car page</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id: <input type="text" name="car_id"><br>
    Driver id: <input type="text" name="driver_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
