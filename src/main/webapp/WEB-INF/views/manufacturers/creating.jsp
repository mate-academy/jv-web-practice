<%--
  Created by IntelliJ IDEA.
  User: DOM
  Date: 16.06.2023
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating manufacturer</title>
</head>
<body>
<h1>Form creating manufacturer</h1>

<from method="post" action="${pageContext.request.contextPath}/manufacturers/creating">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</from>

</body>
</html>
