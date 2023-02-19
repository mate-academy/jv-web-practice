
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    driver id <input type="number" name="driver_id"><br>
    car id <input type="number" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
