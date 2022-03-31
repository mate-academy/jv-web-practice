<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add drivers to car</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/add">
    Car id : <input type="text" name="car_id"><br>
    Driver id : <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
<form method="get" action="/drivers/all">
    <button type="submit">show all drivers</button>
</form>
</body>
</html>
