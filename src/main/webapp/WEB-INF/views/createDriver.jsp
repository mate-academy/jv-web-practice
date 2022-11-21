<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21.11.2022
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create driver</h1>
<from method="post" action="${pageContext.request.contextPath}/createDriver">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</from>
</body>
</html>
