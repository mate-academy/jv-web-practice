<%--
  Created by IntelliJ IDEA.
  User: Mark
  Date: 23.11.2022
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
    <h1> Create car</h1>
    <form method="post" name="${pageContext.request.contextPath}/car">
        Model <input type="text" name="model">
        Manufacturer id <input type="text" name="manufacture_id">
        <button type="submit">Save</button>
    </form>
</body>
</html>
