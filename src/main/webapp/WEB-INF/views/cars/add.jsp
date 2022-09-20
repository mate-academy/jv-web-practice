<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 10.06.2022
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    ManufacturerId <input type="text" name="manufacturer_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
