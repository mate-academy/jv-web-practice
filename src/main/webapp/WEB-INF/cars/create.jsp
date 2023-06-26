<%--
  Created by IntelliJ IDEA.
  User: valdemar
  Date: 26.06.2023
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car</h1>
<form method = "post"  action = "${pageContext.request.contextPath}/cars/add">
  Model <input type = "text" name = "model"><br>
  Manufacturer id <input type="number" name = "manufacturerId"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
