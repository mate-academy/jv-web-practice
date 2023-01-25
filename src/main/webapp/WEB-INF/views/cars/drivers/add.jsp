
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add drivers to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id<input type="text" name="driver_id" required >
    Car id<input type="text" name="car_id" required >
    <button type="submit">Create</button>
</form>
</body>
</html>
