<%--
  Created by IntelliJ IDEA.
  User: valdemar
  Date: 26.06.2023
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Create Driver</h1>
<form method = "post"  action = "${pageContext.request.contextPath}/drivers/add">
  Name <input type = "text" name = "name"><br>
  License number <input type="text" name = "licenseNumber"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
