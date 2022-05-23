<%--
  Created by IntelliJ IDEA.
  User: Вика
  Date: 22.05.2022
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CREATE MANUFACTURER</title>
</head>
<body>
<h1>CREATE MANUFACTURER USING THE FORM BELOW:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>

</body>
</html>
