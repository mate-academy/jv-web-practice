<%--
  Created by IntelliJ IDEA.
  User: Masaltsev
  Date: 22.11.2022
  Time: 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver form</title>
</head>
<body>
  <form method = "GET" action = "${pageContext.request.contextPath}/drivers/register">
    First Name: <input type = "text" name = "first_name">
    <br />
    Last Name: <input type = "text" name = "last_name" />
    <input type = "submit" value = "Submit" />
  </form>
</body>
</html>
