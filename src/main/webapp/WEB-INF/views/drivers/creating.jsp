<%--
  Created by IntelliJ IDEA.
  User: DOM
  Date: 16.06.2023
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating driver</title>
</head>
<body>
<h1>Form creating driver</h1>

<from method="post" action="${pageContext.request.contextPath}/drivers/creating">
    Name <input type="text" name="name"><br>
    LicenseNumber <input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm</button>
</from>

</body>
</html>
