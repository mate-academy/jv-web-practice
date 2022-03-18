<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
<body>
<h1>Please write your data for deleting</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/delete/driver">
    Car id<br><input type="number" name="car_id"><br>
    Driver id<br><input type="number" name="driver_id"><br>
    <button type="submit">Delete</button>
</form>
</body>
</html>
