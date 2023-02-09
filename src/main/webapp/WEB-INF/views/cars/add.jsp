<%--
  Created by IntelliJ IDEA.
  User: Andrii
  Date: 02.02.2023
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a Car</title>
</head>
<body>
<h1>Please add information</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="car_model">
    Manufacturer ID <input type="number" name="manufacturer_id">
    <button type="submit">Save</button>
</form>
</body>
</html>
