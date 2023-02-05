<%--
  Created by IntelliJ IDEA.
  User: javak
  Date: 02/02/2023
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Create a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label for="model">model</label><br>
    <input type="text" id="model" name="model" required><br>
    <label for="manufacturer">manufacturer</label>
    <input type="text" id="manufacturer" name="manufacturer_id" required><br>
    <button type="submit">create</button>
</form>
</body>
</html>
