<%--
  Created by IntelliJ IDEA.
  User: Oleksii
  Date: 03.02.2023
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Car Model <input type="text" name="carModel"><br>
  Car Manufacturer <input type="text" name="carManufacturer"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
