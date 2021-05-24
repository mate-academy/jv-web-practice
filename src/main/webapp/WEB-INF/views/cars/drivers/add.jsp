<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 24.05.2021
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Add driver to car by Id</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car Id <input type="number" name="car_id"><br>
        Driver Id <input type="number" name="driver_id"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
