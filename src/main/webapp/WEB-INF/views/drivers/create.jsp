<%--
  Created by IntelliJ IDEA.
  User: 38097
  Date: 06.04.2023
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Creating Driver Form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name"><br>
  Licence number <input type="text" name="licenceNumber"><br>
  <button type="submit">submit</button>
</form>
</body>
</html>
