<%--
  Created by IntelliJ IDEA.
  User: Sirko
  Date: 03.02.2023
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create manufacturer</title>
</head>
<body>
<h1>Create a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/createManufacturer">
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name"><br>
  <label for="country">Country:</label><br>
  <input type="text" id="country" name="country"><br><br>
  <button type="submit">Create manufacturer</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">main page</a> </p>
</body>
</html>