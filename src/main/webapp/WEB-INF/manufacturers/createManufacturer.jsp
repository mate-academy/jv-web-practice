<%--
  Created by IntelliJ IDEA.
  User: anastasiia_variichuk
  Date: 25.06.2023
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create manufacturer</title>
</head>
<body>
<h1>Create manufacturer</h1>
<form method = "post"  action = "${pageContext.request.contextPath}/manufacturers/add">
  Name <input type = "text" name = "name"><br>
  Country <input type="text" name = "country"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
