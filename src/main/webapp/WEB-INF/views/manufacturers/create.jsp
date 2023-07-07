<%--
  Created by IntelliJ IDEA.
  User: ihor
  Date: 6/23/23
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Manufacturer</title>
</head>
<body>
<h1>Create manufacturer using these fields</h1>
<form method="post" action="${pageContext.request.contextPath}/create">
  Name <input type="text" name="Name"><br>
  Country <input type="text" name="Country"><br>
  <button type="submit">create</button>


</form>
</body>
</html>