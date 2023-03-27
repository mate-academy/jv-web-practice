<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please enter car id and driver id</h1>
<form method="post" action="${PageContext.request.contextPath}/cars/drivers/add">
    Model <input type="text" name="car_id"><br>
    Manufacturer ID <input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>

</body>
</html>
