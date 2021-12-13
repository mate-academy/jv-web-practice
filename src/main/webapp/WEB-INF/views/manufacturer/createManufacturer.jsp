<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>Enter the data to add a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
    Name  <input type="text" name = "name" required><br>
    Country <input type="text" name = "country" required><br>
    <button type="submit">Add new manufacturer</button>
</form>
<br/>
</body>
</html>
