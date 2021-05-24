<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 24.05.2021
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
    <h1>Please, enter characteristics of a driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name"><br>
        LicenseNumber <input type="text" name="licenseNumber"><br>
        <button type="submit" >Confirm</button>
    </form>
</body>
</html>
