<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 24.05.2021
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Please, enter characteristics of a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    ManufacturerId <input type="text" name="manufacturerId"><br>
    <button type="submit" >Confirm</button>
</form>
</body>
</html>
