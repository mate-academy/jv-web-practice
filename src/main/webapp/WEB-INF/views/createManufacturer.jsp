<%--
  Created by IntelliJ IDEA.
  User: toxauz
  Date: 27.07.2023
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer page</title>
</head>
<body>
<h3>Create a manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label for="country">Country:</label>
    <input type="text" id="country" name="country" required>
    <input type="submit" value="Confirm">
</form>

</body>
</html>
