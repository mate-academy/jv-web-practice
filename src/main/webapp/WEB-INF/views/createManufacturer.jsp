<%--
  Created by IntelliJ IDEA.
  User: Promidor
  Date: 17.09.2022
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>

<h3>Create manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/create_manufacturer">
    Manufacturer name <input type="text" name="manufacturerName"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">confirm</button>
</form>

</body>
</html>
