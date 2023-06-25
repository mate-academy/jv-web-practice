<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="text" name="carId">
    Driver id <input type="text" name="driverId">
    <button type="submit">Add</button>
</form>
</body>
</html>
