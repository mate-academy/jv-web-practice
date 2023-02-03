<%--
  Created by IntelliJ IDEA.
  User: Дмитро
  Date: 03.02.2023
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/car/create">
    <label for="model">model</label><br>
    <input type="text" id="model" name="model" required><br>
    <label for="manufacturer">manufacturer</label>
    <input type="text" id="manufacturer" name="manufacturer_id" required><br>
    <button type="submit">create</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">main page</a></p>
</body>
</html>
