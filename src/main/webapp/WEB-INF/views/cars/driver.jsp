<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>insert driver</title>
</head>
<body>
<h1>Addition driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Car ID <input type="text" name="car_id"><br>
    Driver ID <input type="text" name="driver_id"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
