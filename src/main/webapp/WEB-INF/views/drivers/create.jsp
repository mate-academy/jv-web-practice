<%--
  Created by IntelliJ IDEA.
  User: angel
  Date: 4/29/2022
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h1>Add a new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    NAME<input type="text" name="name"><br>
    LICENSE NUMBER<input type="number" name="license_number"><br>
    <button type="submit">SUBMIT</button>
</form>
</body>
</html>
