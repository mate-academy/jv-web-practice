<%--
  Created by IntelliJ IDEA.
  User: toxauz
  Date: 27.07.2023
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car page</title>
</head>
<body>

<h2>Create a car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model:</label>
    <input type="text" id="model" name="model" required>
    <br>
    <label for="manufacturer_id">Manufacturer id:</label>
    <input type="number" id="manufacturer_id" name="manufacturer_id" required>
    <br>
    <input type="submit" value="Confirm">
</form>
</body>
</html>
