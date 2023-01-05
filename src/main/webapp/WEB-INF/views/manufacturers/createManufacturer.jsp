<%--
  Created by IntelliJ IDEA.
  User: Upgrade
  Date: 1/5/2023
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name" required><br>
    Country <input type="text" name="country" required><br>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
