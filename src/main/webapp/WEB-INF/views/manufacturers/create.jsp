<%--
  Created by IntelliJ IDEA.
  User: Oleksandr Koval
  Date: 03.04.2023
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>To register a manufacturer fill the form:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <label>
    <input type=text" name= "name">
</label><br>
    Country <label>
    <input type=text" name= "country">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
