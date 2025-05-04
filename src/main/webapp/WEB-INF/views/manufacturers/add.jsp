<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<h1>Add manufacturer's name and country below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Add manufacturer</button>
</form>
</body>
</html>
