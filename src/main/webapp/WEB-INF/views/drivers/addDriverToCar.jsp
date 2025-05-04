<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body><h2>
    <form method="post" action="${pageContext.request.contextPath}/drivers/adddrivertocar">
        Driver ID: <input type="text" name="driver_id"><br>
        Car ID: <input type="text" name="car_id"><br>
        <button type="submit">Add driver to car</button>
    </form>
</h2>
</body>
</html>
