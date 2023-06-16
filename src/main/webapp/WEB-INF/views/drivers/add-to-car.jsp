<%--
  Created by IntelliJ IDEA.
  User: DOM
  Date: 16.06.2023
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Form add driver to car</h1>

<from method="post" action="${pageContext.request.contextPath}/drivers/add-to-car">
    Driver_Id <input type="text" name="driver_id"><br>
    Car_id <input type="text" name="car_id"><br>
    <button type="submit">Confirm</button>
</from>
</body>
</html>
