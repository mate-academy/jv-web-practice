<%--
  Created by IntelliJ IDEA.
  User: grabe
  Date: 23.05.2022
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
