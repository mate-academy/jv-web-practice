<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a>
<h2>Add driver to DB:</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Name: </label><br>
    <input type="text" id="name" name="name" required><br><br>
    <label for="licenseNumber">License number:</label><br>
    <input type="number" id="licenseNumber" name="licenseNumber" min="1" max="999" required><br><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
