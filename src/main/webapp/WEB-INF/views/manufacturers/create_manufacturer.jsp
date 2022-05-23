<%--
  Created by IntelliJ IDEA.
  User: kyryl
  Date: 23.05.2022
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create a new manufacturer</title>
</head>
<body>
<h1>Enter the manufacturer's information</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Create a new manufacturer</button>
</form>
</body>
</html>
