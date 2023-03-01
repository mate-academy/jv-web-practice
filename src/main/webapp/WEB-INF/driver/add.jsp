<%--
  Created by IntelliJ IDEA.
  User: alena
  Date: 3/1/2023
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Fill in all blanks, please</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name=<input type="text" name="name"><br>
    License number=<input type="text" name="licenseNumber"><br>
    <button type="submit">confirm</button>
</form>
</body>
</html>
