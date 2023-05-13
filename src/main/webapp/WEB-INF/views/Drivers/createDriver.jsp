<%--
  Created by IntelliJ IDEA.
  User: pizna
  Date: 15.03.2023
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<h1>Впишіть поля нового драйвера</h1>

<form method ="post" action="${pageContext.request.contextPath}/Drivers/createDriver">
    Name <input type=text" name= "name"><br>
    LicenseNumber <input type=text" name= "licenseNumber"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
