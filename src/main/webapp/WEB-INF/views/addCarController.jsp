<%--
  Created by IntelliJ IDEA.
  User: PRO
  Date: 21.09.2022
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    ManufacturerId <input type="number" name="manufacturerId"><br>
    <button type="submit">Create car</button>
</form>
</body>
</html>