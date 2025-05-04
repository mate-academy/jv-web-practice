<%--
  Created by IntelliJ IDEA.
  User: Oleksandr Koval
  Date: 03.04.2023
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>To register a driver fill the form:</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <label>
    <input type="text" name="name">
</label><br>
    License number <label>
    <input type="text" name="licenseNumber">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
