<%--
  Created by IntelliJ IDEA.
  User: olexa
  Date: 19.05.2022
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <h1>Hi! Fill the columns below</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
      Name: <input type="text" name="name"><br>
      Country: <input type="text" name="country"><br>
      <button type="submit">Confirm</button>
    </form>
</body>
</html>
