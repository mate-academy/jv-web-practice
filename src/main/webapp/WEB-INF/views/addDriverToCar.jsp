<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Input id into empty line</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    DRIVER_ID <input type="text" name="driver_id"><br>
    CAR_ID <input type="text" name="car_id"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>