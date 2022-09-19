<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id: <input required type="number" name="car_id"><br>
    Driver id: <input required type="number" name="driver_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>