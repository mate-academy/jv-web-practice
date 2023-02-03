<%--
  Created by IntelliJ IDEA.
  User: Дмитро
  Date: 03.02.2023
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/create">
    <label for="name">name</label><br>
    <input type="text" id="name" name="name" required><br>
    <label for="license_number">license number</label>
    <input type="text" id="license_number" name="license_number" required><br>
    <button type="submit">create driver</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">main page</a></p>
</body>
</html>
