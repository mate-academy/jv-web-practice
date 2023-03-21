<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car ID <input min="1" required="required" type = "number" name = "car_id"><br>
    Driver ID <input min="1" required="required" type = "number" name = "driver_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
