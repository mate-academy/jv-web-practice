<%--
  Created by IntelliJ IDEA.
  User: Upgrade
  Date: 1/5/2023
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post"
      action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"
required><br>
    Manufacturer <input type="number" name="manufacturer_id"
                 required><br>
    <button type="submit">Create Car</button>
</form>
</body>
</html>
