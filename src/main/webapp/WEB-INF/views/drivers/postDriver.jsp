<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.11.2022
  Time: 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please write data</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <h2>Driver name <input type="text" name="name"><br></h2>
    <h2>License Number <input type="text" name="licenseNumber"><br></h2>
    <h3><button type="submit">Confirm</button></h3>
</form>
<h3><a href="http://localhost:8080/main">BACK</a></h3>
</body>
</html>
