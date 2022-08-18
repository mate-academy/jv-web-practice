<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Create Driver</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car Id <input type="text" name="car_Id"><br>
    Driver Id <input type="text" name="driver_Id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
