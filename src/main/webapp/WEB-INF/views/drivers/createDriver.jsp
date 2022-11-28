<%--
  Created by IntelliJ IDEA.
  User: 38067
  Date: 25.11.2022
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Form to adding a new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name: <input type="text" name="name"><br>
    License number: <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</body>
</html>
