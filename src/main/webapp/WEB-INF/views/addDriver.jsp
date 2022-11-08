<%--
  Created by IntelliJ IDEA.
  User: PRO
  Date: 21.09.2022
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name: <input type="text" name="name"><br>
    License: <input type="text" name="license_number"><br>
    <button type="submit">Create driver</button>
    </form>
</body>
</html>
