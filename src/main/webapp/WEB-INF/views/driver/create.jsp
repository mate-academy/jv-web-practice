<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 25.05.2021
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required><br>
    License <input type="text" name="license_number" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
