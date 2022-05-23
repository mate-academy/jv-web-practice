<%--
  Created by IntelliJ IDEA.
  User: Вика
  Date: 22.05.2022
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CREATE CAR</title>
</head>
<body>
<h1>CREATE CAR USING THE FORM BELOW:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer <input type="text" name="id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
