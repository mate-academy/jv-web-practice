<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Manufacturer was created:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>
    <label for="country">Country:</label>
    <input type="text" id="country" name="country" required><br>
    <input type="submit" value="Create">
</form>
</body>
</html>
