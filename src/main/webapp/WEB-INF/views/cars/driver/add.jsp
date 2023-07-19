<%--
  Created by IntelliJ IDEA.
  User: ihor
  Date: 6/27/23
  Time: 7:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h1>Add Driver to Car form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/driver/add">
    Car id <input type="number" name="car_id"><br>
    Driver id <input type="number" name="driver_id"><br>
    <button type="submit">add driver</button>
</form>
</body>
</html>
