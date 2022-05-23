<%--
  Created by IntelliJ IDEA.
  User: kyryl
  Date: 23.05.2022
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Enter the driver's information</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="license_number"><br>
    <button type="submit">Create a new driver</button>
</form>
</body>
</html>
