<%--
  Created by IntelliJ IDEA.
  User: olexa
  Date: 19.05.2022
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Hello! Fill the columns below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model">
    Manufacturer ID: <input type="number" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
