<%--
  Created by IntelliJ IDEA.
  User: Oleksandr Koval
  Date: 03.04.2023
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>To register a car fill the form: </h1>

<form method ="post" action="${pageContext.request.contextPath}/cars/add">
    Model <label>
    <input type=text" name="model">
</label><br>
    Manufacturer_id <label>
    <input type=number" name= "manufacturer_id">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
