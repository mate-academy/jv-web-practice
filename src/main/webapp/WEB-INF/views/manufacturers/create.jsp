<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19.10.2022
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Create Manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
  name <input type="text" name="name"><br>
  country <input type="text" name="country"><br>
  <button type="submit">Create Manufacturer</button>
</form>
</body>
</html>
