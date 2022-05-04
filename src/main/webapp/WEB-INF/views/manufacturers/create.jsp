<%--
  Created by IntelliJ IDEA.
  User: angel
  Date: 4/29/2022
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new manufacturer</title>
</head>
<body>
<h1>Add a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    NAME <input type="text" name="name"><br>
    COUNTRY <input type="text" name="country"><br>
    <button type="submit">SUBMIT</button>
</form>
</body>
</html>
