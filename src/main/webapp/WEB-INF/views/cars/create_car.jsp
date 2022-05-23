<%--
  Created by IntelliJ IDEA.
  User: kyryl
  Date: 23.05.2022
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create a new car</title>
</head>
<body>
<h1>Enter the car's info</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer id<input type="number" name="manufacturer_id"><br>
    <button type="submit">Create a new car</button>
</form>
</body>
</html>
