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
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Create a manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <label for="name">name</label>
    <input type="text" id="name" name="name" required><br>
    <label for="country">country</label>
    <input type="text" id="country" name="country" required>
    <button type="submit">create manufacturer</button>
</form>
</body>
</html>
