<%--
  Created by IntelliJ IDEA.
  User: oleg
  Date: 10.05.2022
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/car/add">
    <h2>
    <label>Model</label><br>
    <label>
        <input type="text" name="model">
    </label><br>
    <label>Manufacturer ID</label><br>
    <label>
        <input type="texi" name="id">
    </label><br>
    <button type="submit">Create</button>
    </h2>
</form>
</body>
</html>
