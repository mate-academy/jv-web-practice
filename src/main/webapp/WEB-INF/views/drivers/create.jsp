<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Add driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label for="name">name</label>
    <input type="text" id="name" name="name" required><br>
    <label for="license_number">license number</label>
    <input type="text" id="license_number" name="license_number" required>
    <button type="submit">create driver</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">main page</a></p>
</body>
</html>
