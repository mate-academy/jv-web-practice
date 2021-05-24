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
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Please, enter characteristics of a manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit" >Confirm</button>
</form>
</body>
</html>
