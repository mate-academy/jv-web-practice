<%--
  Created by IntelliJ IDEA.
  User: Mir
  Date: 19.09.2022
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add new manufacture</title>
</head>
<body>
<h1>Fill in the information about the new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Submit</button>
</form>
<a href="${pageContext.request.contextPath}/">Back to home</a>
</body>
</html>
