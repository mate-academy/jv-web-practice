<%--
  Created by IntelliJ IDEA.
  User: oleg
  Date: 10.05.2022
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body><h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
    <label>Name</label><br>
    <label>
        <input type="text" name="name">
    </label><br>
    <label>Country</label><br>
    <label>
        <input type="text" name="country">
    </label><br>
    <button type="submit">Create manufacturer</button>
</form>
</h2>
</body>
</html>
